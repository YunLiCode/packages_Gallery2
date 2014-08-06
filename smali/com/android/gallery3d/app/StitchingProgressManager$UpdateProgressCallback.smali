.class Lcom/android/gallery3d/app/StitchingProgressManager$UpdateProgressCallback;
.super Ljava/lang/Object;
.source "StitchingProgressManager.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$ProgressUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/StitchingProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateProgressCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/StitchingProgressManager;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/StitchingProgressManager;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/gallery3d/app/StitchingProgressManager$UpdateProgressCallback;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/StitchingProgressManager;Lcom/android/gallery3d/app/StitchingProgressManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/app/StitchingProgressManager;
    .param p2, "x1"    # Lcom/android/gallery3d/app/StitchingProgressManager$1;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/StitchingProgressManager$UpdateProgressCallback;-><init>(Lcom/android/gallery3d/app/StitchingProgressManager;)V

    return-void
.end method


# virtual methods
.method public onProgress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "progress"    # I

    .prologue
    .line 75
    if-nez p2, :cond_0

    .line 92
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/StitchingProgressManager$UpdateProgressCallback;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    # getter for: Lcom/android/gallery3d/app/StitchingProgressManager;->mItems:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$000(Lcom/android/gallery3d/app/StitchingProgressManager;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 79
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/app/StitchingProgressManager$UpdateProgressCallback;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    # getter for: Lcom/android/gallery3d/app/StitchingProgressManager;->mItems:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$000(Lcom/android/gallery3d/app/StitchingProgressManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 80
    .local v0, "currentProgress":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 81
    monitor-exit v4

    goto :goto_0

    .line 91
    .end local v0    # "currentProgress":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 84
    .restart local v0    # "currentProgress":Ljava/lang/Integer;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/gallery3d/app/StitchingProgressManager$UpdateProgressCallback;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    # getter for: Lcom/android/gallery3d/app/StitchingProgressManager;->mItems:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$000(Lcom/android/gallery3d/app/StitchingProgressManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v3, p0, Lcom/android/gallery3d/app/StitchingProgressManager$UpdateProgressCallback;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    # getter for: Lcom/android/gallery3d/app/StitchingProgressManager;->mListenerRefs:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$200(Lcom/android/gallery3d/app/StitchingProgressManager;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    iget-object v3, p0, Lcom/android/gallery3d/app/StitchingProgressManager$UpdateProgressCallback;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    # invokes: Lcom/android/gallery3d/app/StitchingProgressManager;->getListeners()Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterable;
    invoke-static {v3}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$300(Lcom/android/gallery3d/app/StitchingProgressManager;)Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/StitchingChangeListener;

    .line 88
    .local v2, "l":Lcom/android/gallery3d/app/StitchingChangeListener;
    invoke-interface {v2, p2, p3}, Lcom/android/gallery3d/app/StitchingChangeListener;->onStitchingProgress(Landroid/net/Uri;I)V

    goto :goto_1

    .line 90
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "l":Lcom/android/gallery3d/app/StitchingChangeListener;
    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 91
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method
