.class public Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;
.super Landroid/os/AsyncTask;
.source "SaveCopyTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;,
        Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/gallery3d/filtershow/presets/ImagePreset;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

.field private final context:Landroid/content/Context;

.field private final destinationFile:Ljava/io/File;

.field private final saveFileName:Ljava/lang/String;

.field private final sourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceUri"    # Landroid/net/Uri;
    .param p3, "destination"    # Ljava/io/File;
    .param p4, "callback"    # Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    .line 79
    iput-object p4, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

    .line 81
    if-nez p3, :cond_0

    .line 82
    invoke-static {p1, p2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    .line 87
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->saveFileName:Ljava/lang/String;

    .line 89
    return-void

    .line 84
    :cond_0
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    goto :goto_0
.end method

.method public static getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .prologue
    .line 92
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 93
    .local v0, "saveDirectory":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "saveDirectory":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "EditedOnlinePhotos"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .restart local v0    # "saveDirectory":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 100
    :cond_2
    return-object v0
.end method

.method public static getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .prologue
    .line 104
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 105
    .local v1, "saveDirectory":Ljava/io/File;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "filename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".JPG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 249
    new-array v0, v1, [Ljava/io/File;

    .line 250
    .local v0, "dir":[Ljava/io/File;
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_data"

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$1;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$1;-><init>([Ljava/io/File;)V

    invoke-static {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;)V

    .line 260
    aget-object v1, v0, v3

    return-object v1
.end method

.method public static insertContent(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "saveFileName"    # Ljava/lang/String;
    .param p4, "time"    # J

    .prologue
    const/4 v5, 0x0

    .line 268
    const-wide/16 v2, 0x3e8

    div-long/2addr p4, v2

    .line 270
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v2, "_display_name"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v2, "mime_type"

    const-string v3, "image/jpeg"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v2, "datetaken"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 275
    const-string v2, "date_modified"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 276
    const-string v2, "date_added"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 277
    const-string v2, "orientation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    const-string v2, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v2, "_size"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 281
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "datetaken"

    aput-object v2, v0, v5

    const/4 v2, 0x1

    const-string v3, "latitude"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "longitude"

    aput-object v3, v0, v2

    .line 285
    .local v0, "projection":[Ljava/lang/String;
    new-instance v2, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$2;

    invoke-direct {v2, v1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$2;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p0, p1, v0, v2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;)V

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;

    .prologue
    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 234
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 236
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-interface {p3, v6}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :cond_0
    if-eqz v6, :cond_1

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_1
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v1

    .line 242
    if-eqz v6, :cond_1

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/net/Uri;
    .locals 18
    .param p1, "params"    # [Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .prologue
    .line 171
    const/4 v2, 0x0

    aget-object v2, p1, v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    if-nez v2, :cond_2

    .line 172
    :cond_0
    const/16 v16, 0x0

    .line 219
    :cond_1
    :goto_0
    return-object v16

    .line 174
    :cond_2
    const/4 v2, 0x0

    aget-object v15, p1, v2

    .line 175
    .local v15, "preset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 176
    .local v13, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v16, 0x0

    .line 177
    .local v16, "uri":Landroid/net/Uri;
    const/4 v11, 0x1

    .line 178
    .local v11, "noBitmap":Z
    const/4 v12, 0x0

    .line 180
    .local v12, "num_tries":I
    :goto_1
    if-eqz v11, :cond_1

    .line 183
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-static {v2, v3, v13}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->loadMutableBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 184
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-nez v8, :cond_3

    .line 185
    const/16 v16, 0x0

    goto :goto_0

    .line 187
    :cond_3
    new-instance v14, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v2

    const-string v3, "Saving"

    invoke-direct {v14, v2, v3}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;-><init>(Lcom/android/gallery3d/filtershow/filters/FiltersManager;Ljava/lang/String;)V

    .line 188
    .local v14, "pipeline":Lcom/android/gallery3d/filtershow/cache/CachingPipeline;
    invoke-virtual {v14, v8, v15}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->renderFinalImage(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getPanoramaXMPData(Landroid/net/Uri;Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Ljava/lang/Object;

    move-result-object v17

    .line 191
    .local v17, "xmp":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getExifData(Landroid/net/Uri;)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v10

    .line 194
    .local v10, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 195
    .local v6, "time":J
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v10, v2, v6, v7, v3}, Lcom/android/gallery3d/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 197
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 201
    invoke-virtual {v10}, Lcom/android/gallery3d/exif/ExifInterface;->removeCompressedThumbnail()V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v8}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->putExifData(Ljava/io/File;Lcom/android/gallery3d/exif/ExifInterface;Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->putPanoramaXMPData(Ljava/io/File;Ljava/lang/Object;)Z

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->saveFileName:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->insertContent(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;J)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 209
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 210
    .end local v6    # "time":J
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "exif":Lcom/android/gallery3d/exif/ExifInterface;
    .end local v14    # "pipeline":Lcom/android/gallery3d/filtershow/cache/CachingPipeline;
    .end local v17    # "xmp":Ljava/lang/Object;
    :catch_0
    move-exception v9

    .line 212
    .local v9, "e":Ljava/lang/OutOfMemoryError;
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x5

    if-lt v12, v2, :cond_5

    .line 213
    throw v9

    .line 215
    :cond_5
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 216
    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, [Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->doInBackground([Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getExifData(Landroid/net/Uri;)Lcom/android/gallery3d/exif/ExifInterface;
    .locals 7
    .param p1, "source"    # Landroid/net/Uri;

    .prologue
    .line 134
    new-instance v1, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 135
    .local v1, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "mimeType":Ljava/lang/String;
    const-string v4, "image/jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    const/4 v2, 0x0

    .line 139
    .local v2, "inStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 149
    .end local v2    # "inStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 141
    .restart local v2    # "inStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v4, "SaveCopyTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 143
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "SaveCopyTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot read exif for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4
.end method

.method public getPanoramaXMPData(Landroid/net/Uri;Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Ljava/lang/Object;
    .locals 5
    .param p1, "source"    # Landroid/net/Uri;
    .param p2, "preset"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, "xmp":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->isPanoramaSafe()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 116
    invoke-static {v1}, Lcom/android/gallery3d/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 120
    .local v2, "xmp":Lcom/adobe/xmp/XMPMeta;
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 123
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "xmp":Lcom/adobe/xmp/XMPMeta;
    :cond_0
    :goto_0
    return-object v2

    .line 117
    .restart local v1    # "is":Ljava/io/InputStream;
    .local v2, "xmp":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v3, "SaveCopyTask"

    const-string v4, "Failed to get XMP data from image: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 1
    .param p1, "result"    # Landroid/net/Uri;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;->onComplete(Landroid/net/Uri;)V

    .line 227
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method public putExifData(Ljava/io/File;Lcom/android/gallery3d/exif/ExifInterface;Landroid/graphics/Bitmap;)Z
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "exif"    # Lcom/android/gallery3d/exif/ExifInterface;
    .param p3, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, "ret":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    const/4 v1, 0x1

    .line 162
    :goto_0
    return v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "SaveCopyTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 159
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "SaveCopyTask"

    const-string v3, "Could not write exif: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public putPanoramaXMPData(Ljava/io/File;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "xmp"    # Ljava/lang/Object;

    .prologue
    .line 127
    if-eqz p2, :cond_0

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/gallery3d/util/XmpUtilHelper;->writeXMPMeta(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
