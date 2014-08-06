.class public Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$EntryUpdater;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    }
.end annotation


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mContentUploader:Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;

.field private final mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

.field private final mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private final mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

.field private final mLabelUploader:Lcom/android/gallery3d/glrenderer/TextureUploader;

.field private mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

.field private mLoadingLabel:Lcom/android/gallery3d/glrenderer/BitmapTexture;

.field private final mLoadingText:Ljava/lang/String;

.field private mSize:I

.field private mSlotWidth:I

.field private final mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

.field private final mThreadPool:Lcom/android/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V
    .locals 2
    .param p1, "activity"    # Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .param p2, "source"    # Lcom/android/gallery3d/app/AlbumSetDataLoader;
    .param p3, "labelSpec"    # Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    .param p4, "cacheSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 52
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .line 54
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 55
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 68
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 69
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 96
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setModelListener(Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;)V

    .line 97
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    .line 98
    new-array v0, p4, [Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .line 99
    invoke-virtual {p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    .line 100
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 102
    new-instance v0, Lcom/android/gallery3d/ui/AlbumLabelMaker;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/android/gallery3d/ui/AlbumLabelMaker;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    .line 103
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingText:Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;

    .line 105
    new-instance v0, Lcom/android/gallery3d/glrenderer/TextureUploader;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/glrenderer/TextureUploader;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/android/gallery3d/glrenderer/TextureUploader;

    .line 107
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$1;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$1;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 114
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/glrenderer/TextureUploader;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/android/gallery3d/glrenderer/TextureUploader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/util/ThreadPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$606(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumLabelMaker;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    return-object v0
.end method

.method private cancelImagesInSlot(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .prologue
    .line 218
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 220
    .local v0, "entry":Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->cancelLoad()V

    .line 221
    :cond_2
    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->cancelLoad()V

    goto :goto_0
.end method

.method private cancelNonactiveImages()V
    .locals 5

    .prologue
    .line 202
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 204
    .local v1, "range":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 205
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 206
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method private freeSlotContent(I)V
    .locals 4
    .param p1, "slotIndex"    # I

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 232
    .local v0, "entry":Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 233
    :cond_0
    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_1

    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 234
    :cond_1
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 235
    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/glrenderer/TiledTexture;->recycle()V

    .line 236
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 237
    return-void
.end method

.method private static getDataVersion(Lcom/android/gallery3d/data/MediaObject;)J
    .locals 2
    .param p0, "object"    # Lcom/android/gallery3d/data/MediaObject;

    .prologue
    .line 225
    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static identifyCacheFlag(Lcom/android/gallery3d/data/MediaSet;)I
    .locals 1
    .param p0, "set"    # Lcom/android/gallery3d/data/MediaSet;

    .prologue
    .line 462
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 464
    :cond_0
    const/4 v0, 0x0

    .line 467
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getCacheFlag()I

    move-result v0

    goto :goto_0
.end method

.method private static identifyCacheStatus(Lcom/android/gallery3d/data/MediaSet;)I
    .locals 1
    .param p0, "set"    # Lcom/android/gallery3d/data/MediaSet;

    .prologue
    .line 471
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 473
    :cond_0
    const/4 v0, 0x0

    .line 476
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getCacheStatus()I

    move-result v0

    goto :goto_0
.end method

.method private isLabelChanged(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Ljava/lang/String;II)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "totalCount"    # I
    .param p4, "sourceType"    # I

    .prologue
    .line 241
    iget-object v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    if-ne v0, p3, :cond_0

    iget v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    if-eq v0, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareSlotContent(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .prologue
    .line 291
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;-><init>()V

    .line 292
    .local v0, "entry":Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAlbumSetEntry(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    .line 293
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aput-object v0, v1, v2

    .line 294
    return-void
.end method

.method private requestImagesInSlot(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .prologue
    .line 211
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 213
    .local v0, "entry":Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 214
    :cond_2
    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    goto :goto_0
.end method

.method private requestNonactiveImages()V
    .locals 5

    .prologue
    .line 193
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 195
    .local v1, "range":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 196
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 197
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method

.method private setContentWindow(II)V
    .locals 3
    .param p1, "contentStart"    # I
    .param p2, "contentEnd"    # I

    .prologue
    .line 137
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ne p2, v2, :cond_0

    .line 165
    :goto_0
    return-void

    .line 139
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt v2, p2, :cond_3

    .line 140
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, "i":I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 141
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setActiveWindow(II)V

    .line 144
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_7

    .line 145
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 148
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, p1, :cond_4

    .line 149
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 151
    :cond_4
    move v0, p2

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .restart local v1    # "n":I
    :goto_4
    if-ge v0, v1, :cond_5

    .line 152
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 154
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setActiveWindow(II)V

    .line 155
    move v0, p1

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_6

    .line 156
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 158
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_7

    .line 159
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 163
    :cond_7
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 164
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    goto :goto_0
.end method

.method private static startLoadBitmap(Lcom/android/gallery3d/ui/BitmapLoader;)Z
    .locals 1
    .param p0, "loader"    # Lcom/android/gallery3d/ui/BitmapLoader;

    .prologue
    .line 297
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 299
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapLoader;->isRequestInProgress()Z

    move-result v0

    goto :goto_0
.end method

.method private updateAlbumSetEntry(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V
    .locals 11
    .param p1, "entry"    # Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .param p2, "slotIndex"    # I

    .prologue
    const/4 v8, 0x0

    .line 247
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    .line 248
    .local v6, "album":Lcom/android/gallery3d/data/MediaSet;
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getCoverItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v7

    .line 249
    .local v7, "cover":Lcom/android/gallery3d/data/MediaItem;
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getTotalCount(I)I

    move-result v4

    .line 251
    .local v4, "totalCount":I
    iput-object v6, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    .line 252
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/android/gallery3d/data/MediaObject;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setDataVersion:J

    .line 253
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->identifyCacheFlag(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v0

    iput v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->cacheFlag:I

    .line 254
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->identifyCacheStatus(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v0

    iput v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->cacheStatus:I

    .line 255
    if-nez v6, :cond_4

    move-object v0, v8

    :goto_0
    iput-object v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    .line 257
    if-nez v6, :cond_5

    const-string v3, ""

    .line 258
    .local v3, "title":Ljava/lang/String;
    :goto_1
    invoke-static {v6}, Lcom/android/gallery3d/data/DataSourceType;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v5

    .line 259
    .local v5, "sourceType":I
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isLabelChanged(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iput-object v3, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    .line 261
    iput v4, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    .line 262
    iput v5, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    .line 263
    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 265
    # setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v8}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 266
    iput-object v8, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    .line 268
    :cond_0
    if-eqz v6, :cond_1

    .line 269
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;II)V

    # setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 274
    :cond_1
    iput-object v7, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Lcom/android/gallery3d/data/MediaItem;

    .line 275
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/android/gallery3d/data/MediaObject;)J

    move-result-wide v0

    iget-wide v9, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_3

    .line 276
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/android/gallery3d/data/MediaObject;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion:J

    .line 277
    if-nez v7, :cond_6

    const/4 v0, 0x0

    :goto_2
    iput v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    .line 278
    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 279
    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 280
    # setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v8}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$002(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 281
    iput-object v8, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    .line 282
    iput-object v8, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/android/gallery3d/glrenderer/Texture;

    .line 284
    :cond_2
    if-eqz v7, :cond_3

    .line 285
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-direct {v0, p0, p2, v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;ILcom/android/gallery3d/data/MediaItem;)V

    # setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$002(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 288
    :cond_3
    return-void

    .line 255
    .end local v3    # "title":Ljava/lang/String;
    .end local v5    # "sourceType":I
    :cond_4
    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_5
    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 277
    .restart local v3    # "title":Ljava/lang/String;
    .restart local v5    # "sourceType":I
    :cond_6
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    goto :goto_2
.end method

.method private updateAllImageRequests()V
    .locals 5

    .prologue
    .line 339
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 340
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .local v1, "i":I
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 341
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    rem-int v4, v1, v4

    aget-object v0, v3, v4

    .line 342
    .local v0, "entry":Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcom/android/gallery3d/ui/BitmapLoader;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 343
    :cond_0
    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcom/android/gallery3d/ui/BitmapLoader;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 340
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "entry":Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    if-nez v3, :cond_3

    .line 346
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    .line 350
    :goto_1
    return-void

    .line 348
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->cancelNonactiveImages()V

    goto :goto_1
.end method

.method private updateTextureUploadQueue()V
    .locals 7

    .prologue
    .line 314
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v4, :cond_1

    .line 336
    :cond_0
    return-void

    .line 315
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v4}, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;->clear()V

    .line 316
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/android/gallery3d/glrenderer/TextureUploader;

    invoke-virtual {v4}, Lcom/android/gallery3d/glrenderer/TextureUploader;->clear()V

    .line 319
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .local v1, "i":I
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 320
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v5, v5

    rem-int v5, v1, v5

    aget-object v0, v4, v5

    .line 321
    .local v0, "entry":Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    if-eqz v4, :cond_2

    .line 322
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/android/gallery3d/glrenderer/TiledTexture;)V

    .line 324
    :cond_2
    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    if-eqz v4, :cond_3

    .line 325
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/android/gallery3d/glrenderer/TextureUploader;

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/glrenderer/TextureUploader;->addFgTexture(Lcom/android/gallery3d/glrenderer/UploadedTexture;)V

    .line 319
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v0    # "entry":Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :cond_4
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 332
    .local v3, "range":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 333
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    .line 334
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private uploadBackgroundTextureInSlot(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 303
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 305
    .local v0, "entry":Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    if-eqz v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/android/gallery3d/glrenderer/TiledTexture;)V

    .line 308
    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/android/gallery3d/glrenderer/TextureUploader;

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/glrenderer/TextureUploader;->addBgTexture(Lcom/android/gallery3d/glrenderer/UploadedTexture;)V

    goto :goto_0
.end method


# virtual methods
.method public get(I)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 4
    .param p1, "slotIndex"    # I

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const-string v0, "invalid slot: %s outsides (%s, %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .param p1, "slotIndex"    # I

    .prologue
    .line 133
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentChanged(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 364
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_2

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_3

    .line 371
    :cond_2
    const-string v1, "AlbumSetSlidingWindow"

    const-string v2, "invalid update: %s is outside (%s, %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 378
    .local v0, "entry":Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAlbumSetEntry(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    .line 379
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 380
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    .line 381
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0
.end method

.method public onSizeChanged(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-eq v0, p1, :cond_2

    .line 355
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    .line 356
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onSizeChanged(I)V

    .line 357
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .line 358
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 360
    :cond_2
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v8, 0x0

    .line 526
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    if-ne v0, p1, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    .line 529
    iput-object v8, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    .line 530
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->setLabelWidth(I)V

    .line 532
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 534
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v2, "i":I
    iget v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v7, "n":I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 535
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v1

    rem-int v1, v2, v1

    aget-object v6, v0, v1

    .line 536
    .local v6, "entry":Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 537
    # getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 538
    # setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v6, v8}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 539
    iput-object v8, v6, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    .line 541
    :cond_2
    iget-object v0, v6, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_3

    .line 542
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;

    iget-object v3, v6, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    iget v4, v6, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    iget v5, v6, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;II)V

    # setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v6, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 534
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 546
    .end local v6    # "entry":Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 547
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 398
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 399
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/android/gallery3d/glrenderer/TextureUploader;

    invoke-virtual {v2}, Lcom/android/gallery3d/glrenderer/TextureUploader;->clear()V

    .line 400
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v2}, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;->clear()V

    .line 401
    invoke-static {}, Lcom/android/gallery3d/glrenderer/TiledTexture;->freeResources()V

    .line 402
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, "i":I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 403
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 408
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 409
    invoke-static {}, Lcom/android/gallery3d/glrenderer/TiledTexture;->prepareResources()V

    .line 410
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, "i":I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 411
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 414
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v7, 0x0

    .line 168
    if-gt p1, p2, :cond_0

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le p2, v3, :cond_1

    .line 169
    :cond_0
    const-string v3, "start = %s, end = %s, length = %s, size = %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .line 174
    .local v2, "data":[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 175
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 176
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    array-length v5, v2

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v7, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 178
    .local v1, "contentStart":I
    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 179
    .local v0, "contentEnd":I
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setContentWindow(II)V

    .line 181
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_2

    .line 182
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    .line 183
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 185
    :cond_2
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    .line 118
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    return v0
.end method
