.class public Lcom/android/gallery3d/util/SaveVideoFileUtils;
.super Ljava/lang/Object;
.source "SaveVideoFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/SaveVideoFileUtils$ContentResolverQueryCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getDstMp4FileInfo(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/util/SaveVideoFileInfo;
    .locals 5
    .param p0, "fileNameFormat"    # Ljava/lang/String;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "defaultFolderName"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcom/android/gallery3d/util/SaveVideoFileInfo;

    invoke-direct {v0}, Lcom/android/gallery3d/util/SaveVideoFileInfo;-><init>()V

    .line 45
    .local v0, "dstFileInfo":Lcom/android/gallery3d/util/SaveVideoFileInfo;
    invoke-static {p1, p2}, Lcom/android/gallery3d/util/SaveVideoFileUtils;->getSaveDirectory(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    .line 46
    iget-object v1, v0, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "download"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    .line 49
    iput-object p3, v0, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mFolderName:Ljava/lang/String;

    .line 53
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mFileName:Ljava/lang/String;

    .line 56
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    .line 57
    return-object v0

    .line 51
    :cond_1
    iget-object v1, v0, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mFolderName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getSaveDirectory(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
    .locals 4
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 78
    new-array v0, v1, [Ljava/io/File;

    .line 79
    .local v0, "dir":[Ljava/io/File;
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_data"

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/gallery3d/util/SaveVideoFileUtils$1;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/util/SaveVideoFileUtils$1;-><init>([Ljava/io/File;)V

    invoke-static {p0, p1, v1, v2}, Lcom/android/gallery3d/util/SaveVideoFileUtils;->querySource(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/util/SaveVideoFileUtils$ContentResolverQueryCallback;)V

    .line 87
    aget-object v1, v0, v3

    return-object v1
.end method

.method public static insertContent(Lcom/android/gallery3d/util/SaveVideoFileInfo;Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 9
    .param p0, "mDstFileInfo"    # Lcom/android/gallery3d/util/SaveVideoFileInfo;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    .local v0, "nowInMs":J
    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    .line 98
    .local v2, "nowInSec":J
    new-instance v5, Landroid/content/ContentValues;

    const/16 v6, 0xc

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 99
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "title"

    iget-object v7, p0, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v6, "_display_name"

    iget-object v7, p0, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v6, "mime_type"

    const-string v7, "video/mp4"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v6, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    const-string v6, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    const-string v6, "date_added"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    const-string v6, "_data"

    iget-object v7, p0, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v6, "_size"

    iget-object v7, p0, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    const/4 v6, 0x4

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "datetaken"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "latitude"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "longitude"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "resolution"

    aput-object v7, v4, v6

    .line 116
    .local v4, "projection":[Ljava/lang/String;
    new-instance v6, Lcom/android/gallery3d/util/SaveVideoFileUtils$2;

    invoke-direct {v6, v5}, Lcom/android/gallery3d/util/SaveVideoFileUtils$2;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p1, p2, v4, v6}, Lcom/android/gallery3d/util/SaveVideoFileUtils;->querySource(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/util/SaveVideoFileUtils$ContentResolverQueryCallback;)V

    .line 138
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    return-object v6
.end method

.method private static querySource(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/util/SaveVideoFileUtils$ContentResolverQueryCallback;)V
    .locals 7
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/gallery3d/util/SaveVideoFileUtils$ContentResolverQueryCallback;

    .prologue
    .line 62
    const/4 v6, 0x0

    .line 64
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

    .line 65
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {p3, v6}, Lcom/android/gallery3d/util/SaveVideoFileUtils$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    if-eqz v6, :cond_1

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 71
    if-eqz v6, :cond_1

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
