.class Lcom/google/android/picasasync/PhotoPrefetch;
.super Ljava/lang/Object;
.source "PhotoPrefetch.java"

# interfaces
.implements Lcom/google/android/picasasync/SyncTaskProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;,
        Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;,
        Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImageType:I

.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    .line 61
    iput p2, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mImageType:I

    .line 62
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mPrefs:Landroid/content/SharedPreferences;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/picasasync/PhotoPrefetch;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/PhotoPrefetch;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/picasasync/PhotoPrefetch;Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasasync/PhotoPrefetch;
    .param p1, "x1"    # Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PhotoPrefetch;->cleanCache(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V

    return-void
.end method

.method private cleanCache(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V
    .locals 4
    .param p1, "context"    # Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 209
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1, v0, v3}, Lcom/google/android/picasasync/PhotoPrefetch;->compareAndSetCleanBit(Landroid/content/SharedPreferences;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/picasasync/PrefetchHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PrefetchHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/picasasync/PrefetchHelper;->cleanCache(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V

    .line 211
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v1, v3, v0}, Lcom/google/android/picasasync/PhotoPrefetch;->compareAndSetCleanBit(Landroid/content/SharedPreferences;II)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static declared-synchronized compareAndSetCleanBit(Landroid/content/SharedPreferences;II)Z
    .locals 5
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "test"    # I
    .param p2, "set"    # I

    .prologue
    const/4 v1, 0x0

    .line 202
    const-class v2, Lcom/google/android/picasasync/PhotoPrefetch;

    monitor-enter v2

    :try_start_0
    const-string v3, "picasasync.prefetch.clean-cache"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 203
    .local v0, "state":I
    if-eq v0, p1, :cond_0

    .line 205
    :goto_0
    monitor-exit v2

    return v1

    .line 204
    :cond_0
    :try_start_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "picasasync.prefetch.clean-cache"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    const/4 v1, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "state":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getSyncState(I)Lcom/google/android/picasasync/SyncState;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 91
    packed-switch p0, :pswitch_data_0

    .line 95
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 92
    :pswitch_0
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_FULL_IMAGE:Lcom/google/android/picasasync/SyncState;

    .line 94
    :goto_0
    return-object v0

    .line 93
    :pswitch_1
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_SCREEN_NAIL:Lcom/google/android/picasasync/SyncState;

    goto :goto_0

    .line 94
    :pswitch_2
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_ALBUM_COVER:Lcom/google/android/picasasync/SyncState;

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static onRequestSync(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 417
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/picasasync/PhotoPrefetch;->compareAndSetCleanBit(Landroid/content/SharedPreferences;II)Z

    .line 419
    return-void
.end method


# virtual methods
.method public collectTasks(Ljava/util/Collection;)V
    .locals 6
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
    .line 101
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/picasasync/SyncTask;>;"
    iget-object v4, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v2

    .line 102
    .local v2, "sync":Lcom/google/android/picasasync/PicasaSyncHelper;
    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 104
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget v4, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mImageType:I

    packed-switch v4, :pswitch_data_0

    .line 129
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 106
    :pswitch_0
    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/picasasync/UserEntry;

    .line 107
    .local v3, "user":Lcom/google/android/picasasync/UserEntry;
    sget-object v4, Lcom/google/android/picasasync/SyncState;->PREFETCH_FULL_IMAGE:Lcom/google/android/picasasync/SyncState;

    iget-object v5, v3, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/picasasync/SyncState;->isRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    new-instance v4, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;

    iget-object v5, v3, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;-><init>(Lcom/google/android/picasasync/PhotoPrefetch;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "user":Lcom/google/android/picasasync/UserEntry;
    :pswitch_1
    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/picasasync/UserEntry;

    .line 115
    .restart local v3    # "user":Lcom/google/android/picasasync/UserEntry;
    sget-object v4, Lcom/google/android/picasasync/SyncState;->PREFETCH_SCREEN_NAIL:Lcom/google/android/picasasync/SyncState;

    iget-object v5, v3, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/picasasync/SyncState;->isRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    new-instance v4, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;

    iget-object v5, v3, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;-><init>(Lcom/google/android/picasasync/PhotoPrefetch;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "user":Lcom/google/android/picasasync/UserEntry;
    :pswitch_2
    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/picasasync/UserEntry;

    .line 123
    .restart local v3    # "user":Lcom/google/android/picasasync/UserEntry;
    sget-object v4, Lcom/google/android/picasasync/SyncState;->PREFETCH_ALBUM_COVER:Lcom/google/android/picasasync/SyncState;

    iget-object v5, v3, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/picasasync/SyncState;->isRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    new-instance v4, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;

    iget-object v5, v3, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;-><init>(Lcom/google/android/picasasync/PhotoPrefetch;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 131
    .end local v3    # "user":Lcom/google/android/picasasync/UserEntry;
    :cond_3
    return-void

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSyncStart()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public resetSyncStates()V
    .locals 6

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 76
    const-class v3, Lcom/google/android/picasasync/PhotoPrefetch;

    monitor-enter v3

    .line 77
    :try_start_0
    const-string v4, "picasasync.prefetch.clean-cache"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 78
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 79
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "picasasync.prefetch.clean-cache"

    const/4 v5, 0x2

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget v2, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mImageType:I

    invoke-static {v2}, Lcom/google/android/picasasync/PhotoPrefetch;->getSyncState(I)Lcom/google/android/picasasync/SyncState;

    move-result-object v2

    .line 85
    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaSyncHelper;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/UserEntry;

    .line 86
    iget-object v0, v0, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/picasasync/SyncState;->resetSyncToDirty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 88
    :cond_1
    return-void
.end method

.method showPrefetchCompleteNotification(I)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const v6, 0x1080082

    const/4 v5, 0x0

    .line 135
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    sget v1, Lcom/google/android/picasasync/R$string;->ps_cache_done_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    sget v2, Lcom/google/android/picasasync/R$string;->ps_cache_done:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_0

    .line 141
    new-instance v0, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v6, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 143
    iget-object v3, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 144
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 146
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    iget-object v2, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v5, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object v1, v0

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 161
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 162
    return-void

    .line 150
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method updateOngoingNotification(II)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const v6, 0x1080081

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 166
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 167
    sget v1, Lcom/google/android/picasasync/R$string;->ps_cache_status:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 170
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 171
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/google/android/picasasync/R$layout;->ps_cache_notification:I

    invoke-direct {v2, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 173
    sget v0, Lcom/google/android/picasasync/R$id;->ps_status:I

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 174
    sget v0, Lcom/google/android/picasasync/R$id;->icon:I

    invoke-virtual {v2, v0, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 175
    sget v0, Lcom/google/android/picasasync/R$id;->ps_progress:I

    invoke-virtual {v2, v0, p2, p1, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 177
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 178
    iput v6, v0, Landroid/app/Notification;->icon:I

    .line 179
    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 181
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 183
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    iget-object v2, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v4, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object v1, v0

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 197
    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 198
    return-void

    .line 187
    :cond_0
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    sget v3, Lcom/google/android/picasasync/R$string;->ps_cache_status_title:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p1, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method
