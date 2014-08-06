.class Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;
.super Ljava/lang/Thread;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mIsLoading:Z

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1010
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1011
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    .line 1012
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 1014
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/app/PhotoDataAdapter;
    .param p2, "x1"    # Lcom/android/gallery3d/app/PhotoDataAdapter$1;

    .prologue
    .line 1010
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    return-void
.end method

.method private findCurrentMediaItem(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)Lcom/android/gallery3d/data/MediaItem;
    .locals 4
    .param p1, "info"    # Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    .prologue
    .line 1103
    iget-object v1, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1104
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    iget v2, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    iget v3, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int v0, v2, v3

    .line 1105
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method private findIndexOfPathInCache(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/android/gallery3d/data/Path;)I
    .locals 5
    .param p1, "info"    # Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    .param p2, "path"    # Lcom/android/gallery3d/data/Path;

    .prologue
    .line 1123
    iget-object v2, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1124
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1125
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaItem;

    .line 1126
    .local v1, "item":Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    if-ne v4, p2, :cond_0

    .line 1127
    iget v4, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    add-int/2addr v4, v0

    .line 1130
    .end local v1    # "item":Lcom/android/gallery3d/data/MediaItem;
    :goto_1
    return v4

    .line 1124
    .restart local v1    # "item":Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1130
    .end local v1    # "item":Lcom/android/gallery3d/data/MediaItem;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private findIndexOfTarget(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)I
    .locals 5
    .param p1, "info"    # Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    .prologue
    .line 1109
    iget-object v2, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/android/gallery3d/data/Path;

    if-nez v2, :cond_1

    iget v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1119
    :cond_0
    :goto_0
    return v0

    .line 1110
    :cond_1
    iget-object v1, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1113
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    if-eqz v1, :cond_2

    .line 1114
    iget-object v2, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/android/gallery3d/data/Path;

    invoke-direct {p0, p1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOfPathInCache(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/android/gallery3d/data/Path;)I

    move-result v0

    .line 1115
    .local v0, "i":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1119
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2600(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    iget-object v3, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/android/gallery3d/data/Path;

    iget v4, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/data/MediaSet;->getIndexOfItem(Lcom/android/gallery3d/data/Path;I)I

    move-result v0

    goto :goto_0
.end method

.method private updateLoading(Z)V
    .locals 2
    .param p1, "loading"    # Z

    .prologue
    .line 1017
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 1020
    :goto_0
    return-void

    .line 1018
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    .line 1019
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .locals 1

    .prologue
    .line 1093
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 1094
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    monitor-exit p0

    return-void

    .line 1093
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 1024
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    if-eqz v6, :cond_9

    .line 1025
    monitor-enter p0

    .line 1026
    :try_start_0
    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    if-eqz v6, :cond_1

    .line 1027
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 1028
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 1029
    monitor-exit p0

    goto :goto_0

    .line 1031
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1032
    iput-boolean v11, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 1033
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {v7, v8, v12}, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    # invokes: Lcom/android/gallery3d/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2500(Lcom/android/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    .line 1034
    .local v2, "info":Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    invoke-direct {p0, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 1035
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2600(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v4

    .line 1036
    .local v4, "version":J
    iget-wide v6, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->version:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_2

    .line 1037
    iput-boolean v9, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    .line 1038
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2600(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    iput v6, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    .line 1040
    :cond_2
    iget-boolean v6, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    if-eqz v6, :cond_0

    .line 1041
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2600(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    iget v7, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1044
    const/4 v1, -0x1

    .line 1047
    .local v1, "index":I
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1048
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOfPathInCache(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/android/gallery3d/data/Path;)I

    move-result v1

    .line 1049
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    # setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v6, v12}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2702(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    .line 1053
    :cond_3
    if-ne v1, v10, :cond_4

    .line 1054
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->findCurrentMediaItem(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v3

    .line 1055
    .local v3, "item":Lcom/android/gallery3d/data/MediaItem;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    iget-object v7, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/android/gallery3d/data/Path;

    if-ne v6, v7, :cond_8

    .line 1056
    iget v1, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1069
    .end local v3    # "item":Lcom/android/gallery3d/data/MediaItem;
    :cond_4
    :goto_1
    if-ne v1, v10, :cond_6

    .line 1070
    iget v1, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1071
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v0

    .line 1072
    .local v0, "focusHintDirection":I
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2900(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-ne v1, v6, :cond_5

    .line 1073
    const/4 v0, 0x0

    .line 1075
    :cond_5
    if-ne v0, v9, :cond_6

    if-lez v1, :cond_6

    .line 1077
    add-int/lit8 v1, v1, -0x1

    .line 1082
    .end local v0    # "focusHintDirection":I
    :cond_6
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    if-lez v6, :cond_7

    .line 1083
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    if-lt v1, v6, :cond_7

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 1086
    :cond_7
    iput v1, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1088
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {v7, v8, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)V

    # invokes: Lcom/android/gallery3d/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2500(Lcom/android/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1058
    .restart local v3    # "item":Lcom/android/gallery3d/data/MediaItem;
    :cond_8
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOfTarget(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)I

    move-result v1

    goto :goto_1

    .line 1090
    .end local v1    # "index":I
    .end local v2    # "info":Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    .end local v3    # "item":Lcom/android/gallery3d/data/MediaItem;
    .end local v4    # "version":J
    :cond_9
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 1098
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    .line 1099
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    monitor-exit p0

    return-void

    .line 1098
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
