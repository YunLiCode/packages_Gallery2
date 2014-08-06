.class public abstract Lcom/android/gallery3d/picasasource/BasePicasaAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "BasePicasaAlbum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/picasasource/BasePicasaAlbum$PicasaSyncTaskFuture;
    }
.end annotation


# static fields
.field protected static final SCHEMA:Lcom/android/gallery3d/common/EntrySchema;


# instance fields
.field private mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

.field protected final mSource:Lcom/android/gallery3d/picasasource/PicasaSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    sput-object v0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;J)V
    .locals 3
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;
    .param p2, "source"    # Lcom/android/gallery3d/picasasource/PicasaSource;
    .param p3, "version"    # J

    .prologue
    .line 31
    invoke-direct {p0, p1, p3, p4}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 33
    iput-object p2, p0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    .line 34
    invoke-virtual {p2}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaFacade()Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getPhotosUri()Landroid/net/Uri;

    move-result-object v0

    .line 35
    .local v0, "photoUri":Landroid/net/Uri;
    new-instance v1, Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {p2}, Lcom/android/gallery3d/picasasource/PicasaSource;->getApplication()Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v1, p0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 36
    return-void
.end method


# virtual methods
.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 9
    .param p1, "start"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 63
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->internalQuery(II)Landroid/database/Cursor;

    move-result-object v1

    .line 65
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 66
    const-string v6, "BasePicasaAlbum"

    const-string v7, "query media item fail"

    invoke-static {v6, v7}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 81
    :goto_0
    return-object v5

    .line 70
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v6}, Lcom/android/gallery3d/picasasource/PicasaSource;->getApplication()Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    .line 71
    .local v2, "dataManager":Lcom/android/gallery3d/data/DataManager;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    sget-object v6, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    new-instance v7, Lcom/google/android/picasasync/PhotoEntry;

    invoke-direct {v7}, Lcom/google/android/picasasync/PhotoEntry;-><init>()V

    invoke-virtual {v6, v1, v7}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    move-result-object v3

    check-cast v3, Lcom/google/android/picasasync/PhotoEntry;

    .line 73
    .local v3, "entry":Lcom/google/android/picasasync/PhotoEntry;
    sget-object v6, Lcom/android/gallery3d/picasasource/PicasaImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iget-wide v7, v3, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 74
    .local v0, "childPath":Lcom/android/gallery3d/data/Path;
    iget-object v6, p0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-static {v0, v3, v2, v6}, Lcom/android/gallery3d/picasasource/PicasaSource;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Lcom/google/android/picasasync/PhotoEntry;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/picasasource/PicasaSource;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    .line 76
    .local v4, "item":Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 79
    .end local v0    # "childPath":Lcom/android/gallery3d/data/Path;
    .end local v2    # "dataManager":Lcom/android/gallery3d/data/DataManager;
    .end local v3    # "entry":Lcom/google/android/picasasync/PhotoEntry;
    .end local v4    # "item":Lcom/android/gallery3d/data/MediaItem;
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6

    .restart local v2    # "dataManager":Lcom/android/gallery3d/data/DataManager;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected internalQuery(II)Landroid/database/Cursor;
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 48
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method
