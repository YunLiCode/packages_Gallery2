.class public Lcom/android/gallery3d/gadget/MediaSetSource;
.super Ljava/lang/Object;
.source "MediaSetSource.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;
.implements Lcom/android/gallery3d/gadget/WidgetSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/gadget/MediaSetSource$1;,
        Lcom/android/gallery3d/gadget/MediaSetSource$EmptySource;,
        Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;
    }
.end annotation


# instance fields
.field private mAlbumPath:Lcom/android/gallery3d/data/Path;

.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mListener:Lcom/android/gallery3d/data/ContentListener;

.field private mRootSet:Lcom/android/gallery3d/data/MediaSet;

.field private mSource:Lcom/android/gallery3d/gadget/WidgetSource;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/DataManager;Ljava/lang/String;)V
    .locals 3
    .param p1, "manager"    # Lcom/android/gallery3d/data/DataManager;
    .param p2, "albumPath"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1, p2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    .line 47
    .local v0, "mediaSet":Lcom/android/gallery3d/data/MediaSet;
    if-eqz v0, :cond_0

    .line 48
    new-instance v1, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;-><init>(Lcom/android/gallery3d/data/MediaSet;)V

    iput-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/DataManager;

    iput-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 54
    invoke-static {p2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mAlbumPath:Lcom/android/gallery3d/data/Path;

    .line 55
    new-instance v1, Lcom/android/gallery3d/gadget/MediaSetSource$EmptySource;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/gallery3d/gadget/MediaSetSource$EmptySource;-><init>(Lcom/android/gallery3d/gadget/MediaSetSource$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    .line 56
    invoke-direct {p0}, Lcom/android/gallery3d/gadget/MediaSetSource;->monitorRootPath()V

    goto :goto_0
.end method

.method private monitorRootPath()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "rootPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSet;

    iput-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mRootSet:Lcom/android/gallery3d/data/MediaSet;

    .line 101
    iget-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mRootSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 102
    return-void
.end method

.method private declared-synchronized resolveAlbumPath()V
    .locals 3

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mDataManager:Lcom/android/gallery3d/data/DataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 106
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mAlbumPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    .line 107
    .local v0, "mediaSet":Lcom/android/gallery3d/data/MediaSet;
    if-eqz v0, :cond_0

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mRootSet:Lcom/android/gallery3d/data/MediaSet;

    .line 112
    new-instance v1, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;-><init>(Lcom/android/gallery3d/data/MediaSet;)V

    iput-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    .line 113
    iget-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mListener:Lcom/android/gallery3d/data/ContentListener;

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mListener:Lcom/android/gallery3d/data/ContentListener;

    invoke-interface {v1}, Lcom/android/gallery3d/data/ContentListener;->onContentDirty()V

    .line 115
    iget-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    iget-object v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mListener:Lcom/android/gallery3d/data/ContentListener;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/gadget/WidgetSource;->setContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mListener:Lcom/android/gallery3d/data/ContentListener;

    .line 118
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mAlbumPath:Lcom/android/gallery3d/data/Path;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    .end local v0    # "mediaSet":Lcom/android/gallery3d/data/MediaSet;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/WidgetSource;->close()V

    .line 91
    return-void
.end method

.method public getContentUri(I)Landroid/net/Uri;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/gadget/WidgetSource;->getContentUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/gadget/WidgetSource;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/gallery3d/gadget/MediaSetSource;->resolveAlbumPath()V

    .line 96
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/WidgetSource;->reload()V

    .line 86
    return-void
.end method

.method public declared-synchronized setContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/gallery3d/data/ContentListener;

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mRootSet:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    .line 77
    iput-object p1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mListener:Lcom/android/gallery3d/data/ContentListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/gadget/WidgetSource;->setContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/WidgetSource;->size()I

    move-result v0

    return v0
.end method
