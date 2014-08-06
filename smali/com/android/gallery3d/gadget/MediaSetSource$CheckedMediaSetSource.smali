.class Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;
.super Ljava/lang/Object;
.source "MediaSetSource.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;
.implements Lcom/android/gallery3d/gadget/WidgetSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/gadget/MediaSetSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedMediaSetSource"
.end annotation


# instance fields
.field private mCache:[Lcom/android/gallery3d/data/MediaItem;

.field private mCacheEnd:I

.field private mCacheStart:I

.field private mContentListener:Lcom/android/gallery3d/data/ContentListener;

.field private mSource:Lcom/android/gallery3d/data/MediaSet;

.field private mSourceVersion:J


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 2
    .param p1, "source"    # Lcom/android/gallery3d/data/MediaSet;

    .prologue
    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCache:[Lcom/android/gallery3d/data/MediaItem;

    .line 133
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSourceVersion:J

    .line 138
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 140
    return-void
.end method

.method private ensureCacheRange(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 148
    iget v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    if-lt p1, v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheEnd:I

    if-ge p1, v3, :cond_0

    .line 159
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 152
    .local v1, "token":J
    :try_start_0
    iput p1, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    .line 153
    iget-object v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget v4, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 154
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    iget v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheEnd:I

    .line 155
    iget-object v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCache:[Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 145
    return-void
.end method

.method public declared-synchronized getContentUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->ensureCacheRange(I)V

    .line 164
    iget v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 165
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCache:[Lcom/android/gallery3d/data/MediaItem;

    iget v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImage(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->ensureCacheRange(I)V

    .line 171
    iget v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 172
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCache:[Lcom/android/gallery3d/data/MediaItem;

    iget v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/gallery3d/gadget/WidgetUtils;->createWidgetBitmap(Lcom/android/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onContentDirty()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mContentListener:Lcom/android/gallery3d/data/ContentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mContentListener:Lcom/android/gallery3d/data/ContentListener;

    invoke-interface {v0}, Lcom/android/gallery3d/data/ContentListener;->onContentDirty()V

    .line 204
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    iget-object v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    .line 178
    .local v0, "version":J
    iget-wide v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSourceVersion:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 179
    iput-wide v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSourceVersion:J

    .line 180
    iput v4, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    .line 181
    iput v4, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheEnd:I

    .line 182
    iget-object v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCache:[Lcom/android/gallery3d/data/MediaItem;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    :cond_0
    return-void
.end method

.method public setContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/gallery3d/data/ContentListener;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mContentListener:Lcom/android/gallery3d/data/ContentListener;

    .line 189
    return-void
.end method

.method public size()I
    .locals 3

    .prologue
    .line 193
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 195
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 197
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
