.class Lcom/google/android/picasasync/AlbumCollectorJson;
.super Lcom/google/android/picasasync/PicasaJsonReaderParser;
.source "AlbumCollectorJson.java"


# static fields
.field private static final sAlbumEntryFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLinkFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 42
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/picasasync/AlbumCollectorJson;->sAlbumEntryFieldMap:Ljava/util/Map;

    .line 47
    sget-object v2, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    .line 48
    .local v2, "schema":Lcom/android/gallery3d/common/EntrySchema;
    sget-object v0, Lcom/google/android/picasasync/AlbumCollectorJson;->sAlbumEntryFieldMap:Ljava/util/Map;

    .line 51
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;>;"
    const-string v3, "gphoto$id"

    const-string v4, "_id"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/AlbumCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v3, "gphoto$albumType"

    const-string v4, "album_type"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/AlbumCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v3, "gphoto$user"

    const-string v4, "user"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/AlbumCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v3, "gphoto$access"

    const-string v4, "access"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/AlbumCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v3, "gphoto$bytesUsed"

    const-string v4, "bytes_used"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/AlbumCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v3, "title"

    const-string v4, "title"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/AlbumCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v3, "summary"

    const-string v4, "summary"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/AlbumCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v3, "gphoto$numphotos"

    const-string v4, "num_photos"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/AlbumCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v3, "published"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v5, "date_published"

    invoke-direct {v4, v5, v7}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v3, "updated"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v5, "date_updated"

    invoke-direct {v4, v5, v7}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v3, "app$edited"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v5, "date_edited"

    invoke-direct {v4, v5, v7}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v3, "link"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v1, "mediaGroupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;>;"
    const-string v3, "media$group"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;

    invoke-direct {v4, v1}, Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v3, "media$thumbnail"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(I)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/picasasync/AlbumCollectorJson;->sLinkFieldMap:Ljava/util/Map;

    .line 147
    sget-object v0, Lcom/google/android/picasasync/AlbumCollectorJson;->sLinkFieldMap:Ljava/util/Map;

    .line 148
    const-string v3, "rel"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v5, "rel"

    invoke-direct {v4, v5, v6}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v3, "type"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v5, "type"

    invoke-direct {v4, v5, v6}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v3, "href"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v5, "href"

    invoke-direct {v4, v5, v6}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/google/android/picasasync/PicasaApi$EntryHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/google/android/picasasync/PicasaApi$EntryHandler;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaJsonReaderParser;-><init>(Lcom/google/android/picasasync/PicasaApi$EntryHandler;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected final addHtmlPageUrl(Lcom/google/android/picasasync/JsonReader;Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "reader"    # Lcom/google/android/picasasync/JsonReader;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->beginArray()V

    .line 160
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v0, "linkValues":Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 164
    sget-object v3, Lcom/google/android/picasasync/AlbumCollectorJson;->sLinkFieldMap:Ljava/util/Map;

    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/picasasync/AlbumCollectorJson;->parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/util/Map;Landroid/content/ContentValues;)V

    .line 166
    const-string v3, "rel"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "rel":Ljava/lang/String;
    const-string v3, "type"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "type":Ljava/lang/String;
    const-string v3, "alternate"

    invoke-static {v1, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "text/html"

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    const-string v3, "html_page_url"

    const-string v4, "href"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->skipValue()V

    goto :goto_0

    .line 176
    .end local v1    # "rel":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->endArray()V

    .line 177
    return-void
.end method

.method protected final addThumbnailUrl(Lcom/google/android/picasasync/JsonReader;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p1, "reader"    # Lcom/google/android/picasasync/JsonReader;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->beginArray()V

    .line 186
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    const-string v1, "url"

    invoke-virtual {p0, p1, v1}, Lcom/google/android/picasasync/AlbumCollectorJson;->parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->skipValue()V

    goto :goto_0

    .line 197
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->endArray()V

    .line 198
    return-void
.end method

.method protected getEntryFieldMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    sget-object v0, Lcom/google/android/picasasync/AlbumCollectorJson;->sAlbumEntryFieldMap:Ljava/util/Map;

    return-object v0
.end method

.method protected handleComplexValue(Lcom/google/android/picasasync/JsonReader;ILandroid/content/ContentValues;)V
    .locals 1
    .param p1, "reader"    # Lcom/google/android/picasasync/JsonReader;
    .param p2, "type"    # I
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    packed-switch p2, :pswitch_data_0

    .line 132
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->skipValue()V

    .line 134
    :goto_0
    return-void

    .line 126
    :pswitch_0
    invoke-virtual {p0, p1, p3}, Lcom/google/android/picasasync/AlbumCollectorJson;->addHtmlPageUrl(Lcom/google/android/picasasync/JsonReader;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 129
    :pswitch_1
    const-string v0, "thumbnail_url"

    invoke-virtual {p0, p1, p3, v0}, Lcom/google/android/picasasync/AlbumCollectorJson;->addThumbnailUrl(Lcom/google/android/picasasync/JsonReader;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
