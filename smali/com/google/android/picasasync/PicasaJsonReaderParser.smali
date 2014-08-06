.class abstract Lcom/google/android/picasasync/PicasaJsonReaderParser;
.super Ljava/lang/Object;
.source "PicasaJsonReaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;,
        Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;,
        Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
    }
.end annotation


# instance fields
.field entryCount:I

.field private final mHandler:Lcom/google/android/picasasync/PicasaApi$EntryHandler;

.field totalCount:I


# direct methods
.method protected constructor <init>(Lcom/google/android/picasasync/PicasaApi$EntryHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/google/android/picasasync/PicasaApi$EntryHandler;

    .prologue
    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/PicasaApi$EntryHandler;

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser;->mHandler:Lcom/google/android/picasasync/PicasaApi$EntryHandler;

    .line 143
    return-void
.end method

.method protected static newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
    .locals 4
    .param p0, "column"    # Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .prologue
    .line 109
    iget v1, p0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v1, :pswitch_data_0

    .line 129
    :pswitch_0
    const-string v1, "PicasaAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 v0, 0xb

    .line 132
    .local v0, "type":I
    :goto_0
    new-instance v1, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    iget-object v2, p0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 111
    .end local v0    # "type":I
    :pswitch_1
    const/4 v0, 0x0

    .line 112
    .restart local v0    # "type":I
    goto :goto_0

    .line 114
    .end local v0    # "type":I
    :pswitch_2
    const/4 v0, 0x1

    .line 115
    .restart local v0    # "type":I
    goto :goto_0

    .line 117
    .end local v0    # "type":I
    :pswitch_3
    const/4 v0, 0x3

    .line 118
    .restart local v0    # "type":I
    goto :goto_0

    .line 120
    .end local v0    # "type":I
    :pswitch_4
    const/4 v0, 0x4

    .line 121
    .restart local v0    # "type":I
    goto :goto_0

    .line 123
    .end local v0    # "type":I
    :pswitch_5
    const/4 v0, 0x5

    .line 124
    .restart local v0    # "type":I
    goto :goto_0

    .line 126
    .end local v0    # "type":I
    :pswitch_6
    const/4 v0, 0x6

    .line 127
    .restart local v0    # "type":I
    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static parseAtomTimestamp(Ljava/lang/String;)J
    .locals 3
    .param p0, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 327
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 328
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0, p0}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 329
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method private parseEntry(Lcom/google/android/picasasync/JsonReader;)V
    .locals 2
    .param p1, "reader"    # Lcom/google/android/picasasync/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 198
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->getEntryFieldMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/util/Map;Landroid/content/ContentValues;)V

    .line 199
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser;->mHandler:Lcom/google/android/picasasync/PicasaApi$EntryHandler;

    invoke-interface {v1, v0}, Lcom/google/android/picasasync/PicasaApi$EntryHandler;->handleEntry(Landroid/content/ContentValues;)V

    .line 200
    return-void
.end method

.method private parseFeed(Lcom/google/android/picasasync/JsonReader;)V
    .locals 5
    .param p1, "reader"    # Lcom/google/android/picasasync/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "etag":Ljava/lang/String;
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser;->entryCount:I

    .line 167
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser;->totalCount:I

    .line 168
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->beginObject()V

    .line 170
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "name":Ljava/lang/String;
    const-string v2, "gd$etag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_0
    const-string v2, "openSearch$totalResults"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    const-string v2, "$t"

    invoke-virtual {p0, p1, v2}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser;->totalCount:I

    goto :goto_0

    .line 176
    :cond_1
    const-string v2, "entry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->beginArray()V

    .line 179
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parseEntry(Lcom/google/android/picasasync/JsonReader;)V

    .line 181
    iget v2, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser;->entryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser;->entryCount:I

    goto :goto_1

    .line 183
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->endArray()V

    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->skipValue()V

    goto :goto_0

    .line 188
    .end local v1    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->endObject()V

    .line 189
    const-string v2, "PicasaAPI"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 190
    const-string v2, "PicasaAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   etag: --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",entryCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser;->entryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_5
    return-void
.end method

