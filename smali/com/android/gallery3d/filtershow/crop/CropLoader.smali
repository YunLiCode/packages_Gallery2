.class public abstract Lcom/android/gallery3d/filtershow/crop/CropLoader;
.super Ljava/lang/Object;
.source "CropLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/crop/CropLoader$ContentResolverQueryCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 219
    return-void
.end method

.method public static getConstrainedBitmap(Landroid/net/Uri;Landroid/content/Context;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxSideLength"    # I
    .param p3, "originalBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 116
    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 117
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "bad argument to getScaledBitmap"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 119
    :cond_1
    const/4 v3, 0x0

    .line 122
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 123
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 124
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 125
    const/4 v8, 0x0

    invoke-static {v3, v8, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 126
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 127
    .local v6, "w":I
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 128
    .local v1, "h":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9, v6, v1}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    if-lez v6, :cond_2

    if-gtz v1, :cond_3

    .line 162
    :cond_2
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 164
    .end local v1    # "h":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "w":I
    :goto_0
    return-object v7

    .line 135
    .restart local v1    # "h":I
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "w":I
    :cond_3
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 138
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 139
    .local v2, "imageSide":I
    const/4 v8, 0x1

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 140
    if-le v2, p2, :cond_4

    .line 141
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v9

    sub-int v5, v8, v9

    .line 143
    .local v5, "shifts":I
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 147
    .end local v5    # "shifts":I
    :cond_4
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-lez v8, :cond_5

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v8, v9
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v8, :cond_6

    .line 162
    :cond_5
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 153
    :cond_6
    const/4 v8, 0x1

    :try_start_2
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 154
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 156
    const/4 v8, 0x0

    invoke-static {v3, v8, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 162
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 157
    .end local v1    # "h":I
    .end local v2    # "imageSide":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "w":I
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v8, "CropLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 159
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string v8, "CropLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 162
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v7
.end method

.method public static getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .prologue
    .line 197
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/crop/CropLoader;->getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 198
    .local v0, "saveDirectory":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "saveDirectory":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "EditedOnlinePhotos"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    .restart local v0    # "saveDirectory":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 205
    :cond_2
    return-object v0
.end method

.method public static getMetadataRotation(Landroid/net/Uri;Landroid/content/Context;)I
    .locals 14
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x0

    .line 64
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad argument to getScaledBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 69
    .local v9, "mimeType":Ljava/lang/String;
    const-string v0, "image/jpeg"

    if-eq v9, v0, :cond_2

    .line 100
    .end local v9    # "mimeType":Ljava/lang/String;
    :goto_0
    return v13

    .line 72
    .restart local v9    # "mimeType":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 73
    .local v12, "path":Ljava/lang/String;
    const/4 v11, 0x0

    .line 74
    .local v11, "orientation":I
    new-instance v8, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v8}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 76
    .local v8, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v8, v12}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 77
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    :goto_1
    move v13, v11

    .line 82
    goto :goto_0

    .line 79
    :catch_0
    move-exception v7

    .line 80
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "CropLoader"

    const-string v1, "Failed to read EXIF orientation"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 84
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "exif":Lcom/android/gallery3d/exif/ExifInterface;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v11    # "orientation":I
    .end local v12    # "path":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    .line 86
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "orientation"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 90
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 91
    .local v10, "ori":I
    if-gez v10, :cond_4

    move v10, v13

    .line 98
    .end local v10    # "ori":I
    :cond_4
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v13, v10

    goto :goto_0

    :cond_5
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 93
    :catch_1
    move-exception v7

    .line 98
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 95
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v7

    .line 98
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getNewFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/crop/CropLoader;->getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 216
    .local v0, "saveDirectory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".JPG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getNewFileName(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 211
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/sql/Date;

    invoke-direct {v1, p0, p1}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 244
    new-array v0, v1, [Ljava/io/File;

    .line 245
    .local v0, "dir":[Ljava/io/File;
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_data"

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/gallery3d/filtershow/crop/CropLoader$1;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/filtershow/crop/CropLoader$1;-><init>([Ljava/io/File;)V

    invoke-static {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/crop/CropLoader;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/crop/CropLoader$ContentResolverQueryCallback;)V

    .line 252
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

    .line 257
    const-wide/16 v2, 0x3e8

    div-long/2addr p4, v2

    .line 259
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v2, "_display_name"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v2, "mime_type"

    const-string v3, "image/jpeg"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v2, "datetaken"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 264
    const-string v2, "date_modified"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 265
    const-string v2, "date_added"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 266
    const-string v2, "orientation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    const-string v2, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v2, "_size"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
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

    .line 274
    .local v0, "projection":[Ljava/lang/String;
    new-instance v2, Lcom/android/gallery3d/filtershow/crop/CropLoader$2;

    invoke-direct {v2, v1}, Lcom/android/gallery3d/filtershow/crop/CropLoader$2;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p0, p1, v0, v2}, Lcom/android/gallery3d/filtershow/crop/CropLoader;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/crop/CropLoader$ContentResolverQueryCallback;)V

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static makeAndInsertUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .prologue
    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 298
    .local v4, "time":J
    invoke-static {v4, v5}, Lcom/android/gallery3d/filtershow/crop/CropLoader;->getNewFileName(J)Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "filename":Ljava/lang/String;
    invoke-static {p0, p1, v3}, Lcom/android/gallery3d/filtershow/crop/CropLoader;->getNewFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .local v2, "file":Ljava/io/File;
    move-object v0, p0

    move-object v1, p1

    .line 300
    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/crop/CropLoader;->insertContent(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/crop/CropLoader$ContentResolverQueryCallback;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/gallery3d/filtershow/crop/CropLoader$ContentResolverQueryCallback;

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 227
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 229
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 231
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-interface {p3, v6}, Lcom/android/gallery3d/filtershow/crop/CropLoader$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_0
    if-eqz v6, :cond_1

    .line 238
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 241
    :cond_1
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v1

    .line 237
    if-eqz v6, :cond_1

    .line 238
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 238
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method
