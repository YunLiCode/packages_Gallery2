.class Lcom/android/gallery3d/app/StitchingProgressManager$ProgressCompleteCallback;
.super Ljava/lang/Object;
.source "StitchingProgressManager.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/StitchingProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressCompleteCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/StitchingProgressManager;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/StitchingProgressManager;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ProgressCompleteCallback;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/StitchingProgressManager;Lcom/android/gallery3d/app/StitchingProgressManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/app/StitchingProgressManager;
    .param p2, "x1"    # Lcom/android/gallery3d/app/StitchingProgressManager$1;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/StitchingProgressManager$ProgressCompleteCallback;-><init>(Lcom/android/gallery3d/app/StitchingProgressManager;)V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 98
    if-nez p2, :cond_0

    .line 121
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ProgressCompleteCallback;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    # getter for: Lcom/android/gallery3d/app/StitchingProgressManager;->mItems:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$000(Lcom/android/gallery3d/app/StitchingProgressManager;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 102
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ProgressCompleteCallback;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    # getter for: Lcom/android/gallery3d/app/StitchingProgressManager;->mItems:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$000(Lcom/android/gallery3d/app/StitchingProgressManager;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 103
    .local v0, "currentProgress":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 104
    monitor-exit v5

    goto :goto_0

    .line 120
    .end local v0    # "currentProgress":Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 106
    .restart local v0    # "currentProgress":Ljava/lang/Integer;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ProgressCompleteCallback;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    # getter for: Lcom/android/gallery3d/app/StitchingProgressManager;->mItems:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$000(Lcom/android/gallery3d/app/StitchingProgressManager;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v1, Lcom/google/android/apps/lightcycle/StitchingProgressDatabase;

    iget-object v4, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ProgressCompleteCallback;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    # getter for: Lcom/android/gallery3d/app/StitchingProgressManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v4}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$100(Lcom/android/gallery3d/app/StitchingProgressManager;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/android/apps/lightcycle/StitchingProgressDatabase;-><init>(Landroid/content/Context;)V

    .line 109
    .local v1, "db":Lcom/google/android/apps/lightcycle/StitchingProgressDatabase;
    invoke-virtual {v1, p2}, Lcom/google/android/apps/lightcycle/StitchingProgressDatabase;->removeStitchingUri(Landroid/net/Uri;)V

    .line 110
    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/StitchingProgressDatabase;->close()V

    .line 112
    iget-object v4, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ProgressCompleteCallback;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    invoke-virtual {v4, p2}, Lcom/android/gallery3d/app/StitchingProgressManager;->clearCachedThumbnails(Landroid/net/Uri;)V

    .line 114
    iget-object v4, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ProgressCompleteCallback;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    # getter for: Lcom/android/gallery3d/app/StitchingProgressManager;->mListenerRefs:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$200(Lcom/android/gallery3d/app/StitchingProgressManager;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    iget-object v4, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ProgressCompleteCallback;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    # invokes: Lcom/android/gallery3d/app/StitchingProgressManager;->getListeners()Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterable;
    invoke-static {v4}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$300(Lcom/android/gallery3d/app/StitchingProgressManager;)Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/app/StitchingChangeListener;

    .line 116
    .local v3, "l":Lcom/android/gallery3d/app/StitchingChangeListener;
    invoke-interface {v3, p2}, Lcom/android/gallery3d/app/StitchingChangeListener;->onStitchingResult(Landroid/net/Uri;)V

    goto :goto_1

    .line 118
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "l":Lcom/android/gallery3d/app/StitchingChangeListener;
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    :try_start_5
    iget-object v4, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ProgressCompleteCallback;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    # getter for: Lcom/android/gallery3d/app/StitchingProgressManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v4}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$100(Lcom/android/gallery3d/app/StitchingProgressManager;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 120
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method
