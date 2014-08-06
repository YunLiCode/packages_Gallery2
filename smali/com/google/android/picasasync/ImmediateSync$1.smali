.class Lcom/google/android/picasasync/ImmediateSync$1;
.super Lcom/google/android/picasasync/ImmediateSync$Task;
.source "ImmediateSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/ImmediateSync;->requestSyncAlbumList(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasasync/ImmediateSync;

.field final synthetic val$accountArgs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/ImmediateSync;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/picasasync/ImmediateSync$1;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    iput-object p3, p0, Lcom/google/android/picasasync/ImmediateSync$1;->val$accountArgs:[Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/ImmediateSync$Task;-><init>(Lcom/google/android/picasasync/ImmediateSync;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doSync()I
    .locals 24

    .prologue
    .line 162
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v21

    if-nez v21, :cond_0

    .line 163
    const-string v21, "ImmediateSync"

    const-string v22, "master auto sync is off"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/16 v21, 0x0

    .line 230
    :goto_0
    return v21

    .line 167
    :cond_0
    const-string v21, "ImmediateSync.albums"

    invoke-static/range {v21 .. v21}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v16

    .line 169
    .local v16, "statsId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/picasasync/ImmediateSync$1;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    move-object/from16 v21, v0

    # getter for: Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/google/android/picasasync/ImmediateSync;->access$100(Lcom/google/android/picasasync/ImmediateSync;)Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v17

    .line 171
    .local v17, "sync":Lcom/google/android/picasasync/PicasaSyncHelper;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/picasasync/ImmediateSync$1;->val$accountArgs:[Ljava/lang/String;

    .line 172
    .local v5, "accounts":[Ljava/lang/String;
    if-nez v5, :cond_3

    .line 175
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/picasasync/PicasaSyncHelper;->getUsers()Ljava/util/ArrayList;

    move-result-object v20

    .line 176
    .local v20, "users":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/picasasync/UserEntry;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v4, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/picasasync/ImmediateSync$1;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    move-object/from16 v21, v0

    # getter for: Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/google/android/picasasync/ImmediateSync;->access$100(Lcom/google/android/picasasync/ImmediateSync;)Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v10

    .line 178
    .local v10, "facade":Lcom/google/android/picasasync/PicasaFacade;
    invoke-virtual {v10}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, "authority":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v15

    .local v15, "n":I
    :goto_1
    if-ge v11, v15, :cond_2

    .line 180
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/picasasync/UserEntry;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    .line 181
    .local v3, "account":Ljava/lang/String;
    new-instance v21, Landroid/accounts/Account;

    const-string v22, "com.google"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-static {v0, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    .line 183
    .local v8, "autoSyncEnabled":Z
    if-eqz v8, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 185
    .end local v3    # "account":Ljava/lang/String;
    .end local v8    # "autoSyncEnabled":Z
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "accounts":[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    .line 189
    .end local v4    # "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "authority":Ljava/lang/String;
    .end local v10    # "facade":Lcom/google/android/picasasync/PicasaFacade;
    .end local v11    # "i":I
    .end local v15    # "n":I
    .end local v20    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/picasasync/UserEntry;>;"
    .restart local v5    # "accounts":[Ljava/lang/String;
    :cond_3
    :try_start_0
    const-string v21, "ImmediateSync"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "sync album list:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    array-length v0, v5

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " account(s)"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v18, Landroid/content/SyncResult;

    invoke-direct/range {v18 .. v18}, Landroid/content/SyncResult;-><init>()V

    .line 191
    .local v18, "syncResult":Landroid/content/SyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/picasasync/ImmediateSync$1;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/picasasync/ImmediateSync$1;->syncInterrupted()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 193
    const/16 v21, 0x1

    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    const-string v22, "picasa.sync.metadata"

    move/from16 v0, v16

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :cond_4
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->createSyncContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/picasasync/ImmediateSync$Task;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    .line 196
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    move-object v6, v5

    .local v6, "arr$":[Ljava/lang/String;
    :try_start_3
    array-length v14, v6

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_2
    if-ge v12, v14, :cond_7

    aget-object v3, v6, v12

    .line 198
    .restart local v3    # "account":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/google/android/picasasync/PicasaSyncHelper;->findUser(Ljava/lang/String;)Lcom/google/android/picasasync/UserEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v19

    .line 200
    .local v19, "userEntry":Lcom/google/android/picasasync/UserEntry;
    const/4 v13, 0x0

    .line 202
    .local v13, "isPicasaAccount":Z
    :try_start_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/google/android/picasasync/PicasaSyncHelper;->isPicasaAccount(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v13

    .line 206
    :goto_3
    if-nez v13, :cond_6

    .line 207
    :try_start_5
    const-string v21, "ImmediateSync"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "not picasa account, ignore: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 197
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 196
    .end local v3    # "account":Ljava/lang/String;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "isPicasaAccount":Z
    .end local v14    # "len$":I
    .end local v19    # "userEntry":Lcom/google/android/picasasync/UserEntry;
    :catchall_0
    move-exception v21

    :try_start_6
    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 230
    .end local v18    # "syncResult":Landroid/content/SyncResult;
    :catchall_1
    move-exception v21

    const-string v22, "picasa.sync.metadata"

    move/from16 v0, v16

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    throw v21

    .line 203
    .restart local v3    # "account":Ljava/lang/String;
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v12    # "i$":I
    .restart local v13    # "isPicasaAccount":Z
    .restart local v14    # "len$":I
    .restart local v18    # "syncResult":Landroid/content/SyncResult;
    .restart local v19    # "userEntry":Lcom/google/android/picasasync/UserEntry;
    :catch_0
    move-exception v9

    .line 204
    .local v9, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v21, "ImmediateSync"

    const-string v22, "check picasa account failed"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 211
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_6
    if-eqz v19, :cond_8

    .line 212
    const-string v21, "ImmediateSync"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "sync albums for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->setAccount(Ljava/lang/String;)Z

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncAlbumsForUser(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V

    .line 221
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 223
    .end local v3    # "account":Ljava/lang/String;
    .end local v13    # "isPicasaAccount":Z
    .end local v19    # "userEntry":Lcom/google/android/picasasync/UserEntry;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v21

    if-eqz v21, :cond_9

    const/16 v21, 0x1

    .line 230
    :goto_5
    const-string v22, "picasa.sync.metadata"

    move/from16 v0, v16

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 219
    .restart local v3    # "account":Ljava/lang/String;
    .restart local v13    # "isPicasaAccount":Z
    .restart local v19    # "userEntry":Lcom/google/android/picasasync/UserEntry;
    :cond_8
    :try_start_9
    const-string v21, "ImmediateSync"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "no userEntry for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 223
    .end local v3    # "account":Ljava/lang/String;
    .end local v13    # "isPicasaAccount":Z
    .end local v19    # "userEntry":Lcom/google/android/picasasync/UserEntry;
    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroid/content/SyncResult;->hasError()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v21

    if-eqz v21, :cond_a

    const/16 v21, 0x2

    goto :goto_5

    :cond_a
    const/16 v21, 0x0

    goto :goto_5
.end method
