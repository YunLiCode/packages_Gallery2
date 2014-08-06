.class public Lcom/android/gallery3d/app/StitchingProgressManager;
.super Ljava/lang/Object;
.source "StitchingProgressManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/StitchingProgressManager$1;,
        Lcom/android/gallery3d/app/StitchingProgressManager$RemoveFailedStitches;,
        Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterable;,
        Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;,
        Lcom/android/gallery3d/app/StitchingProgressManager$ProgressCompleteCallback;,
        Lcom/android/gallery3d/app/StitchingProgressManager$UpdateProgressCallback;,
        Lcom/android/gallery3d/app/StitchingProgressManager$AddItemCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/gallery3d/app/StitchingChangeListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/gallery3d/app/StitchingProgressManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/StitchingProgressManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 4
    .param p1, "app"    # Lcom/android/gallery3d/app/GalleryApp;

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/android/gallery3d/app/StitchingProgressManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 187
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/StitchingProgressManager;->mItems:Ljava/util/HashMap;

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/StitchingProgressManager;->mListenerRefs:Ljava/util/ArrayList;

    .line 189
    iget-object v1, p0, Lcom/android/gallery3d/app/StitchingProgressManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->getStitchingServiceManager(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    move-result-object v0

    .line 191
    .local v0, "stitchingServiceManager":Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;
    new-instance v1, Lcom/android/gallery3d/app/StitchingProgressManager$ProgressCompleteCallback;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/app/StitchingProgressManager$ProgressCompleteCallback;-><init>(Lcom/android/gallery3d/app/StitchingProgressManager;Lcom/android/gallery3d/app/StitchingProgressManager$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->addStitchingResultCallback(Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingResultCallback;)V

    .line 192
    new-instance v1, Lcom/android/gallery3d/app/StitchingProgressManager$AddItemCallback;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/app/StitchingProgressManager$AddItemCallback;-><init>(Lcom/android/gallery3d/app/StitchingProgressManager;Lcom/android/gallery3d/app/StitchingProgressManager$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->addStitchingQueuedCallback(Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingQueuedCallback;)V

    .line 193
    new-instance v1, Lcom/android/gallery3d/app/StitchingProgressManager$UpdateProgressCallback;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/app/StitchingProgressManager$UpdateProgressCallback;-><init>(Lcom/android/gallery3d/app/StitchingProgressManager;Lcom/android/gallery3d/app/StitchingProgressManager$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->setStitchingProgressCallback(Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$ProgressUpdateCallback;)V

    .line 194
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/gallery3d/app/StitchingProgressManager$RemoveFailedStitches;

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/StitchingProgressManager$RemoveFailedStitches;-><init>(Lcom/android/gallery3d/app/StitchingProgressManager;Lcom/android/gallery3d/app/StitchingProgressManager$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/StitchingProgressManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/StitchingProgressManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/app/StitchingProgressManager;->mItems:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/StitchingProgressManager;)Lcom/android/gallery3d/app/GalleryApp;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/StitchingProgressManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/app/StitchingProgressManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/StitchingProgressManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/StitchingProgressManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/app/StitchingProgressManager;->mListenerRefs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/StitchingProgressManager;)Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterable;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/StitchingProgressManager;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/gallery3d/app/StitchingProgressManager;->getListeners()Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/gallery3d/app/StitchingProgressManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private findListener(Lcom/android/gallery3d/app/StitchingChangeListener;)I
    .locals 4
    .param p1, "listener"    # Lcom/android/gallery3d/app/StitchingChangeListener;

    .prologue
    .line 198
    const/4 v1, -0x1

    .line 199
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/StitchingProgressManager;->mListenerRefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/android/gallery3d/app/StitchingProgressManager;->mListenerRefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/StitchingChangeListener;

    .line 201
    .local v2, "l":Lcom/android/gallery3d/app/StitchingChangeListener;
    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_1

    .line 202
    move v1, v0

    .line 206
    .end local v2    # "l":Lcom/android/gallery3d/app/StitchingChangeListener;
    :cond_0
    return v1

    .line 199
    .restart local v2    # "l":Lcom/android/gallery3d/app/StitchingChangeListener;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getListeners()Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterable;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterable;-><init>(Lcom/android/gallery3d/app/StitchingProgressManager;Lcom/android/gallery3d/app/StitchingProgressManager$1;)V

    return-object v0
.end method


# virtual methods
.method public addChangeListener(Lcom/android/gallery3d/app/StitchingChangeListener;)V
    .locals 3
    .param p1, "l"    # Lcom/android/gallery3d/app/StitchingChangeListener;

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/gallery3d/app/StitchingProgressManager;->mListenerRefs:Ljava/util/ArrayList;

    monitor-enter v1

    .line 211
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/StitchingProgressManager;->findListener(Lcom/android/gallery3d/app/StitchingChangeListener;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/app/StitchingProgressManager;->mListenerRefs:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    monitor-exit v1

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearCachedThumbnails(Landroid/net/Uri;)V
    .locals 4
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 238
    iget-object v3, p0, Lcom/android/gallery3d/app/StitchingProgressManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 239
    .local v1, "dataManager":Lcom/android/gallery3d/data/DataManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 240
    .local v2, "path":Lcom/android/gallery3d/data/Path;
    iget-object v3, p0, Lcom/android/gallery3d/app/StitchingProgressManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/android/gallery3d/data/ImageCacheService;

    move-result-object v0

    .line 241
    .local v0, "cacheService":Lcom/android/gallery3d/data/ImageCacheService;
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/ImageCacheService;->clearImageData(Lcom/android/gallery3d/data/Path;I)V

    .line 242
    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/ImageCacheService;->clearImageData(Lcom/android/gallery3d/data/Path;I)V

    .line 243
    return-void
.end method

.method public getProgress(Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/gallery3d/app/StitchingProgressManager;->mItems:Ljava/util/HashMap;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/StitchingProgressManager;->mItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    monitor-exit v1

    return-object v0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
