.class Lcom/android/gallery3d/picasasource/PicasaAlbum;
.super Lcom/android/gallery3d/picasasource/BasePicasaAlbum;
.source "PicasaAlbum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/picasasource/PicasaAlbum$PicasaBitmapJob;,
        Lcom/android/gallery3d/picasasource/PicasaAlbum$CoverItem;,
        Lcom/android/gallery3d/picasasource/PicasaAlbum$WhereEntry;
    }
.end annotation


# static fields
.field private static final SCHEMA:Lcom/android/gallery3d/common/EntrySchema;


# instance fields
.field private mCoverItem:Lcom/android/gallery3d/picasasource/PicasaAlbum$CoverItem;

.field private mData:Lcom/android/gallery3d/picasasource/AlbumData;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    sput-object v0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;Lcom/android/gallery3d/picasasource/AlbumData;I)V
    .locals 2
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;
    .param p2, "source"    # Lcom/android/gallery3d/picasasource/PicasaSource;
    .param p3, "entry"    # Lcom/android/gallery3d/picasasource/AlbumData;
    .param p4, "type"    # I

    .prologue
    .line 55
    invoke-static {}, Lcom/android/gallery3d/picasasource/PicasaAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;J)V

    .line 56
    iput-object p3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mData:Lcom/android/gallery3d/picasasource/AlbumData;

    .line 57
    iput p4, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mType:I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/picasasource/PicasaAlbum;)Lcom/android/gallery3d/picasasource/AlbumData;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/picasasource/PicasaAlbum;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mData:Lcom/android/gallery3d/picasasource/AlbumData;

    return-object v0
.end method

.method public static find(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;JI)Lcom/android/gallery3d/picasasource/PicasaAlbum;
    .locals 2
    .param p0, "path"    # Lcom/android/gallery3d/data/Path;
    .param p1, "source"    # Lcom/android/gallery3d/picasasource/PicasaSource;
    .param p2, "id"    # J
    .param p4, "type"    # I

    .prologue
    .line 62
    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->getAlbumData(Lcom/android/gallery3d/picasasource/PicasaSource;J)Lcom/android/gallery3d/picasasource/AlbumData;

    move-result-object v0

    .line 63
    .local v0, "entry":Lcom/android/gallery3d/picasasource/AlbumData;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 64
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/gallery3d/picasasource/PicasaAlbum;

    invoke-direct {v1, p0, p1, v0, p4}, Lcom/android/gallery3d/picasasource/PicasaAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;Lcom/android/gallery3d/picasasource/AlbumData;I)V

    goto :goto_0
.end method

.method public static getPhotoEntry(Lcom/android/gallery3d/picasasource/PicasaSource;J)Lcom/google/android/picasasync/PhotoEntry;
    .locals 8
    .param p0, "source"    # Lcom/android/gallery3d/picasasource/PicasaSource;
    .param p1, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaFacade()Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->getPhotosUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/picasasource/PicasaSource;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 118
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    new-instance v1, Lcom/google/android/picasasync/PhotoEntry;

    invoke-direct {v1}, Lcom/google/android/picasasync/PhotoEntry;-><init>()V

    invoke-virtual {v0, v6, v1}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/PhotoEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :goto_0
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :cond_0
    move-object v0, v5

    .line 118
    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method


# virtual methods
.method public cache(I)V
    .locals 7
    .param p1, "inFlag"    # I

    .prologue
    const/4 v6, 0x0

    .line 165
    packed-switch p1, :pswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 167
    :pswitch_0
    const/4 v0, 0x2

    .line 178
    .local v0, "flag":I
    :goto_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 179
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "cache_flag"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    iget-object v3, p0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v3}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaFacade()Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mData:Lcom/android/gallery3d/picasasource/AlbumData;

    iget-wide v4, v4, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/picasasync/PicasaFacade;->getAlbumUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6, v6}, Lcom/android/gallery3d/picasasource/PicasaSource;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 170
    .end local v0    # "flag":I
    .end local v1    # "values":Landroid/content/ContentValues;
    :pswitch_1
    const/4 v0, 0x1

    .line 171
    .restart local v0    # "flag":I
    goto :goto_1

    .line 173
    .end local v0    # "flag":I
    :pswitch_2
    const/4 v0, 0x0

    .line 174
    .restart local v0    # "flag":I
    goto :goto_1

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCacheFlag()I
    .locals 3

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 153
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mData:Lcom/android/gallery3d/picasasource/AlbumData;

    iget v2, v2, Lcom/google/android/picasasync/AlbumEntry;->cacheFlag:I

    if-ne v2, v0, :cond_0

    .line 158
    :goto_0
    return v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mData:Lcom/android/gallery3d/picasasource/AlbumData;

    iget v0, v0, Lcom/google/android/picasasync/AlbumEntry;->cacheFlag:I

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 156
    goto :goto_0

    .line 158
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCacheSize()J
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mData:Lcom/android/gallery3d/picasasource/AlbumData;

    iget-wide v0, v0, Lcom/android/gallery3d/picasasource/AlbumData;->cacheSize:J

    return-wide v0
