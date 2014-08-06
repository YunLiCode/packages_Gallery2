.class public Lcom/android/dreams/phototable/LocalSource;
.super Lcom/android/dreams/phototable/CursorPhotoSource;
.source "LocalSource.java"


# instance fields
.field private mFoundAlbumIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPosition:I

.field private final mLocalSourceName:Ljava/lang/String;

.field private final mUnknownAlbumName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/dreams/phototable/CursorPhotoSource;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 43
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b002d

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Photos on Device"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/LocalSource;->mLocalSourceName:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b002b

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Unknown"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/LocalSource;->mUnknownAlbumName:Ljava/lang/String;

    .line 45
    const-string v0, "PhotoTable.LocalSource"

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mSourceName:Ljava/lang/String;

    .line 46
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/dreams/phototable/LocalSource;->mLastPosition:I

    .line 47
    invoke-virtual {p0}, Lcom/android/dreams/phototable/LocalSource;->fillQueue()V

    .line 48
    return-void
.end method

.method private getFoundAlbums()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/dreams/phototable/LocalSource;->mFoundAlbumIds:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/dreams/phototable/LocalSource;->findAlbums()Ljava/util/Collection;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/LocalSource;->mFoundAlbumIds:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public findAlbums()Ljava/util/Collection;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    const-string v1, "PhotoTable.LocalSource"

    const-string v2, "finding albums"

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v11, "foundAlbums":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/dreams/phototable/PhotoSource$AlbumData;>;"
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "bucket_id"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "bucket_display_name"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "datetaken"

    aput-object v2, v3, v1

    .line 65
    .local v3, "projection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 67
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 68
    const/4 v1, -0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 70
    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 71
    .local v10, "dataIndex":I
    const-string v1, "bucket_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 72
    .local v7, "bucketIndex":I
    const-string v1, "bucket_display_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 73
    .local v13, "nameIndex":I
    const-string v1, "datetaken"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 75
    .local v16, "updatedIndex":I
    if-gez v7, :cond_2

    .line 76
    const-string v1, "PhotoTable.LocalSource"

    const-string v2, "can\'t find the ID column!"

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 110
    .end local v7    # "bucketIndex":I
    .end local v10    # "dataIndex":I
    .end local v13    # "nameIndex":I
    .end local v16    # "updatedIndex":I
    :cond_1
    const-string v1, "PhotoTable.LocalSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " items."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/dreams/phototable/LocalSource;->mFoundAlbumIds:Ljava/util/Set;

    .line 112
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    return-object v1

    .line 78
    .restart local v7    # "bucketIndex":I
    .restart local v10    # "dataIndex":I
    .restart local v13    # "nameIndex":I
    .restart local v16    # "updatedIndex":I
    :cond_2
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhotoTable.LocalSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 80
    .local v12, "id":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .line 81
    .local v9, "data":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 82
    new-instance v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .end local v9    # "data":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/dreams/phototable/PhotoSource$AlbumData;-><init>(Lcom/android/dreams/phototable/PhotoSource;)V

    .line 83
    .restart local v9    # "data":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    iput-object v12, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->id:Ljava/lang/String;

    .line 84
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dreams/phototable/LocalSource;->mLocalSourceName:Ljava/lang/String;

    iput-object v1, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    .line 86
    if-ltz v10, :cond_3

    .line 87
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->thumbnailUrl:Ljava/lang/String;

    .line 90
    :cond_3
    if-ltz v13, :cond_5

    .line 91
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    .line 96
    :goto_1
    const-string v1, "PhotoTable.LocalSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " found"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_4
    if-ltz v16, :cond_2

    .line 100
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 101
    .local v14, "updated":J
    iget-wide v1, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->updated:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-nez v1, :cond_6

    .end local v14    # "updated":J
    :goto_2
    iput-wide v14, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->updated:J

    goto :goto_0

    .line 93
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dreams/phototable/LocalSource;->mUnknownAlbumName:Ljava/lang/String;

    iput-object v1, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    goto :goto_1

    .line 101
    .restart local v14    # "updated":J
    :cond_6
    iget-wide v1, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->updated:J

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    goto :goto_2
.end method

