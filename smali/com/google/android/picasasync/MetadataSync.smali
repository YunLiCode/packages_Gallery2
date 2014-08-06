.class Lcom/google/android/picasasync/MetadataSync;
.super Ljava/lang/Object;
.source "MetadataSync.java"

# interfaces
.implements Lcom/google/android/picasasync/SyncTaskProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsManual:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manual"    # Z

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/picasasync/MetadataSync;->mContext:Landroid/content/Context;

    .line 36
    iput-boolean p2, p0, Lcom/google/android/picasasync/MetadataSync;->mIsManual:Z

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/picasasync/MetadataSync;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/MetadataSync;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/picasasync/MetadataSync;->mIsManual:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/picasasync/MetadataSync;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/MetadataSync;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/picasasync/MetadataSync;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public collectTasks(Ljava/util/Collection;)V
    .locals 8
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
    .line 56
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/picasasync/SyncTask;>;"
    iget-object v5, p0, Lcom/google/android/picasasync/MetadataSync;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v3

    .line 57
    .local v3, "sync":Lcom/google/android/picasasync/PicasaSyncHelper;
    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 58
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-boolean v5, p0, Lcom/google/android/picasasync/MetadataSync;->mIsManual:Z

    if-eqz v5, :cond_1

    sget-object v2, Lcom/google/android/picasasync/SyncState;->METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

    .line 59
    .local v2, "state":Lcom/google/android/picasasync/SyncState;
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaSyncHelper;->getUsers()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/picasasync/UserEntry;

    .line 60
    .local v4, "user":Lcom/google/android/picasasync/UserEntry;
    iget-object v5, v4, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lcom/google/android/picasasync/SyncState;->isRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    new-instance v5, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;

    iget-object v6, v4, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/google/android/picasasync/MetadataSync;->mIsManual:Z

    invoke-direct {v5, p0, v6, v7}, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;-><init>(Lcom/google/android/picasasync/MetadataSync;Ljava/lang/String;Z)V

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "state":Lcom/google/android/picasasync/SyncState;
    .end local v4    # "user":Lcom/google/android/picasasync/UserEntry;
    :cond_1
    sget-object v2, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    goto :goto_0

    .line 64
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "state":Lcom/google/android/picasasync/SyncState;
    :cond_2
    return-void
.end method

.method public onSyncStart()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public resetSyncStates()V
    .locals 6

    .prologue
    .line 46
    iget-object v5, p0, Lcom/google/android/picasasync/MetadataSync;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v3

    .line 47
    .local v3, "sync":Lcom/google/android/picasasync/PicasaSyncHelper;
    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 48
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-boolean v5, p0, Lcom/google/android/picasasync/MetadataSync;->mIsManual:Z

    if-eqz v5, :cond_0

    sget-object v2, Lcom/google/android/picasasync/SyncState;->METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

    .line 49
    .local v2, "state":Lcom/google/android/picasasync/SyncState;
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaSyncHelper;->getUsers()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/picasasync/UserEntry;

    .line 50
    .local v4, "user":Lcom/google/android/picasasync/UserEntry;
    iget-object v5, v4, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lcom/google/android/picasasync/SyncState;->resetSyncToDirty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_1

    .line 48
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "state":Lcom/google/android/picasasync/SyncState;
    .end local v4    # "user":Lcom/google/android/picasasync/UserEntry;
    :cond_0
    sget-object v2, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    goto :goto_0

    .line 52
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "state":Lcom/google/android/picasasync/SyncState;
    :cond_1
    return-void
.end method
