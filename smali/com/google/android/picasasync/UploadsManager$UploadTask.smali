.class Lcom/google/android/picasasync/UploadsManager$UploadTask;
.super Lcom/google/android/picasasync/SyncTask;
.source "UploadsManager.java"

# interfaces
.implements Lcom/google/android/picasasync/Uploader$UploadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/UploadsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadTask"
.end annotation


# instance fields
.field protected mCurrentTask:Lcom/google/android/picasasync/UploadTaskEntry;

.field protected volatile mRunning:Z

.field protected mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

.field private final mTypePrefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/picasasync/UploadsManager;


# direct methods
.method protected constructor <init>(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "typePrefix"    # Ljava/lang/String;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    .line 818
    invoke-direct {p0, p2}, Lcom/google/android/picasasync/SyncTask;-><init>(Ljava/lang/String;)V

    .line 811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mRunning:Z

    .line 819
    iput-object p3, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mTypePrefix:Ljava/lang/String;

    .line 820
    return-void
.end method

.method private onIncompleteUpload(Lcom/google/android/picasasync/UploadTaskEntry;Z)Z
    .locals 5
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;
    .param p2, "gotIoException"    # Z

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x1

    .line 932
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v1

    .line 933
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 951
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getState()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 952
    # getter for: Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong state after upload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v0, 0x5

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong state after upload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(ILjava/lang/Throwable;)V

    .line 960
    :cond_0
    :goto_0
    const/4 v0, 0x0

    monitor-exit v1

    :goto_1
    return v0

    .line 935
    :pswitch_1
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V

    .line 936
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # invokes: Lcom/google/android/picasasync/UploadsManager;->updateTaskStateAndProgressInDb(Lcom/google/android/picasasync/UploadTaskEntry;)V
    invoke-static {v2, p1}, Lcom/google/android/picasasync/UploadsManager;->access$1400(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;)V

    .line 937
    invoke-virtual {p0, p1, p2}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->onStalled(Lcom/google/android/picasasync/UploadTaskEntry;Z)V

    .line 938
    monitor-exit v1

    goto :goto_1

    .line 961
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 940
    :pswitch_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # getter for: Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/google/android/picasasync/UploadsManager;->access$1500(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 941
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->onUnauthorized(Lcom/google/android/picasasync/UploadTaskEntry;)V

    .line 942
    monitor-exit v1

    goto :goto_1

    .line 944
    :pswitch_3
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # getter for: Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/google/android/picasasync/UploadsManager;->access$1500(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 945
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->onQuotaReached(Lcom/google/android/picasasync/UploadTaskEntry;)V

    .line 946
    monitor-exit v1

    goto :goto_1

    .line 948
    :pswitch_4
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 933
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cancelSync()V
    .locals 2

    .prologue
    .line 1000
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v1

    .line 1001
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mRunning:Z

    .line 1002
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->stopCurrentTask(I)V

    .line 1003
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->stopSync()V

    .line 1004
    :cond_0
    monitor-exit v1

    .line 1005
    return-void

    .line 1004
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelTask(J)Z
    .locals 4
    .param p1, "taskId"    # J

    .prologue
    .line 1049
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v1

    .line 1050
    :try_start_0
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mCurrentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mCurrentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    iget-wide v2, v0, Lcom/android/gallery3d/common/Entry;->id:J

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 1052
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->stopCurrentTask(I)V

    .line 1053
    const/4 v0, 0x1

    monitor-exit v1

    .line 1055
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 1056
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getNextUpload()Lcom/google/android/picasasync/UploadTaskEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 966
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mTypePrefix:Ljava/lang/String;

    # invokes: Lcom/google/android/picasasync/UploadsManager;->getNextManualUploadFromDb(Ljava/lang/String;)Lcom/google/android/picasasync/UploadTaskEntry;
    invoke-static {v0, v1}, Lcom/google/android/picasasync/UploadsManager;->access$1600(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v0

    return-object v0
.end method

.method public isBackgroundSync()Z
    .locals 1

    .prologue
    .line 1043
    const/4 v0, 0x0

    return v0
.end method

.method public isSyncOnBattery()Z
    .locals 1

    .prologue
    .line 1028
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncOnExternalStorageOnly()Z
    .locals 1

    .prologue
    .line 1033
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncOnRoaming()Z
    .locals 1

    .prologue
    .line 1022
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncOnWifiOnly()Z
    .locals 1

    .prologue
    .line 1016
    const/4 v0, 0x0

    return v0
.end method

.method public isUploadedBefore(Lcom/google/android/picasasync/UploadTaskEntry;)Z
    .locals 14
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1092
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/common/Fingerprint;->hashCode()I

    move-result v10

    .line 1093
    .local v10, "hash":I
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # getter for: Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;
    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->access$2000(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1094
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1096
    :try_start_0
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # getter for: Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;
    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->access$2000(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getAlbumEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/picasasync/AlbumEntry;

    move-result-object v8

    .line 1100
    .local v8, "album":Lcom/google/android/picasasync/AlbumEntry;
    if-eqz v8, :cond_0

    const-string v1, "Buzz"

    iget-object v2, v8, Lcom/google/android/picasasync/AlbumEntry;->albumType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_1

    .line 1119
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v1, v12

    :goto_0
    return v1

    .line 1102
    :cond_1
    :try_start_1
    # getter for: Lcom/google/android/picasasync/UploadsManager;->PHOTO_TABLE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$2100()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/google/android/picasasync/UploadsManager;->PROJECTION_FINGERPRINT:[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$2200()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "fingerprint_hash=? AND album_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, v8, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    .line 1106
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 1119
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v1, v12

    goto :goto_0

    .line 1108
    :cond_2
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1109
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 1110
    .local v11, "rawData":[B
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/gallery3d/common/Fingerprint;->equals([B)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 1116
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1119
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v1, v13

    goto :goto_0

    .line 1116
    .end local v11    # "rawData":[B
    :cond_3
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1119
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v1, v12

    goto :goto_0

    .line 1116
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1119
    .end local v8    # "album":Lcom/google/android/picasasync/AlbumEntry;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public onProgress(Lcom/google/android/picasasync/UploadTaskEntry;)V
    .locals 4
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;

    .prologue
    .line 1081
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v1

    .line 1082
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mRunning:Z

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # invokes: Lcom/google/android/picasasync/UploadsManager;->updateTaskStateAndProgressInDb(Lcom/google/android/picasasync/UploadTaskEntry;)V
    invoke-static {v0, p1}, Lcom/google/android/picasasync/UploadsManager;->access$1400(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;)V

    .line 1084
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    const/4 v2, 0x0

    # invokes: Lcom/google/android/picasasync/UploadsManager;->notifyManualUploadDbChanges(Z)V
    invoke-static {v0, v2}, Lcom/google/android/picasasync/UploadsManager;->access$1700(Lcom/google/android/picasasync/UploadsManager;Z)V

    .line 1085
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    # invokes: Lcom/google/android/picasasync/UploadsManager;->sendManualUploadReport(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;I)V
    invoke-static {v0, p1, v2, v3}, Lcom/google/android/picasasync/UploadsManager;->access$1800(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;I)V

    .line 1087
    :cond_0
    monitor-exit v1

    .line 1088
    return-void

    .line 1087
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onQuotaReached(Lcom/google/android/picasasync/UploadTaskEntry;)V
    .locals 3
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;

    .prologue
    .line 980
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/picasasync/UploadsManager;->notifyManualUploadDbChanges(Z)V
    invoke-static {v0, v1}, Lcom/google/android/picasasync/UploadsManager;->access$1700(Lcom/google/android/picasasync/UploadsManager;Z)V

    .line 981
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    const/4 v1, 0x0

    const/16 v2, 0x9

    # invokes: Lcom/google/android/picasasync/UploadsManager;->sendManualUploadReport(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;I)V
    invoke-static {v0, p1, v1, v2}, Lcom/google/android/picasasync/UploadsManager;->access$1800(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;I)V

    .line 982
    return-void
.end method

.method public onRejected(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 1010
    # getter for: Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manual upload rejected! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return-void
.end method

.method protected onStalled(Lcom/google/android/picasasync/UploadTaskEntry;Z)V
    .locals 3
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;
    .param p2, "gotIoException"    # Z

    .prologue
    const/4 v2, 0x0

    .line 985
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/picasasync/UploadsManager;->notifyManualUploadDbChanges(Z)V
    invoke-static {v0, v1}, Lcom/google/android/picasasync/UploadsManager;->access$1700(Lcom/google/android/picasasync/UploadsManager;Z)V

    .line 986
    if-eqz p2, :cond_1

    .line 987
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # getter for: Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->access$700(Lcom/google/android/picasasync/UploadsManager;)Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/google/android/picasasync/UploadsManager;->hasNetworkConnectivity(Landroid/content/Context;)Z
    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->access$1900(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    const/16 v1, 0xf

    # invokes: Lcom/google/android/picasasync/UploadsManager;->sendManualUploadReport(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;I)V
    invoke-static {v0, p1, v2, v1}, Lcom/google/android/picasasync/UploadsManager;->access$1800(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;I)V

    .line 996
    :goto_0
    return-void

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    const/16 v1, 0xe

    # invokes: Lcom/google/android/picasasync/UploadsManager;->sendManualUploadReport(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;I)V
    invoke-static {v0, p1, v2, v1}, Lcom/google/android/picasasync/UploadsManager;->access$1800(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;I)V

    goto :goto_0

    .line 994
    :cond_1
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    const/16 v1, 0xd

    # invokes: Lcom/google/android/picasasync/UploadsManager;->sendManualUploadReport(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;I)V
    invoke-static {v0, p1, v2, v1}, Lcom/google/android/picasasync/UploadsManager;->access$1800(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;I)V

    goto :goto_0
.end method

.method protected onTaskDone(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;)V
    .locals 3
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;
    .param p2, "result"    # Lcom/google/android/picasasync/UploadedEntry;

    .prologue
    const/4 v1, 0x1

    .line 970
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    # invokes: Lcom/google/android/picasasync/UploadsManager;->notifyManualUploadDbChanges(Z)V
    invoke-static {v2, v0}, Lcom/google/android/picasasync/UploadsManager;->access$1700(Lcom/google/android/picasasync/UploadsManager;Z)V

    .line 971
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # invokes: Lcom/google/android/picasasync/UploadsManager;->sendManualUploadReport(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;I)V
    invoke-static {v0, p1, p2, v1}, Lcom/google/android/picasasync/UploadsManager;->access$1800(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;I)V

    .line 972
    return-void

    .line 970
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onUnauthorized(Lcom/google/android/picasasync/UploadTaskEntry;)V
    .locals 3
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/picasasync/UploadsManager;->notifyManualUploadDbChanges(Z)V
    invoke-static {v0, v1}, Lcom/google/android/picasasync/UploadsManager;->access$1700(Lcom/google/android/picasasync/UploadsManager;Z)V

    .line 976
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    const/4 v1, 0x0

    const/16 v2, 0xa

    # invokes: Lcom/google/android/picasasync/UploadsManager;->sendManualUploadReport(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;I)V
    invoke-static {v0, p1, v1, v2}, Lcom/google/android/picasasync/UploadsManager;->access$1800(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;I)V

    .line 977
    return-void
.end method

.method public final performSync(Landroid/content/SyncResult;)V
    .locals 5
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 824
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v2

    .line 825
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mRunning:Z

    if-nez v1, :cond_0

    monitor-exit v2

    .line 847
    :goto_0
    return-void

    .line 828
    :cond_0
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # getter for: Lcom/google/android/picasasync/UploadsManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;
    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->access$500(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/google/android/picasasync/PicasaSyncHelper;->createSyncContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    .line 829
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iget-object v3, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->setAccount(Ljava/lang/String;)Z

    .line 831
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # invokes: Lcom/google/android/picasasync/UploadsManager;->setCurrentUploadTask(Lcom/google/android/picasasync/UploadsManager$UploadTask;)V
    invoke-static {v1, p0}, Lcom/google/android/picasasync/UploadsManager;->access$600(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadsManager$UploadTask;)V

    .line 832
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v0

    .line 835
    .local v0, "statsId":I
    const/4 v1, 0x5

    invoke-static {v1}, Landroid/support/v4/net/TrafficStatsCompat;->setThreadStatsTag(I)V

    .line 837
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->performSyncInternal(Landroid/content/SyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 839
    iput-object v4, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mCurrentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    .line 840
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # invokes: Lcom/google/android/picasasync/UploadsManager;->setCurrentUploadTask(Lcom/google/android/picasasync/UploadsManager$UploadTask;)V
    invoke-static {v1, v4}, Lcom/google/android/picasasync/UploadsManager;->access$600(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadsManager$UploadTask;)V

    .line 841
    iput-object v4, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    .line 843
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 845
    const-string v1, "picasa.upload"

    invoke-static {v0, v1}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    goto :goto_0

    .line 832
    .end local v0    # "statsId":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 839
    .restart local v0    # "statsId":I
    :catchall_1
    move-exception v1

    iput-object v4, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mCurrentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    .line 840
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # invokes: Lcom/google/android/picasasync/UploadsManager;->setCurrentUploadTask(Lcom/google/android/picasasync/UploadsManager$UploadTask;)V
    invoke-static {v2, v4}, Lcom/google/android/picasasync/UploadsManager;->access$600(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadsManager$UploadTask;)V

    .line 841
    iput-object v4, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    .line 843
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 845
    const-string v2, "picasa.upload"

    invoke-static {v0, v2}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    throw v1
.end method

.method protected performSyncInternal(Landroid/content/SyncResult;)V
    .locals 13
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    iget-object v4, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 851
    .local v4, "syncStats":Landroid/content/SyncStats;
    :goto_0
    iget-boolean v8, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mRunning:Z

    if-eqz v8, :cond_0

    .line 854
    const/4 v6, 0x0

    .line 855
    .local v6, "task":Lcom/google/android/picasasync/UploadTaskEntry;
    iget-object v9, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v9

    .line 856
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->getNextUpload()Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mCurrentTask:Lcom/google/android/picasasync/UploadTaskEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    .end local v6    # "task":Lcom/google/android/picasasync/UploadTaskEntry;
    .local v7, "task":Lcom/google/android/picasasync/UploadTaskEntry;
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 858
    if-nez v7, :cond_1

    .line 928
    .end local v7    # "task":Lcom/google/android/picasasync/UploadTaskEntry;
    :cond_0
    :goto_1
    return-void

    .line 857
    .restart local v6    # "task":Lcom/google/android/picasasync/UploadTaskEntry;
    :catchall_0
    move-exception v8

    :goto_2
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 860
    .end local v6    # "task":Lcom/google/android/picasasync/UploadTaskEntry;
    .restart local v7    # "task":Lcom/google/android/picasasync/UploadTaskEntry;
    :cond_1
    invoke-virtual {v7}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 861
    # getter for: Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "*** change account from %s to %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v7}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 870
    :cond_2
    invoke-virtual {v7}, Lcom/google/android/picasasync/UploadTaskEntry;->isStartedYet()Z

    move-result v8

    if-nez v8, :cond_3

    .line 871
    invoke-virtual {v7}, Lcom/google/android/picasasync/UploadTaskEntry;->setUploadedTime()V

    .line 875
    :try_start_3
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # getter for: Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/google/android/picasasync/UploadsManager;->access$700(Lcom/google/android/picasasync/UploadsManager;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/google/android/picasasync/PicasaUploadHelper;->fillRequest(Landroid/content/Context;Lcom/google/android/picasasync/UploadTaskEntry;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 890
    :cond_3
    iget-object v8, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, p1, v8, v9}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->syncAlbum(Landroid/content/SyncResult;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const/4 v3, 0x0

    .line 894
    .local v3, "result":Lcom/google/android/picasasync/UploadedEntry;
    invoke-virtual {p0, v7}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->isUploadedBefore(Lcom/google/android/picasasync/UploadTaskEntry;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 895
    # getter for: Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "duplicate upload: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    const/16 v9, 0xc

    # invokes: Lcom/google/android/picasasync/UploadsManager;->setState(Lcom/google/android/picasasync/UploadTaskEntry;I)V
    invoke-static {v8, v7, v9}, Lcom/google/android/picasasync/UploadsManager;->access$1100(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;I)V

    .line 923
    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    iget-wide v9, v7, Lcom/android/gallery3d/common/Entry;->id:J

    # invokes: Lcom/google/android/picasasync/UploadsManager;->removeTaskFromDb(J)Z
    invoke-static {v8, v9, v10}, Lcom/google/android/picasasync/UploadsManager;->access$900(Lcom/google/android/picasasync/UploadsManager;J)Z

    .line 924
    if-nez v3, :cond_5

    new-instance v3, Lcom/google/android/picasasync/UploadedEntry;

    .end local v3    # "result":Lcom/google/android/picasasync/UploadedEntry;
    invoke-direct {v3, v7}, Lcom/google/android/picasasync/UploadedEntry;-><init>(Lcom/google/android/picasasync/UploadTaskEntry;)V

    .line 925
    .restart local v3    # "result":Lcom/google/android/picasasync/UploadedEntry;
    :cond_5
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # invokes: Lcom/google/android/picasasync/UploadsManager;->recordResult(Lcom/google/android/picasasync/UploadedEntry;)Lcom/google/android/picasasync/UploadedEntry;
    invoke-static {v8, v3}, Lcom/google/android/picasasync/UploadsManager;->access$1000(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadedEntry;)Lcom/google/android/picasasync/UploadedEntry;

    .line 926
    invoke-virtual {p0, v7, v3}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->onTaskDone(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;)V

    goto/16 :goto_0

    .line 876
    .end local v3    # "result":Lcom/google/android/picasasync/UploadedEntry;
    :catch_0
    move-exception v5

    .line 877
    .local v5, "t":Ljava/lang/Throwable;
    # getter for: Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to process the request: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    const/16 v9, 0xb

    # invokes: Lcom/google/android/picasasync/UploadsManager;->setState(Lcom/google/android/picasasync/UploadTaskEntry;ILjava/lang/Throwable;)V
    invoke-static {v8, v7, v9, v5}, Lcom/google/android/picasasync/UploadsManager;->access$800(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;ILjava/lang/Throwable;)V

    .line 879
    iget-wide v8, v4, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 882
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    iget-wide v9, v7, Lcom/android/gallery3d/common/Entry;->id:J

    # invokes: Lcom/google/android/picasasync/UploadsManager;->removeTaskFromDb(J)Z
    invoke-static {v8, v9, v10}, Lcom/google/android/picasasync/UploadsManager;->access$900(Lcom/google/android/picasasync/UploadsManager;J)Z

    .line 883
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    new-instance v9, Lcom/google/android/picasasync/UploadedEntry;

    invoke-direct {v9, v7}, Lcom/google/android/picasasync/UploadedEntry;-><init>(Lcom/google/android/picasasync/UploadTaskEntry;)V

    # invokes: Lcom/google/android/picasasync/UploadsManager;->recordResult(Lcom/google/android/picasasync/UploadedEntry;)Lcom/google/android/picasasync/UploadedEntry;
    invoke-static {v8, v9}, Lcom/google/android/picasasync/UploadsManager;->access$1000(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadedEntry;)Lcom/google/android/picasasync/UploadedEntry;

    move-result-object v3

    .line 884
    .restart local v3    # "result":Lcom/google/android/picasasync/UploadedEntry;
    invoke-virtual {p0, v7, v3}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->onTaskDone(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;)V

    goto/16 :goto_0

    .line 898
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_6
    # getter for: Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "upload "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-wide v1, v4, Landroid/content/SyncStats;->numIoExceptions:J

    .line 900
    .local v1, "ioeCount":J
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # invokes: Lcom/google/android/picasasync/UploadsManager;->doUpload(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/Uploader$UploadProgressListener;Landroid/content/SyncResult;)Lcom/google/android/picasasync/UploadedEntry;
    invoke-static {v8, v7, p0, p1}, Lcom/google/android/picasasync/UploadsManager;->access$1200(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/Uploader$UploadProgressListener;Landroid/content/SyncResult;)Lcom/google/android/picasasync/UploadedEntry;

    move-result-object v3

    .line 901
    if-nez v3, :cond_8

    .line 902
    iget-wide v8, v4, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v8, v8, v1

    if-lez v8, :cond_7

    const/4 v0, 0x1

    .line 903
    .local v0, "gotIoException":Z
    :goto_4
    invoke-direct {p0, v7, v0}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->onIncompleteUpload(Lcom/google/android/picasasync/UploadTaskEntry;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_1

    .line 902
    .end local v0    # "gotIoException":Z
    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    .line 907
    :cond_8
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    const/4 v9, 0x4

    # invokes: Lcom/google/android/picasasync/UploadsManager;->setState(Lcom/google/android/picasasync/UploadTaskEntry;I)V
    invoke-static {v8, v7, v9}, Lcom/google/android/picasasync/UploadsManager;->access$1100(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;I)V

    .line 908
    iget-object v8, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v9, v8, Landroid/content/SyncStats;->numEntries:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v8, Landroid/content/SyncStats;->numEntries:J

    .line 909
    iget-object v8, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v9, v8, Landroid/content/SyncStats;->numInserts:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v8, Landroid/content/SyncStats;->numInserts:J

    .line 911
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # invokes: Lcom/google/android/picasasync/UploadsManager;->writeToPhotoTable(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;Landroid/content/SyncResult;)Z
    invoke-static {v8, v7, v3, p1}, Lcom/google/android/picasasync/UploadsManager;->access$1300(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;Landroid/content/SyncResult;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 914
    # getter for: Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "sync album now: %s, %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v7}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v7}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v8, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, p1, v8, v9}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->syncAlbum(Landroid/content/SyncResult;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 857
    .end local v1    # "ioeCount":J
    .end local v3    # "result":Lcom/google/android/picasasync/UploadedEntry;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "task":Lcom/google/android/picasasync/UploadTaskEntry;
    .restart local v6    # "task":Lcom/google/android/picasasync/UploadTaskEntry;
    goto/16 :goto_2
.end method

.method protected stopCurrentTask(I)V
    .locals 4
    .param p1, "stopState"    # I

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mCurrentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    .line 1066
    .local v0, "task":Lcom/google/android/picasasync/UploadTaskEntry;
    # getter for: Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopCurrentTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    if-nez v0, :cond_0

    .line 1076
    :goto_0
    return-void

    .line 1068
    :cond_0
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v2

    .line 1069
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadTaskEntry;->isCancellable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1070
    invoke-virtual {v0, p1}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V

    .line 1073
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1075
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected syncAlbum(Landroid/content/SyncResult;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "albumId"    # Ljava/lang/String;

    .prologue
    .line 1126
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1127
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    .line 1128
    .local v4, "syncContext":Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;
    iget-object v7, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # getter for: Lcom/google/android/picasasync/UploadsManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;
    invoke-static {v7}, Lcom/google/android/picasasync/UploadsManager;->access$500(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v5

    .line 1129
    .local v5, "syncHelper":Lcom/google/android/picasasync/PicasaSyncHelper;
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v8

    .line 1131
    :try_start_0
    iget-object v7, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # getter for: Lcom/google/android/picasasync/UploadsManager;->mSyncedAccountAlbumPairs:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/google/android/picasasync/UploadsManager;->access$2300(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    monitor-exit v8

    .line 1187
    :goto_0
    return-void

    .line 1132
    :cond_0
    iget-boolean v7, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mRunning:Z

    if-nez v7, :cond_1

    monitor-exit v8

    goto :goto_0

    .line 1133
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1134
    # getter for: Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v8, "sync album for dedup: %s/%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v7, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # getter for: Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;
    invoke-static {v7}, Lcom/google/android/picasasync/UploadsManager;->access$2000(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getAlbumEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/picasasync/AlbumEntry;

    move-result-object v0

    .line 1139
    .local v0, "album":Lcom/google/android/picasasync/AlbumEntry;
    iget-object v7, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v7, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1140
    .local v1, "authExceptionCount":J
    if-nez v0, :cond_2

    .line 1142
    # getter for: Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sync albumlist to get ID for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-virtual {v5, p2}, Lcom/google/android/picasasync/PicasaSyncHelper;->findUser(Ljava/lang/String;)Lcom/google/android/picasasync/UserEntry;

    move-result-object v6

    .line 1144
    .local v6, "userEntry":Lcom/google/android/picasasync/UserEntry;
    if-eqz v6, :cond_4

    .line 1145
    invoke-virtual {v5, v4, v6}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncAlbumsForUser(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V

    .line 1146
    iget-object v7, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # getter for: Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;
    invoke-static {v7}, Lcom/google/android/picasasync/UploadsManager;->access$2000(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getAlbumEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/picasasync/AlbumEntry;

    move-result-object v0

    .line 1154
    .end local v6    # "userEntry":Lcom/google/android/picasasync/UserEntry;
    :cond_2
    if-eqz v0, :cond_7

    .line 1155
    const-string v7, "camera-sync"

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1156
    invoke-virtual {v5, v4, p2}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncUploadedPhotos(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Ljava/lang/String;)V

    .line 1181
    :goto_1
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v8

    .line 1182
    if-eqz v0, :cond_3

    .line 1184
    :try_start_2
    iget-object v7, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # getter for: Lcom/google/android/picasasync/UploadsManager;->mSyncedAccountAlbumPairs:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/google/android/picasasync/UploadsManager;->access$2300(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1186
    :cond_3
    monitor-exit v8

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    .line 1148
    .restart local v6    # "userEntry":Lcom/google/android/picasasync/UserEntry;
    :cond_4
    # getter for: Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no userEntry for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-virtual {p0}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->cancelSync()V

    .line 1150
    iget-object v7, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # getter for: Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/google/android/picasasync/UploadsManager;->access$1500(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1157
    .end local v6    # "userEntry":Lcom/google/android/picasasync/UserEntry;
    :cond_5
    const-string v7, "Buzz"

    iget-object v8, v0, Lcom/google/android/picasasync/AlbumEntry;->albumType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1159
    invoke-virtual {v5, v4, v0}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncPhotosForAlbum(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/AlbumEntry;)V

    goto :goto_1

    .line 1161
    :cond_6
    # getter for: Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v8, "post album; don\'t sync"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1163
    :cond_7
    iget-object v7, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v7, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v7, v1, v7

    if-gez v7, :cond_8

    .line 1164
    # getter for: Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "need authorization for picasa access: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-virtual {p0}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->cancelSync()V

    .line 1167
    iget-object v7, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # getter for: Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/google/android/picasasync/UploadsManager;->access$1500(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1171
    :cond_8
    const-string v7, "camera-sync"

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1173
    # getter for: Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "album doesn\'t exist yet: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1176
    :cond_9
    # getter for: Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "album doesn\'t exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
