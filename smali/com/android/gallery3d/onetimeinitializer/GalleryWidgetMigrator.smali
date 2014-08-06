.class public Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;
.super Ljava/lang/Object;
.source "GalleryWidgetMigrator.java"


# static fields
.field private static final NEW_EXT_PATH:Ljava/lang/String;

.field private static final RELATIVE_PATH_START:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->NEW_EXT_PATH:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->NEW_EXT_PATH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->RELATIVE_PATH_START:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static migrateGalleryWidgets(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 63
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "external_storage_path"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "extPath":Ljava/lang/String;
    sget-object v4, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->NEW_EXT_PATH:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 65
    .local v1, "isDone":Z
    if-eqz v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->migrateGalleryWidgetsInternal(Landroid/content/Context;)V

    .line 69
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "external_storage_path"

    sget-object v6, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->NEW_EXT_PATH:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v3

    .line 72
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "GalleryWidgetMigrator"

    const-string v5, "migrateGalleryWidgets"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static migrateGalleryWidgetsInternal(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/app/GalleryApp;

    .line 78
    .local v4, "galleryApp":Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v7

    .line 79
    .local v7, "manager":Lcom/android/gallery3d/data/DataManager;
    new-instance v1, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 82
    .local v1, "dbHelper":Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getEntries(I)Ljava/util/List;

    move-result-object v2

    .line 83
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    if-nez v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 90
    .local v6, "localEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    .line 91
    .local v3, "entry":Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    iget-object v10, v3, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v9

    .line 92
    .local v9, "path":Lcom/android/gallery3d/data/Path;
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaSet;

    .line 93
    .local v8, "mediaSet":Lcom/android/gallery3d/data/MediaSet;
    instance-of v10, v8, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v10, :cond_2

    .line 94
    iget-object v10, v3, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->relativePath:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, v3, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 96
    invoke-static {v3, v1}, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->updateEntryUsingRelativePath(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;)V

    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {v9}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, "bucketId":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 103
    .end local v0    # "bucketId":I
    .end local v3    # "entry":Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    .end local v8    # "mediaSet":Lcom/android/gallery3d/data/MediaSet;
    .end local v9    # "path":Lcom/android/gallery3d/data/Path;
    :cond_4
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {p0, v6, v1}, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->migrateLocalEntries(Landroid/content/Context;Ljava/util/HashMap;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;)V

    goto :goto_0
.end method

.method private static migrateLocalEntries(Landroid/content/Context;Ljava/util/HashMap;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "dbHelper"    # Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;",
            ">;",
            "Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 109
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "external_storage_path"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "oldExtPath":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 111
    invoke-static {p1, p2, v0}, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->migrateLocalEntries(Ljava/util/HashMap;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;Ljava/lang/String;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v2, "/mnt/sdcard"

    invoke-static {p1, p2, v2}, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->migrateLocalEntries(Ljava/util/HashMap;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-le v2, v3, :cond_0

    .line 119
    const-string v2, "/storage/sdcard0"

    invoke-static {p1, p2, v2}, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->migrateLocalEntries(Ljava/util/HashMap;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static migrateLocalEntries(Ljava/util/HashMap;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;Ljava/lang/String;)V
    .locals 3
    .param p1, "dbHelper"    # Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
    .param p2, "oldExtPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;",
            ">;",
            "Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 127
    .local v0, "root":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "DCIM"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, p0, p1, p2}, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->updatePath(Ljava/io/File;Ljava/util/HashMap;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p0, p1, p2}, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->updatePath(Ljava/io/File;Ljava/util/HashMap;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method private static updateEntryUsingRelativePath(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;)V
    .locals 5
    .param p0, "entry"    # Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    .param p1, "dbHelper"    # Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;

    .prologue
    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->NEW_EXT_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "newPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    .line 162
    .local v1, "newBucketId":I
    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->getParent()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "newAlbumPath":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    .line 167
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->updateEntry(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V

    .line 168
    return-void
.end method

.method private static updatePath(Ljava/io/File;Ljava/util/HashMap;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;Ljava/lang/String;)V
    .locals 17
    .param p0, "root"    # Ljava/io/File;
    .param p2, "dbHelper"    # Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
    .param p3, "oldExtStorage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;",
            ">;",
            "Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 134
    .local v6, "files":[Ljava/io/File;
    if-eqz v6, :cond_2

    .line 135
    move-object v3, v6

    .local v3, "arr$":[Ljava/io/File;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v5, v3, v7

    .line 136
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 137
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 138
    .local v13, "path":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->RELATIVE_PATH_START:I

    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 139
    .local v12, "oldPath":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v11

    .line 140
    .local v11, "oldBucketId":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    .line 141
    .local v4, "entry":Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    if-eqz v4, :cond_0

    .line 142
    invoke-static {v13}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v10

    .line 143
    .local v10, "newBucketId":I
    iget-object v14, v4, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/gallery3d/data/Path;->getParent()Lcom/android/gallery3d/data/Path;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, "newAlbumPath":Ljava/lang/String;
    const-string v14, "GalleryWidgetMigrator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "migrate from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v4, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object v9, v4, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    .line 150
    sget v14, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->RELATIVE_PATH_START:I

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->relativePath:Ljava/lang/String;

    .line 151
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->updateEntry(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V

    .line 153
    .end local v9    # "newAlbumPath":Ljava/lang/String;
    .end local v10    # "newBucketId":I
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v5, v0, v1, v2}, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->updatePath(Ljava/io/File;Ljava/util/HashMap;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;Ljava/lang/String;)V

    .line 135
    .end local v4    # "entry":Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    .end local v11    # "oldBucketId":I
    .end local v12    # "oldPath":Ljava/lang/String;
    .end local v13    # "path":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 157
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_2
    return-void
.end method