.method private parseFieldValue(Lcom/google/android/picasasync/JsonReader;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "reader"    # Lcom/google/android/picasasync/JsonReader;
    .param p2, "field"    # Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget v1, p2, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->type:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 257
    iget v1, p2, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->type:I

    packed-switch v1, :pswitch_data_0

    .line 262
    iget v1, p2, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->type:I

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->handleComplexValue(Lcom/google/android/picasasync/JsonReader;ILandroid/content/ContentValues;)V

    .line 278
    .end local p2    # "field":Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
    :goto_0
    return-void

    .line 259
    .restart local p2    # "field":Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
    :pswitch_0
    check-cast p2, Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;

    .end local p2    # "field":Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
    iget-object v1, p2, Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;->map:Ljava/util/Map;

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/util/Map;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 264
    .restart local p2    # "field":Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->peek()Lcom/google/android/picasasync/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/android/picasasync/JsonToken;->BEGIN_OBJECT:Lcom/google/android/picasasync/JsonToken;

    if-ne v1, v2, :cond_3

    .line 266
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->beginObject()V

    .line 267
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "name":Ljava/lang/String;
    const-string v1, "$t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 270
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parsePrimitiveValue(Lcom/google/android/picasasync/JsonReader;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;Landroid/content/ContentValues;)V

    .line 271
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 273
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->endObject()V

    goto :goto_0

    .line 271
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 276
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parsePrimitiveValue(Lcom/google/android/picasasync/JsonReader;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method private parsePrimitiveValue(Lcom/google/android/picasasync/JsonReader;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;Landroid/content/ContentValues;)V
    .locals 10
    .param p1, "reader"    # Lcom/google/android/picasasync/JsonReader;
    .param p2, "field"    # Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v2, p2, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->columnName:Ljava/lang/String;

    .line 284
    .local v2, "columnName":Ljava/lang/String;
    iget v5, p2, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->type:I

    .line 286
    .local v5, "type":I
    packed-switch v5, :pswitch_data_0

    .line 318
    :pswitch_0
    :try_start_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :catch_0
    move-exception v3

    .line 321
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "PicasaAPI"

    const-string v8, "error parsing value"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->skipValue()V

    .line 324
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 288
    :pswitch_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :pswitch_2
    move-object v0, p2

    check-cast v0, Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;

    move-object v1, v0

    .line 292
    .local v1, "booleanField":Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 293
    .local v4, "onOff":Z
    invoke-virtual {v1, v4}, Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;->getValue(Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 296
    .end local v1    # "booleanField":Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;
    .end local v4    # "onOff":Z
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 299
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 302
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextDouble()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 305
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextDouble()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 308
    :pswitch_7
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 309
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-nez v7, :cond_0

    .line 311
    :try_start_2
    invoke-static {v6}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parseAtomTimestamp(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 312
    :catch_1
    move-exception v3

    .line 313
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "PicasaAPI"

    const-string v8, "parseAtomTimestamp"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method protected abstract getEntryFieldMap()Ljava/util/Map;
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
.end method

.method protected abstract handleComplexValue(Lcom/google/android/picasasync/JsonReader;ILandroid/content/ContentValues;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final parse(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v1, Lcom/google/android/picasasync/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/picasasync/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 147
    .local v1, "reader":Lcom/google/android/picasasync/JsonReader;
    invoke-virtual {v1}, Lcom/google/android/picasasync/JsonReader;->beginObject()V

    .line 149
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    invoke-virtual {v1}, Lcom/google/android/picasasync/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "name":Ljava/lang/String;
    const-string v2, "feed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    invoke-direct {p0, v1}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parseFeed(Lcom/google/android/picasasync/JsonReader;)V

    .line 159
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    return-void

    .line 155
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/picasasync/JsonReader;->skipValue()V

    goto :goto_0

    .line 158
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/picasasync/JsonReader;->endObject()V

    goto :goto_1
.end method

.method protected final parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "reader"    # Lcom/google/android/picasasync/JsonReader;
    .param p2, "jsonKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->beginObject()V

    .line 226
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->peek()Lcom/google/android/picasasync/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/android/picasasync/JsonToken;->BEGIN_OBJECT:Lcom/google/android/picasasync/JsonToken;

    if-ne v1, v2, :cond_0

    .line 230
    const-string v1, "$t"

    invoke-virtual {p0, p1, v1}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextName()Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->skipValue()V

    goto :goto_1

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 241
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->skipValue()V

    goto :goto_0

    .line 244
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->endObject()V

    .line 245
    return-object v0
.end method

.method protected final parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/util/Map;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "reader"    # Lcom/google/android/picasasync/JsonReader;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/picasasync/JsonReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    .local p2, "objectFieldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;>;"
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->beginObject()V

    .line 207
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    .line 210
    .local v0, "field":Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parseFieldValue(Lcom/google/android/picasasync/JsonReader;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->skipValue()V

    goto :goto_0

    .line 216
    .end local v0    # "field":Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->endObject()V

    .line 217
    return-void
.end method
