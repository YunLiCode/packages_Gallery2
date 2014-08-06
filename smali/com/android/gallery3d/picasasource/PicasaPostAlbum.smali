.class Lcom/android/gallery3d/picasasource/PicasaPostAlbum;
.super Lcom/android/gallery3d/picasasource/BasePicasaAlbum;
.source "PicasaPostAlbum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;
    }
.end annotation


# static fields
.field private static final ALBUMS_PROJECTION:[Ljava/lang/String;

.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final USERS_ACCOUNT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCachedCount:I

.field private mName:Ljava/lang/String;

.field private mPostAlbumsUri:Landroid/net/Uri;

.field private mPostPhotosUri:Landroid/net/Uri;

.field private mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "count(*)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    .line 51
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->ALBUMS_PROJECTION:[Ljava/lang/String;

    .line 52
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "account"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->USERS_ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;JI)V
    .locals 6
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;
    .param p2, "source"    # Lcom/android/gallery3d/picasasource/PicasaSource;
    .param p3, "userId"    # J
    .param p5, "type"    # I

    .prologue
    .line 62
    invoke-static {}, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->nextVersionNumber()J

    move-result-wide v3

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;J)V

    .line 55
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->mCachedCount:I

    .line 63
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "uid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v3}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaFacade()Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaFacade;->getPostPhotosUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "user_id"

    invoke-virtual {v3, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "type"

    invoke-static {p5}, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->getTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->mPostPhotosUri:Landroid/net/Uri;

    .line 68
    iget-object v3, p0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v3}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaFacade()Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaFacade;->getPostAlbumsUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "user_id"

    invoke-virtual {v3, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "type"

    invoke-static {p5}, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->getTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->mPostAlbumsUri:Landroid/net/Uri;

    .line 72
    iget-object v3, p0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-static {v3, p3, p4}, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->getAlbumUserId(Lcom/android/gallery3d/picasasource/PicasaSource;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->mUserId:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->mUserId:Ljava/lang/String;

    .line 74
    .local v0, "id":Ljava/lang/String;
    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 75
    .local v1, "index":I
    if-ltz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Posts - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->mName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/picasasource/PicasaPostAlbum;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/picasasource/PicasaPostAlbum;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/picasasource/PicasaPostAlbum;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/picasasource/PicasaPostAlbum;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->mPostAlbumsUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->ALBUMS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private static getAlbumUserId(Lcom/android/gallery3d/picasasource/PicasaSource;J)Ljava/lang/String;
    .locals 8
    .param p0, "source"    # Lcom/android/gallery3d/picasasource/PicasaSource;
    .param p1, "userId"    # J

    .prologue
    const/4 v5, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaFacade()Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->getUsersUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->USERS_ACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/picasasource/PicasaSource;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 84
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    const-string v6, ""

    .line 90
    :goto_0
    return-object v6

    .line 86
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 87
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 90
    .local v6, "account":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6    # "account":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public getMediaItemCount()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 104
    iget v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->mPostPhotosUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/picasasource/PicasaSource;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 108
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 115
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->mCachedCount:I

    return v0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    move v0, v7

    .line 108
    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 125
    const/16 v0, 0x404

    return v0
.end method

.method protected internalQuery(II)Landroid/database/Cursor;
    .locals 6
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->mPostPhotosUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 98
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    sget-object v2, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v5, "date_taken DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/picasasource/PicasaSource;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 138
    .local v0, "version":J
    invoke-super {p0}, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->reload()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 139
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->mCachedCount:I

    .line 141
    :cond_0
    iget-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v2
.end method

.method public declared-synchronized requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;
    .locals 2
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
    .line 130
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;-><init>(Lcom/android/gallery3d/picasasource/PicasaPostAlbum;Lcom/android/gallery3d/data/MediaSet$SyncListener;)V

    .line 131
    .local v0, "future":Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;
    invoke-virtual {v0}, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->startSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-object v0

    .line 130
    .end local v0    # "future":Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