.method protected findImages(I)Ljava/util/Collection;
    .locals 14
    .param p1, "howMany"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$ImageData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 170
    const-string v0, "PhotoTable.LocalSource"

    const-string v1, "finding images"

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 173
    .local v9, "foundImages":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/dreams/phototable/PhotoSource$ImageData;>;"
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const-string v0, "orientation"

    aput-object v0, v2, v5

    const/4 v0, 0x2

    const-string v1, "bucket_id"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "bucket_display_name"

    aput-object v1, v2, v0

    .line 175
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, ""

    .line 176
    .local v3, "selection":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/dreams/phototable/LocalSource;->getFoundAlbums()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 177
    .local v11, "id":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;

    invoke-virtual {v0, v11}, Lcom/android/dreams/phototable/AlbumSettings;->isAlbumEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, ":"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 179
    .local v12, "parts":[Ljava/lang/String;
    array-length v0, v12

    if-le v0, v5, :cond_0

    .line 180
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bucket_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v12, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 187
    .end local v11    # "id":Ljava/lang/String;
    .end local v12    # "parts":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    :goto_1
    return-object v9

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 193
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 194
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 196
    .local v8, "dataIndex":I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, p1, :cond_4

    iget v0, p0, Lcom/android/dreams/phototable/LocalSource;->mLastPosition:I

    if-ne v0, v13, :cond_4

    .line 197
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/dreams/phototable/LocalSource;->pickRandomStart(II)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/LocalSource;->mLastPosition:I

    .line 199
    :cond_4
    iget v0, p0, Lcom/android/dreams/phototable/LocalSource;->mLastPosition:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 201
    if-gez v8, :cond_7

    .line 202
    const-string v0, "PhotoTable.LocalSource"

    const-string v1, "can\'t find the DATA column!"

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_5
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 219
    .end local v8    # "dataIndex":I
    :cond_6
    const-string v0, "PhotoTable.LocalSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " items."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 204
    .restart local v8    # "dataIndex":I
    :cond_7
    :goto_3
    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v0, p1, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 205
    invoke-virtual {p0, v6, v4}, Lcom/android/dreams/phototable/LocalSource;->unpackImageData(Landroid/database/Cursor;Lcom/android/dreams/phototable/PhotoSource$ImageData;)Lcom/android/dreams/phototable/PhotoSource$ImageData;

    move-result-object v7

    .line 206
    .local v7, "data":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    invoke-virtual {v9, v7}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/LocalSource;->mLastPosition:I

    goto :goto_3

    .line 209
    .end local v7    # "data":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dreams/phototable/LocalSource;->mLastPosition:I

    .line 212
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    iput v13, p0, Lcom/android/dreams/phototable/LocalSource;->mLastPosition:I

    goto :goto_2
.end method

.method protected findPosition(Lcom/android/dreams/phototable/PhotoSource$ImageData;)V
    .locals 5
    .param p1, "data"    # Lcom/android/dreams/phototable/PhotoSource$ImageData;

    .prologue
    const/4 v4, -0x1

    .line 129
    iget v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->position:I

    if-ne v2, v4, :cond_3

    .line 130
    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/LocalSource;->openCursor(Lcom/android/dreams/phototable/PhotoSource$ImageData;)V

    .line 133
    :cond_0
    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    .line 134
    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 135
    .local v0, "dataIndex":I
    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 136
    :cond_1
    :goto_0
    iget v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->position:I

    if-ne v2, v4, :cond_2

    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    iput v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->position:I

    goto :goto_0

    .line 142
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    iget v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->position:I

    if-ne v2, v4, :cond_3

    .line 144
    const/4 v2, -0x2

    iput v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->position:I

    .line 148
    .end local v0    # "dataIndex":I
    :cond_3
    return-void
.end method

.method protected getStream(Lcom/android/dreams/phototable/PhotoSource$ImageData;I)Ljava/io/InputStream;
    .locals 5
    .param p1, "data"    # Lcom/android/dreams/phototable/PhotoSource$ImageData;
    .param p2, "longSide"    # I

    .prologue
    .line 225
    const/4 v1, 0x0

    .line 227
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    const-string v2, "PhotoTable.LocalSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "opening:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1    # "fis":Ljava/io/FileInputStream;
    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v1

    .line 229
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "PhotoTable.LocalSource"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v1, 0x0

    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method protected openCursor(Lcom/android/dreams/phototable/PhotoSource$ImageData;)V
    .locals 6
    .param p1, "data"    # Lcom/android/dreams/phototable/PhotoSource$ImageData;

    .prologue
    const/4 v4, 0x0

    .line 117
    const-string v0, "PhotoTable.LocalSource"

    const-string v1, "opening single album"

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "orientation"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "bucket_id"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "bucket_display_name"

    aput-object v1, v2, v0

    .line 121
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bucket_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    .line 125
    return-void
.end method

.method protected unpackImageData(Landroid/database/Cursor;Lcom/android/dreams/phototable/PhotoSource$ImageData;)Lcom/android/dreams/phototable/PhotoSource$ImageData;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "data"    # Lcom/android/dreams/phototable/PhotoSource$ImageData;

    .prologue
    .line 152
    if-nez p2, :cond_0

    .line 153
    new-instance p2, Lcom/android/dreams/phototable/PhotoSource$ImageData;

    .end local p2    # "data":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    invoke-direct {p2, p0}, Lcom/android/dreams/phototable/PhotoSource$ImageData;-><init>(Lcom/android/dreams/phototable/PhotoSource;)V

    .line 155
    .restart local p2    # "data":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    :cond_0
    const-string v3, "_data"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, "dataIndex":I
    const-string v3, "orientation"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 157
    .local v2, "orientationIndex":I
    const-string v3, "bucket_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, "bucketIndex":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/dreams/phototable/PhotoSource$ImageData;->url:Ljava/lang/String;

    .line 160
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/dreams/phototable/PhotoSource$ImageData;->albumId:Ljava/lang/String;

    .line 161
    const/4 v3, -0x1

    iput v3, p2, Lcom/android/dreams/phototable/PhotoSource$ImageData;->position:I

    .line 162
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    .line 163
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p2, Lcom/android/dreams/phototable/PhotoSource$ImageData;->orientation:I

    .line 165
    return-object p2
.end method
