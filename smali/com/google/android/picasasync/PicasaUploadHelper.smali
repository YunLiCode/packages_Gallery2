.class public Lcom/google/android/picasasync/PicasaUploadHelper;
.super Ljava/lang/Object;
.source "PicasaUploadHelper.java"


# static fields
.field private static final PICASA_BASE_UPLOAD_URL:Landroid/net/Uri;

.field private static final PROJECTION_DATA:[Ljava/lang/String;

.field private static final PROJECTION_DATE_TAKEN:[Ljava/lang/String;

.field private static final PROJECTION_SIZE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    const-string v0, "https://picasaweb.google.com/data/upload/resumable/media/create-session/feed/api/user/default/albumid/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaUploadHelper;->PICASA_BASE_UPLOAD_URL:Landroid/net/Uri;

    .line 62
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/picasasync/PicasaUploadHelper;->PROJECTION_DATA:[Ljava/lang/String;

    .line 63
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_size"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/picasasync/PicasaUploadHelper;->PROJECTION_SIZE:[Ljava/lang/String;

    .line 64
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "datetaken"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/picasasync/PicasaUploadHelper;->PROJECTION_DATE_TAKEN:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 368
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "summary"    # Ljava/lang/String;
    .param p2, "dateTaken"    # Ljava/util/Date;
    .param p3, "streamId"    # Ljava/lang/String;

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\r\n<entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:gphoto=\'http://schemas.google.com/photos/2007\'><category scheme=\'http://schemas.google.com/g/2005#kind\' term=\'http://schemas.google.com/photos/2007#photo\'/>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, "</title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    const-string v1, "<summary>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v1, "</summary>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_0
    const-string v1, "<gphoto:timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 342
    const-string v1, "</gphoto:timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    const-string v1, "<gphoto:streamId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v1, "</gphoto:streamId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_1
    const-string v1, "<gphoto:streamId>mobile_uploaded</gphoto:streamId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v1, "</entry>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildRequestTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p0, "userAgent"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "dateTaken"    # Ljava/util/Date;
    .param p5, "streamId"    # Ljava/lang/String;
    .param p6, "length"    # J

    .prologue
    .line 309
    invoke-static {p1}, Lcom/google/android/picasasync/PicasaUploadHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "filename":Ljava/lang/String;
    if-nez p4, :cond_0

    new-instance p4, Ljava/util/Date;

    .end local p4    # "dateTaken":Ljava/util/Date;
    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    .line 312
    .restart local p4    # "dateTaken":Ljava/util/Date;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authorization: GoogleLogin auth=%=_auth_token_=%\r\nUser-Agent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GData-Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "4.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Slug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X-Upload-Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X-Upload-Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Type: application/atom+xml; charset=UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, p3, p4, p5}, Lcom/google/android/picasasync/PicasaUploadHelper;->buildMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildUploadUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "albumId"    # Ljava/lang/String;
    .param p1, "streamId"    # Ljava/lang/String;

    .prologue
    .line 359
    sget-object v0, Lcom/google/android/picasasync/PicasaUploadHelper;->PICASA_BASE_UPLOAD_URL:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caid"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "xmlerrors"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fillRequest(Landroid/content/Context;Lcom/google/android/picasasync/UploadTaskEntry;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 153
    .local v14, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v10

    .line 155
    .local v10, "contentUri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, "albumId":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 158
    const-string v9, "camera-sync"

    .line 159
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/android/picasasync/UploadTaskEntry;->setAlbumId(Ljava/lang/String;)V

    .line 162
    :cond_0
    const-string v1, "lh2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/picasasync/UploadTaskEntry;->setAuthTokenType(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/UploadTaskEntry;->hasPriority()Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/picasasync/UploadTaskEntry;->setPriority(I)V

    .line 171
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/UploadTaskEntry;->hasFingerprint()Z

    move-result v1

    if-nez v1, :cond_3

    .line 172
    const/4 v1, 0x1

    new-array v11, v1, [J

    .line 173
    .local v11, "dataLength":[J
    invoke-virtual {v14, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/android/gallery3d/common/Fingerprint;->fromInputStream(Ljava/io/InputStream;[J)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/picasasync/UploadTaskEntry;->setFingerprint(Lcom/android/gallery3d/common/Fingerprint;)V

    .line 175
    const/4 v1, 0x0

    aget-wide v7, v11, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesTotal(J)V

    .line 180
    .end local v11    # "dataLength":[J
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "contentType":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 183
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/google/android/picasasync/PicasaUploadHelper;->setContentType(Landroid/content/ContentResolver;Lcom/google/android/picasasync/UploadTaskEntry;)Ljava/lang/String;

    move-result-object v3

    .line 184
    if-nez v3, :cond_4

    new-instance v1, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MIME type not known for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    .end local v3    # "contentType":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v7

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-gtz v1, :cond_2

    .line 177
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/google/android/picasasync/PicasaUploadHelper;->setFileSize(Landroid/content/ContentResolver;Lcom/google/android/picasasync/UploadTaskEntry;)V

    goto :goto_0

    .line 187
    .restart local v3    # "contentType":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getCaption()Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "caption":Ljava/lang/String;
    sget-object v1, Lcom/google/android/picasasync/PicasaUploadHelper;->PROJECTION_DATE_TAKEN:[Ljava/lang/String;

    const-wide/16 v7, 0x0

    invoke-static {v14, v10, v1, v7, v8}, Lcom/google/android/picasasync/PicasaUploadHelper;->getOptionalLong(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;J)J

    move-result-wide v12

    .line 189
    .local v12, "dateTakenMillis":J
    const-wide/16 v7, 0x0

    cmp-long v1, v12, v7

    if-lez v1, :cond_6

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 190
    .local v5, "dateTaken":Ljava/util/Date;
    :goto_1
    sget-object v1, Lcom/google/android/picasasync/PicasaUploadHelper;->PROJECTION_DATA:[Ljava/lang/String;

    invoke-static {v14, v10, v1}, Lcom/google/android/picasasync/PicasaUploadHelper;->getOptionalString(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "filePath":Ljava/lang/String;
    if-nez v2, :cond_5

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, "streamId":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/gallery3d/common/Utils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Lcom/google/android/picasasync/PicasaUploadHelper;->buildRequestTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/picasasync/UploadTaskEntry;->setRequestTemplate(Ljava/lang/String;)V

    .line 195
    invoke-static {v9, v6}, Lcom/google/android/picasasync/PicasaUploadHelper;->buildUploadUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/picasasync/UploadTaskEntry;->setUrl(Ljava/lang/String;)V

    .line 196
    return-void

    .line 189
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v5    # "dateTaken":Ljava/util/Date;
    .end local v6    # "streamId":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static getFileLengthFromContent(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 267
    const/4 v4, 0x0

    .line 269
    .local v4, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 270
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 271
    .local v0, "buffer":[B
    const-wide/16 v1, 0x0

    .line 272
    .local v1, "count":J
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 273
    .local v5, "n":I
    :goto_0
    if-ltz v5, :cond_0

    .line 274
    int-to-long v6, v5

    add-long/2addr v1, v6

    .line 275
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    goto :goto_0

    .line 285
    :cond_0
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-wide v1

    .line 278
    .end local v0    # "buffer":[B
    .end local v1    # "count":J
    .end local v5    # "n":I
    :catch_0
    move-exception v3

    .line 279
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    instance-of v6, v3, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_1

    .line 280
    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3    # "e":Ljava/lang/Exception;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :catchall_0
    move-exception v6

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .line 282
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static getFileLengthFromRawFdOrContent(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 255
    const/4 v1, 0x0

    .line 257
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v2, "r"

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 262
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    :cond_0
    :goto_0
    return-wide v2

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {p0, p1}, Lcom/google/android/picasasync/PicasaUploadHelper;->getFileLengthFromContent(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 262
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    :cond_1
    throw v2
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 291
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 292
    .local v0, "index":I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static getOptionalLong(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;J)J
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 241
    const/4 v6, 0x0

    .line 243
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide p3

    .line 248
    .end local p3    # "defaultValue":J
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-wide p3

    .line 245
    .restart local p3    # "defaultValue":J
    :catch_0
    move-exception v7

    .line 248
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static getOptionalString(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 228
    const/4 v6, 0x0

    .line 230
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 235
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v8

    .line 231
    goto :goto_0

    .line 232
    :catch_0
    move-exception v7

    .line 235
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method static setContentType(Landroid/content/ContentResolver;Lcom/google/android/picasasync/UploadTaskEntry;)Ljava/lang/String;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;

    .prologue
    .line 203
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p1, v0}, Lcom/google/android/picasasync/UploadTaskEntry;->setMimeType(Ljava/lang/String;)V

    .line 209
    .end local v0    # "type":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "type":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getMimeType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static setFileSize(Landroid/content/ContentResolver;Lcom/google/android/picasasync/UploadTaskEntry;)V
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;

    .prologue
    const-wide/16 v4, 0x0

    .line 214
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 215
    .local v0, "contentUri":Landroid/net/Uri;
    sget-object v3, Lcom/google/android/picasasync/PicasaUploadHelper;->PROJECTION_SIZE:[Ljava/lang/String;

    invoke-static {p0, v0, v3, v4, v5}, Lcom/google/android/picasasync/PicasaUploadHelper;->getOptionalLong(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;J)J

    move-result-wide v1

    .line 219
    .local v1, "size":J
    cmp-long v3, v1, v4

    if-nez v3, :cond_0

    .line 220
    invoke-static {p0, v0}, Lcom/google/android/picasasync/PicasaUploadHelper;->getFileLengthFromRawFdOrContent(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v1

    .line 222
    :cond_0
    cmp-long v3, v1, v4

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no content to upload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 223
    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesTotal(J)V

    .line 224
    return-void
.end method
