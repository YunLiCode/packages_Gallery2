.class public Lcom/android/dreams/phototable/AlbumSettings;
.super Ljava/lang/Object;
.source "AlbumSettings.java"


# static fields
.field private static singletons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/SharedPreferences;",
            "Lcom/android/dreams/phototable/AlbumSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnabledAlbums:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "settings"    # Landroid/content/SharedPreferences;

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mSettings:Landroid/content/SharedPreferences;

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    .line 112
    invoke-virtual {p0}, Lcom/android/dreams/phototable/AlbumSettings;->readEnabledAlbums()V

    .line 113
    return-void
.end method

.method public static getAlbumSettings(Landroid/content/SharedPreferences;)Lcom/android/dreams/phototable/AlbumSettings;
    .locals 2
    .param p0, "settings"    # Landroid/content/SharedPreferences;

    .prologue
    .line 37
    sget-object v0, Lcom/android/dreams/phototable/AlbumSettings;->singletons:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/dreams/phototable/AlbumSettings;->singletons:Ljava/util/HashMap;

    .line 40
    :cond_0
    sget-object v0, Lcom/android/dreams/phototable/AlbumSettings;->singletons:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    sget-object v0, Lcom/android/dreams/phototable/AlbumSettings;->singletons:Ljava/util/HashMap;

    new-instance v1, Lcom/android/dreams/phototable/AlbumSettings;

    invoke-direct {v1, p0}, Lcom/android/dreams/phototable/AlbumSettings;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_1
    sget-object v0, Lcom/android/dreams/phototable/AlbumSettings;->singletons:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dreams/phototable/AlbumSettings;

    return-object v0
.end method

.method private readEnabledAlbumsLocked()V
    .locals 4

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v2, "Enabled Album Set V2"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 117
    .local v0, "enabledAlbums":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 118
    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 121
    :cond_0
    return-void
.end method

.method private writeEnabledAlbumsLocked()V
    .locals 4

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 126
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Enabled Album Set V2"

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    return-void
.end method


# virtual methods
.method public areAllEnabled(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "validAlbums":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disableAllAlbums()V
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 81
    invoke-direct {p0}, Lcom/android/dreams/phototable/AlbumSettings;->writeEnabledAlbumsLocked()V

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableAllAlbums(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "validAlbums":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 88
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 89
    invoke-direct {p0}, Lcom/android/dreams/phototable/AlbumSettings;->writeEnabledAlbumsLocked()V

    .line 90
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAlbumEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConfigured()Z
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pruneObsoleteSettings(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "validAlbums":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-interface {p1, v0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    monitor-enter v1

    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/android/dreams/phototable/AlbumSettings;->readEnabledAlbumsLocked()V

    .line 97
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    .line 98
    invoke-direct {p0}, Lcom/android/dreams/phototable/AlbumSettings;->writeEnabledAlbumsLocked()V

    .line 99
    monitor-exit v1

    .line 101
    :cond_0
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readEnabledAlbums()V
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    monitor-enter v1

    .line 48
    :try_start_0
    invoke-direct {p0}, Lcom/android/dreams/phototable/AlbumSettings;->readEnabledAlbumsLocked()V

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAlbumEnabled(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "albumId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/AlbumSettings;->isAlbumEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    monitor-enter v1

    .line 67
    :try_start_0
    invoke-direct {p0}, Lcom/android/dreams/phototable/AlbumSettings;->readEnabledAlbumsLocked()V

    .line 68
    if-eqz p2, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_0
    invoke-direct {p0}, Lcom/android/dreams/phototable/AlbumSettings;->writeEnabledAlbumsLocked()V

    .line 74
    monitor-exit v1

    .line 76
    :cond_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumSettings;->mEnabledAlbums:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
