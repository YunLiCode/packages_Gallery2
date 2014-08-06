.class Lcom/google/android/picasasync/UploadsManager$ManualUploadTaskProvider;
.super Ljava/lang/Object;
.source "UploadsManager.java"

# interfaces
.implements Lcom/google/android/picasasync/SyncTaskProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/UploadsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManualUploadTaskProvider"
.end annotation


# instance fields
.field private final mTypePrefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/picasasync/UploadsManager;


# direct methods
.method public constructor <init>(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "typePrefix"    # Ljava/lang/String;

    .prologue
    .line 1196
    iput-object p1, p0, Lcom/google/android/picasasync/UploadsManager$ManualUploadTaskProvider;->this$0:Lcom/google/android/picasasync/UploadsManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1197
    iput-object p2, p0, Lcom/google/android/picasasync/UploadsManager$ManualUploadTaskProvider;->mTypePrefix:Ljava/lang/String;

    .line 1198
    return-void
.end method


# virtual methods
.method public collectTasks(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/picasasync/SyncTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1213
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/picasasync/SyncTask;>;"
    # invokes: Lcom/google/android/picasasync/UploadsManager;->isExternalStorageMounted()Z
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$2400()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$ManualUploadTaskProvider;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # getter for: Lcom/google/android/picasasync/UploadsManager;->mIsExternalStorageFsIdReady:Z
    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->access$2500(Lcom/google/android/picasasync/UploadsManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1219
    :cond_0
    :goto_0
    return-void

    .line 1215
    :cond_1
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$ManualUploadTaskProvider;->this$0:Lcom/google/android/picasasync/UploadsManager;

    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$ManualUploadTaskProvider;->mTypePrefix:Ljava/lang/String;

    # invokes: Lcom/google/android/picasasync/UploadsManager;->getNextManualUploadFromDb(Ljava/lang/String;)Lcom/google/android/picasasync/UploadTaskEntry;
    invoke-static {v1, v2}, Lcom/google/android/picasasync/UploadsManager;->access$1600(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v0

    .line 1216
    .local v0, "task":Lcom/google/android/picasasync/UploadTaskEntry;
    if-eqz v0, :cond_0

    .line 1217
    new-instance v1, Lcom/google/android/picasasync/UploadsManager$UploadTask;

    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$ManualUploadTaskProvider;->this$0:Lcom/google/android/picasasync/UploadsManager;

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasasync/UploadsManager$ManualUploadTaskProvider;->mTypePrefix:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/picasasync/UploadsManager$UploadTask;-><init>(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onSyncStart()V
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$ManualUploadTaskProvider;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # getter for: Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->access$1500(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1203
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$ManualUploadTaskProvider;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # getter for: Lcom/google/android/picasasync/UploadsManager;->mSyncedAccountAlbumPairs:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->access$2300(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1204
    return-void
.end method

.method public resetSyncStates()V
    .locals 0

    .prologue
    .line 1209
    return-void
.end method
