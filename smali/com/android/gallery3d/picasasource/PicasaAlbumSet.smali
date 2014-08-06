.class Lcom/android/gallery3d/picasasource/PicasaAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "PicasaAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;,
        Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;,
        Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumsLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/gallery3d/data/MediaSet;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/gallery3d/data/MediaSet;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ALBUM_SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

.field private static final SUM_SIZE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLoadBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

.field private final mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lcom/android/gallery3d/picasasource/AlbumData;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    sput-object v0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->ALBUM_SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sum(size)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->SUM_SIZE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;)V
    .locals 3
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;
    .param p2, "source"    # Lcom/android/gallery3d/picasasource/PicasaSource;

    .prologue
    .line 72
    invoke-static {}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 73
    iput-object p2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    .line 74
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaFacade()Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getAlbumsUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v2}, Lcom/android/gallery3d/picasasource/PicasaSource;->getApplication()Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->getTypeFromPath(Lcom/android/gallery3d/data/Path;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mType:I

    .line 77
    invoke-virtual {p2}, Lcom/android/gallery3d/picasasource/PicasaSource;->getApplication()Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0217

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mName:Ljava/lang/String;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Lcom/android/gallery3d/picasasource/PicasaSource;->getApplication()Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/picasasource/PicasaAlbumSet;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/picasasource/PicasaAlbumSet;
    .param p1, "x1"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->load(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getAlbumCacheSize(Lcom/android/gallery3d/picasasource/PicasaSource;J)J
    .locals 7
    .param p0, "source"    # Lcom/android/gallery3d/picasasource/PicasaSource;
    .param p1, "albumId"    # J

    .prologue
    const/4 v5, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaFacade()Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->getPhotosUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->SUM_SIZE_PROJECTION:[Ljava/lang/String;

    const-string v3, "album_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/picasasource/PicasaSource;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 271
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    const-wide/16 v0, 0x0

    .line 276
    :goto_0
    return-wide v0

    .line 273
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 274
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 276
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getAlbumData(Lcom/android/gallery3d/picasasource/PicasaSource;J)Lcom/android/gallery3d/picasasource/AlbumData;
    .locals 9
    .param p0, "source"    # Lcom/android/gallery3d/picasasource/PicasaSource;
    .param p1, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaFacade()Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->getAlbumsUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->ALBUM_SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/picasasource/PicasaSource;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 219
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 230
    :goto_0
    return-object v5

    .line 221
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    new-instance v7, Lcom/android/gallery3d/picasasource/AlbumData;

    invoke-direct {v7}, Lcom/android/gallery3d/picasasource/AlbumData;-><init>()V

    .line 223
    .local v7, "entry":Lcom/android/gallery3d/picasasource/AlbumData;
    sget-object v0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->ALBUM_SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, v6, v7}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    .line 224
    iget-wide v0, v7, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-static {p0, v0, v1}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->getAlbumCacheSize(Lcom/android/gallery3d/picasasource/PicasaSource;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/gallery3d/picasasource/AlbumData;->cacheSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v5, v7

    goto :goto_0

    .end local v7    # "entry":Lcom/android/gallery3d/picasasource/AlbumData;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getPostAlbum(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/picasasource/AlbumData;)Lcom/android/gallery3d/picasasource/PicasaPostAlbum;
    .locals 7
    .param p1, "dataManager"    # Lcom/android/gallery3d/data/DataManager;
    .param p2, "entry"    # Lcom/android/gallery3d/picasasource/AlbumData;

    .prologue
    .line 181
    sget-object v6, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 182
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/picasa/post/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/google/android/picasasync/AlbumEntry;->userId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 184
    .local v1, "path":Lcom/android/gallery3d/data/Path;
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;

    .line 186
    .local v0, "album":Lcom/android/gallery3d/picasasource/PicasaPostAlbum;
    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;

    .end local v0    # "album":Lcom/android/gallery3d/picasasource/PicasaPostAlbum;
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    iget-wide v3, p2, Lcom/google/android/picasasync/AlbumEntry;->userId:J

    iget v5, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mType:I

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;JI)V

    .line 189
    .restart local v0    # "album":Lcom/android/gallery3d/picasasource/PicasaPostAlbum;
    :cond_0
    monitor-exit v6

    return-object v0

    .line 190
    .end local v0    # "album":Lcom/android/gallery3d/picasasource/PicasaPostAlbum;
    .end local v1    # "path":Lcom/android/gallery3d/data/Path;
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getTotalTargetCacheSize(Lcom/android/gallery3d/picasasource/PicasaSource;)J
    .locals 11
    .param p0, "source"    # Lcom/android/gallery3d/picasasource/PicasaSource;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaFacade()Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->getAlbumsUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v3, "cache_flag=2"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/picasasource/PicasaSource;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 251
    .local v6, "cursor":Landroid/database/Cursor;
    const-wide/16 v9, 0x0

    .line 253
    .local v9, "sum":J
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 255
    .local v7, "id":J
    invoke-static {p0, v7, v8}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->getAlbumCacheSize(Lcom/android/gallery3d/picasasource/PicasaSource;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    add-long/2addr v9, v0

    .line 256
    goto :goto_0

    .line 258
    .end local v7    # "id":J
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 261
    return-wide v9

    .line 258
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getTotalUsedCacheSize(Landroid/content/Context;)J
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getPhotosUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->SUM_SIZE_PROJECTION:[Ljava/lang/String;

    const-string v3, "cache_status=3"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 240
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 241
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getTypeFromPath(Lcom/android/gallery3d/data/Path;)I
    .locals 3
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "name":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->getTypeFromString(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private load(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 19
    .param p1, "jc"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getApplication()Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->checkPlusOneVersion(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    const/16 v18, 0x0

    .line 177
    :cond_0
    :goto_0
    return-object v18

    .line 118
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaFacade()Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getAlbumsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "type"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mType:I

    invoke-static {v4}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->getTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 122
    .local v2, "uri":Landroid/net/Uri;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v14, "loadBuffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/picasasource/AlbumData;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    sget-object v3, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->ALBUM_SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v3}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/picasasource/PicasaSource;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 126
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 127
    const-string v1, "PicasaAlbumSet"

    const-string v3, "cannot open picasa database"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/16 v18, 0x0

    goto :goto_0

    .line 132
    :cond_2
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    sget-object v1, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->ALBUM_SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    new-instance v3, Lcom/android/gallery3d/picasasource/AlbumData;

    invoke-direct {v3}, Lcom/android/gallery3d/picasasource/AlbumData;-><init>()V

    invoke-virtual {v1, v9, v3}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    move-result-object v11

    check-cast v11, Lcom/android/gallery3d/picasasource/AlbumData;

    .line 134
    .local v11, "entry":Lcom/android/gallery3d/picasasource/AlbumData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    iget-wide v3, v11, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->getAlbumCacheSize(Lcom/android/gallery3d/picasasource/PicasaSource;J)J

    move-result-wide v3

    iput-wide v3, v11, Lcom/android/gallery3d/picasasource/AlbumData;->cacheSize:J

    .line 135
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    const/16 v18, 0x0

    .line 140
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v11    # "entry":Lcom/android/gallery3d/picasasource/AlbumData;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 142
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v16, "newAlbums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getApplication()Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v10

    .line 144
    .local v10, "dataManager":Lcom/android/gallery3d/data/DataManager;
    new-instance v17, Landroid/support/v4/util/LongSparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 146
    .local v17, "postAlbums":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "n":I
    :goto_1
    if-ge v12, v15, :cond_7

    .line 147
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/gallery3d/picasasource/AlbumData;

    .line 148
    .restart local v11    # "entry":Lcom/android/gallery3d/picasasource/AlbumData;
    const-string v1, "Buzz"

    iget-object v3, v11, Lcom/google/android/picasasync/AlbumEntry;->albumType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    iget-wide v3, v11, Lcom/google/android/picasasync/AlbumEntry;->userId:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;

    .line 150
    .local v13, "info":Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;
    if-nez v13, :cond_4

    .line 151
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->getPostAlbum(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/picasasource/AlbumData;)Lcom/android/gallery3d/picasasource/PicasaPostAlbum;

    move-result-object v7

    .line 152
    .local v7, "album":Lcom/android/gallery3d/picasasource/PicasaPostAlbum;
    new-instance v13, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;

    .end local v13    # "info":Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;
    iget-wide v3, v11, Lcom/google/android/picasasync/AlbumEntry;->datePublished:J

    invoke-direct {v13, v3, v4, v7}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;-><init>(JLcom/android/gallery3d/data/MediaSet;)V

    .line 153
    .restart local v13    # "info":Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;
    iget-wide v3, v11, Lcom/google/android/picasasync/AlbumEntry;->userId:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v13}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 154
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v7    # "album":Lcom/android/gallery3d/picasasource/PicasaPostAlbum;
    .end local v13    # "info":Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 140
    .end local v10    # "dataManager":Lcom/android/gallery3d/data/DataManager;
    .end local v11    # "entry":Lcom/android/gallery3d/picasasource/AlbumData;
    .end local v12    # "i":I
    .end local v15    # "n":I
    .end local v16    # "newAlbums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;>;"
    .end local v17    # "postAlbums":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 156
    .restart local v10    # "dataManager":Lcom/android/gallery3d/data/DataManager;
    .restart local v11    # "entry":Lcom/android/gallery3d/picasasource/AlbumData;
    .restart local v12    # "i":I
    .restart local v13    # "info":Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;
    .restart local v15    # "n":I
    .restart local v16    # "newAlbums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;>;"
    .restart local v17    # "postAlbums":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;>;"
    :cond_4
    iget-wide v3, v11, Lcom/google/android/picasasync/AlbumEntry;->datePublished:J

    iget-wide v5, v13, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;->date:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v13, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;->date:J

    goto :goto_2

    .line 159
    .end local v13    # "info":Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    iget-wide v3, v11, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-virtual {v1, v3, v4}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v8

    .line 160
    .local v8, "childPath":Lcom/android/gallery3d/data/Path;
    sget-object v3, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 161
    :try_start_1
    invoke-virtual {v10, v8}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/picasasource/PicasaAlbum;

    .line 162
    .local v7, "album":Lcom/android/gallery3d/picasasource/PicasaAlbum;
    if-nez v7, :cond_6

    .line 163
    new-instance v7, Lcom/android/gallery3d/picasasource/PicasaAlbum;

    .end local v7    # "album":Lcom/android/gallery3d/picasasource/PicasaAlbum;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mType:I

    invoke-direct {v7, v8, v1, v11, v4}, Lcom/android/gallery3d/picasasource/PicasaAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;Lcom/android/gallery3d/picasasource/AlbumData;I)V

    .line 167
    .restart local v7    # "album":Lcom/android/gallery3d/picasasource/PicasaAlbum;
    :goto_3
    new-instance v1, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;

    iget-wide v4, v11, Lcom/google/android/picasasync/AlbumEntry;->datePublished:J

    invoke-direct {v1, v4, v5, v7}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;-><init>(JLcom/android/gallery3d/data/MediaSet;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    monitor-exit v3

    goto :goto_2

    .end local v7    # "album":Lcom/android/gallery3d/picasasource/PicasaAlbum;
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 165
    .restart local v7    # "album":Lcom/android/gallery3d/picasasource/PicasaAlbum;
    :cond_6
    :try_start_2
    invoke-virtual {v7, v11}, Lcom/android/gallery3d/picasasource/PicasaAlbum;->updateContent(Lcom/android/gallery3d/picasasource/AlbumData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 171
    .end local v7    # "album":Lcom/android/gallery3d/picasasource/PicasaAlbum;
    .end local v8    # "childPath":Lcom/android/gallery3d/data/Path;
    .end local v11    # "entry":Lcom/android/gallery3d/picasasource/AlbumData;
    :cond_7
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 173
    new-instance v18, Ljava/util/ArrayList;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .local v18, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    const/4 v12, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v15

    :goto_4
    if-ge v12, v15, :cond_0

    .line 175
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;

    iget-object v1, v1, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;->set:Lcom/android/gallery3d/data/MediaSet;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v12, v12, 0x1

    goto :goto_4
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "future":Lcom/android/gallery3d/util/Future;, "Lcom/android/gallery3d/util/Future<Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mLoadTask:Lcom/android/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 309
    :goto_0
    monitor-exit p0

    return-void

    .line 301
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 302
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$1;-><init>(Lcom/android/gallery3d/picasasource/PicasaAlbumSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reload()J
    .locals 5

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v2}, Lcom/android/gallery3d/picasasource/PicasaSource;->getApplication()Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumsLoader;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumsLoader;-><init>(Lcom/android/gallery3d/picasasource/PicasaAlbumSet;Lcom/android/gallery3d/picasasource/PicasaAlbumSet$1;)V

    invoke-virtual {v2, v3, p0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    .line 287
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 288
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 289
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 290
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    .line 291
    .local v0, "album":Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 282
    .end local v0    # "album":Lcom/android/gallery3d/data/MediaSet;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 293
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 295
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v2
.end method

.method public declared-synchronized requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;
    .locals 3
    .param p1, "listener"    # Lcom/android/gallery3d/data/MediaSet$SyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/MediaSet$SyncListener;",
            ")",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getApplication()Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->checkPlusOneVersion(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/MediaSet;->requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 324
    :goto_0
    monitor-exit p0

    return-object v0

    .line 316
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;

    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;-><init>(Lcom/android/gallery3d/picasasource/PicasaSource;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$SyncListener;)V

    .line 317
    .local v0, "syncFuture":Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getApplication()Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$2;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$2;-><init>(Lcom/android/gallery3d/picasasource/PicasaAlbumSet;Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 313
    .end local v0    # "syncFuture":Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
