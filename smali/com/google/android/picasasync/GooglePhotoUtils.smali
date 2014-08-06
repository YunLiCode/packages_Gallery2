.class Lcom/google/android/picasasync/GooglePhotoUtils;
.super Ljava/lang/Object;
.source "GooglePhotoUtils.java"


# static fields
.field private static final PROJECTION_ACCOUNT_NAME_ID:[Ljava/lang/String;

.field private static final PROJECTION_ALBUM_ACCOUNT_ID:[Ljava/lang/String;

.field private static final PROJECTION_ALBUM_SERVER_ID_DATE_MODIFIED:[Ljava/lang/String;

.field private static final PROJECTION_ID:[Ljava/lang/String;

.field private static final PROJECTION_PHOTO_SERVER_ID_DATE_MODIFIED:[Ljava/lang/String;

.field private static SELECTION_ACCOUNT_NAME:Ljava/lang/String;

.field private static SELECTION_ALBUM_ID:Ljava/lang/String;

.field private static SELECTION_ALBUM_SERVER_ID:Ljava/lang/String;

.field private static SELECTION_PHOTO_SERVER_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/GooglePhotoUtils;->PROJECTION_ACCOUNT_NAME_ID:[Ljava/lang/String;

    .line 29
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "server_id"

    aput-object v1, v0, v2

    const-string v1, "date_modified"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/GooglePhotoUtils;->PROJECTION_ALBUM_SERVER_ID_DATE_MODIFIED:[Ljava/lang/String;

    .line 37
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "server_id"

    aput-object v1, v0, v2

    const-string v1, "date_modified"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/GooglePhotoUtils;->PROJECTION_PHOTO_SERVER_ID_DATE_MODIFIED:[Ljava/lang/String;

    .line 42
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/picasasync/GooglePhotoUtils;->PROJECTION_ID:[Ljava/lang/String;

    .line 46
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "account_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/picasasync/GooglePhotoUtils;->PROJECTION_ALBUM_ACCOUNT_ID:[Ljava/lang/String;

    .line 50
    const-string v0, "name=?"

    sput-object v0, Lcom/google/android/picasasync/GooglePhotoUtils;->SELECTION_ACCOUNT_NAME:Ljava/lang/String;

    .line 51
    const-string v0, "_id=?"

    sput-object v0, Lcom/google/android/picasasync/GooglePhotoUtils;->SELECTION_ALBUM_ID:Ljava/lang/String;

    .line 52
    const-string v0, "server_id=?"

    sput-object v0, Lcom/google/android/picasasync/GooglePhotoUtils;->SELECTION_ALBUM_SERVER_ID:Ljava/lang/String;

    .line 53
    const-string v0, "server_id=?"

    sput-object v0, Lcom/google/android/picasasync/GooglePhotoUtils;->SELECTION_PHOTO_SERVER_ID:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAccountNameIdMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 95
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v8, "accounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 97
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/photos/data/GooglePhotoProvider$GoogleAccounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/photos/data/GooglePhotoProvider;->makeSyncAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 98
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/google/android/picasasync/GooglePhotoUtils;->PROJECTION_ACCOUNT_NAME_ID:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 100
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 101
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, "accountName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 104
    .local v6, "accountId":Ljava/lang/Long;
    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    .end local v6    # "accountId":Ljava/lang/Long;
    .end local v7    # "accountName":Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_1
    return-object v8
.end method

.method static getAlbumIdDateModifiedMap(Landroid/content/Context;J)Ljava/util/Map;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 130
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v6, "albums":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/photos/data/GooglePhotoProvider$GoogleAlbums;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/photos/data/GooglePhotoProvider;->makeSyncAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 133
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/google/android/picasasync/GooglePhotoUtils;->PROJECTION_ALBUM_SERVER_ID_DATE_MODIFIED:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 135
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 136
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 138
    .local v9, "serverId":Ljava/lang/Long;
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 139
    .local v8, "dateModified":Ljava/lang/Long;
    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    .end local v8    # "dateModified":Ljava/lang/Long;
    .end local v9    # "serverId":Ljava/lang/Long;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_1
    return-object v6
.end method

.method static getPhotoIdDateModifiedMap(Landroid/content/Context;J)Ljava/util/Map;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 148
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v8, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/photos/data/GooglePhotoProvider$GooglePhotos;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/photos/data/GooglePhotoProvider;->makeSyncAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 151
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/google/android/picasasync/GooglePhotoUtils;->PROJECTION_PHOTO_SERVER_ID_DATE_MODIFIED:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 153
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 154
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 156
    .local v9, "serverId":Ljava/lang/Long;
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 157
    .local v7, "dateModified":Ljava/lang/Long;
    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 159
    .end local v7    # "dateModified":Ljava/lang/Long;
    .end local v9    # "serverId":Ljava/lang/Long;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_1
    return-object v8
.end method

.method static insertAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    .line 115
    .local v4, "args":[Ljava/lang/String;
    sget-object v2, Lcom/google/android/photos/data/GooglePhotoProvider$GoogleAccounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/photos/data/GooglePhotoProvider;->makeSyncAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 116
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/google/android/picasasync/GooglePhotoUtils;->PROJECTION_ACCOUNT_NAME_ID:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 118
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 125
    .local v7, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v7, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private static mapAccessToVisibility(Ljava/lang/String;)I
    .locals 1
    .param p0, "access"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v0, "public"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x3

    .line 171
    :goto_0
    return v0

    .line 168
    :cond_0
    const-string v0, "private"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const/4 v0, 0x2

    goto :goto_0

    .line 171
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static mapPicasaToAlbumValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 13
    .param p0, "picasaValues"    # Landroid/content/ContentValues;

    .prologue
    .line 175
    const-string v11, "_id"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 176
    .local v6, "serverId":Ljava/lang/Long;
    const-string v11, "album_type"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "albumType":Ljava/lang/String;
    const-string v11, "title"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 178
    .local v9, "title":Ljava/lang/String;
    const-string v11, "summary"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, "summary":Ljava/lang/String;
    const-string v11, "access"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "access":Ljava/lang/String;
    const-string v11, "location_string"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "location":Ljava/lang/String;
    const-string v11, "date_published"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 182
    .local v2, "datePublished":Ljava/lang/Long;
    const-string v11, "date_updated"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 183
    .local v3, "dateUpdated":Ljava/lang/Long;
    const-string v11, "photos_etag"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "etag":Ljava/lang/String;
    const-string v11, "thumbnail_url"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, "thumbnailUrl":Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 187
    .local v10, "values":Landroid/content/ContentValues;
    const-string v11, "server_id"

    invoke-virtual {v10, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    const-string v11, "album_type"

    invoke-virtual {v10, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v11, "title"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v11, "summary"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v11, "visibility"

    invoke-static {v0}, Lcom/google/android/picasasync/GooglePhotoUtils;->mapAccessToVisibility(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v11, "location_string"

    invoke-virtual {v10, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v11, "date_published"

    invoke-virtual {v10, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    const-string v11, "date_modified"

    invoke-virtual {v10, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    const-string v11, "etag"

    invoke-virtual {v10, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v11, "preview_url"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-object v10
.end method

.method static mapPicasaToPhotoValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 12
    .param p0, "picasaValues"    # Landroid/content/ContentValues;

    .prologue
    .line 202
    const-string v11, "_id"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 203
    .local v7, "serverId":Ljava/lang/Long;
    const-string v11, "date_taken"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 204
    .local v2, "dateTaken":Ljava/lang/Long;
    const-string v11, "width"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 205
    .local v10, "width":Ljava/lang/Integer;
    const-string v11, "height"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 206
    .local v4, "height":Ljava/lang/Integer;
    const-string v11, "content_type"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "contentType":Ljava/lang/String;
    const-string v11, "title"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 208
    .local v8, "title":Ljava/lang/String;
    const-string v11, "rotation"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 209
    .local v5, "rotation":Ljava/lang/Integer;
    const-string v11, "date_updated"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 210
    .local v3, "dateUpdated":Ljava/lang/Long;
    const-string v11, "content_url"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "contentUrl":Ljava/lang/String;
    const-string v11, "screennail_url"

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "screennailUrl":Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 214
    .local v9, "values":Landroid/content/ContentValues;
    const-string v11, "width"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v11, "height"

    invoke-virtual {v9, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    const-string v11, "date_taken"

    invoke-virtual {v9, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 217
    const-string v11, "mime_type"

    invoke-virtual {v9, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v11, "title"

    invoke-virtual {v9, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v11, "date_modified"

    invoke-virtual {v9, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 220
    const-string v11, "rotation"

    invoke-virtual {v9, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    const-string v11, "server_id"

    invoke-virtual {v9, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    const-string v11, "original_url"

    invoke-virtual {v9, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v11, "preview_url"

    invoke-virtual {v9, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-object v9
.end method

.method static queryAccountIdFromAlbumId(Landroid/content/Context;J)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumId"    # J

    .prologue
    .line 66
    sget-object v0, Lcom/google/android/photos/data/GooglePhotoProvider$GoogleAlbums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lcom/google/android/picasasync/GooglePhotoUtils;->PROJECTION_ALBUM_ACCOUNT_ID:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/GooglePhotoUtils;->SELECTION_ALBUM_ID:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/picasasync/GooglePhotoUtils;->queryId(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method static queryAccountIdFromName(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/photos/data/GooglePhotoProvider$GoogleAccounts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lcom/google/android/picasasync/GooglePhotoUtils;->PROJECTION_ID:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/GooglePhotoUtils;->SELECTION_ACCOUNT_NAME:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/google/android/picasasync/GooglePhotoUtils;->queryId(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method static queryAlbumIdFromServerId(Landroid/content/Context;J)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serverId"    # J

    .prologue
    .line 61
    sget-object v0, Lcom/google/android/photos/data/GooglePhotoProvider$GoogleAlbums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lcom/google/android/picasasync/GooglePhotoUtils;->PROJECTION_ID:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/GooglePhotoUtils;->SELECTION_ALBUM_SERVER_ID:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/picasasync/GooglePhotoUtils;->queryId(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method static queryId(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "parameter"    # Ljava/lang/Object;

    .prologue
    .line 77
    const-wide/16 v7, -0x1

    .line 78
    .local v7, "id":J
    if-nez p4, :cond_2

    const/4 v9, 0x0

    .line 79
    .local v9, "paramString":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v9, v4, v2

    .line 82
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/google/android/photos/data/GooglePhotoProvider;->makeSyncAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 84
    .local v1, "internalUri":Landroid/net/Uri;
    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 85
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 86
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 89
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_1
    return-wide v7

    .line 78
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "internalUri":Landroid/net/Uri;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "paramString":Ljava/lang/String;
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method