.end method

.method public getCacheStatus()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mData:Lcom/android/gallery3d/picasasource/AlbumData;

    iget v0, v0, Lcom/google/android/picasasync/AlbumEntry;->cacheStatus:I

    packed-switch v0, :pswitch_data_0

    .line 193
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 187
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 189
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 191
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized getCoverMediaItem()Lcom/android/gallery3d/data/MediaItem;
    .locals 4

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mCoverItem:Lcom/android/gallery3d/picasasource/PicasaAlbum$CoverItem;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/gallery3d/picasasource/PicasaAlbum$CoverItem;

    iget-object v1, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    const-string v2, "cover"

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-static {}, Lcom/android/gallery3d/data/MediaObject;->nextVersionNumber()J

    move-result-wide v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/gallery3d/picasasource/PicasaAlbum$CoverItem;-><init>(Lcom/android/gallery3d/picasasource/PicasaAlbum;Lcom/android/gallery3d/data/Path;J)V

    iput-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mCoverItem:Lcom/android/gallery3d/picasasource/PicasaAlbum$CoverItem;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mCoverItem:Lcom/android/gallery3d/picasasource/PicasaAlbum$CoverItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mData:Lcom/android/gallery3d/picasasource/AlbumData;

    iget v0, v0, Lcom/google/android/picasasync/AlbumEntry;->numPhotos:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mData:Lcom/android/gallery3d/picasasource/AlbumData;

    iget-object v0, v0, Lcom/google/android/picasasync/AlbumEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 148
    const/16 v0, 0x504

    return v0
.end method

.method protected internalQuery(II)Landroid/database/Cursor;
    .locals 7
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaFacade()Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->getPhotosUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 107
    .local v1, "uri":Landroid/net/Uri;
    new-instance v6, Lcom/android/gallery3d/picasasource/PicasaAlbum$WhereEntry;

    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mData:Lcom/android/gallery3d/picasasource/AlbumData;

    iget-wide v2, v0, Lcom/android/gallery3d/common/Entry;->id:J

    iget v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mType:I

    invoke-direct {v6, v2, v3, v0}, Lcom/android/gallery3d/picasasource/PicasaAlbum$WhereEntry;-><init>(JI)V

    .line 108
    .local v6, "where":Lcom/android/gallery3d/picasasource/PicasaAlbum$WhereEntry;
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    sget-object v2, Lcom/android/gallery3d/picasasource/PicasaAlbum;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, v6, Lcom/android/gallery3d/picasasource/PicasaAlbum$WhereEntry;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/gallery3d/picasasource/PicasaAlbum$WhereEntry;->args:[Ljava/lang/String;

    const-string v5, "display_index"

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/picasasource/PicasaSource;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
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
    .line 209
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum$PicasaSyncTaskFuture;

    iget-object v1, p0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/gallery3d/picasasource/BasePicasaAlbum$PicasaSyncTaskFuture;-><init>(Lcom/android/gallery3d/picasasource/PicasaSource;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$SyncListener;)V

    .line 210
    .local v0, "syncFuture":Lcom/android/gallery3d/picasasource/BasePicasaAlbum$PicasaSyncTaskFuture;
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mData:Lcom/android/gallery3d/picasasource/AlbumData;

    iget-wide v1, v1, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/picasasource/BasePicasaAlbum$PicasaSyncTaskFuture;->startSync(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-object v0

    .line 209
    .end local v0    # "syncFuture":Lcom/android/gallery3d/picasasource/BasePicasaAlbum$PicasaSyncTaskFuture;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected updateContent(Lcom/android/gallery3d/picasasource/AlbumData;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/gallery3d/picasasource/AlbumData;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mData:Lcom/android/gallery3d/picasasource/AlbumData;

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/picasasource/AlbumData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mCoverItem:Lcom/android/gallery3d/picasasource/PicasaAlbum$CoverItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mData:Lcom/android/gallery3d/picasasource/AlbumData;

    iget-object v0, v0, Lcom/google/android/picasasync/AlbumEntry;->thumbnailUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/picasasync/AlbumEntry;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mCoverItem:Lcom/android/gallery3d/picasasource/PicasaAlbum$CoverItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/picasasource/PicasaAlbum$CoverItem;->updateContent()V

    .line 131
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum;->mData:Lcom/android/gallery3d/picasasource/AlbumData;

    .line 132
    invoke-static {}, Lcom/android/gallery3d/picasasource/PicasaAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 134
    :cond_1
    return-void
.end method
