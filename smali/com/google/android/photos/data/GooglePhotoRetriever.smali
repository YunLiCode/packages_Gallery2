.class public Lcom/google/android/photos/data/GooglePhotoRetriever;
.super Ljava/lang/Object;
.source "GooglePhotoRetriever.java"

# interfaces
.implements Lcom/android/photos/data/MediaRetriever;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/photos/data/GooglePhotoRetriever$1;
    }
.end annotation


# static fields
.field private static final ALBUM_CONTENT_START:Ljava/lang/String;

.field private static final PROJECTION_LOCAL_PATH:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 24
    const-class v0, Lcom/google/android/photos/data/GooglePhotoRetriever;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/photos/data/GooglePhotoRetriever;->TAG:Ljava/lang/String;

    .line 25
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "local_path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/photos/data/GooglePhotoRetriever;->PROJECTION_LOCAL_PATH:[Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/android/photos/data/PhotoProvider$Albums;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/photos/data/GooglePhotoRetriever;->ALBUM_CONTENT_START:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/photos/data/GooglePhotoRetriever;->sUriMatcher:Landroid/content/UriMatcher;

    .line 37
    sget-object v0, Lcom/google/android/photos/data/GooglePhotoRetriever;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.gallery3d.photoprovider"

    const-string v2, "photos/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    sget-object v0, Lcom/google/android/photos/data/GooglePhotoRetriever;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.gallery3d.photoprovider"

    const-string v2, "albums/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/photos/data/GooglePhotoRetriever;->mResolver:Landroid/content/ContentResolver;

    .line 43
    return-void
.end method

.method private static isAlbum(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/photos/data/GooglePhotoRetriever;->ALBUM_CONTENT_START:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getFastImageSize(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Lcom/android/photos/data/MediaRetriever$MediaSize;
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-static {p1}, Lcom/google/android/photos/data/GooglePhotoRetriever;->isAlbum(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    :goto_0
    :pswitch_0
    return-object v0

    .line 68
    :cond_0
    sget-object v1, Lcom/google/android/photos/data/GooglePhotoRetriever$1;->$SwitchMap$com$android$photos$data$MediaRetriever$MediaSize:[I

    invoke-virtual {p2}, Lcom/android/photos/data/MediaRetriever$MediaSize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_1
    sget-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    goto :goto_0

    .line 74
    :pswitch_2
    sget-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->Preview:Lcom/android/photos/data/MediaRetriever$MediaSize;

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLocalFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-static {p1}, Lcom/google/android/photos/data/GooglePhotoRetriever;->isAlbum(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-object v4

    .line 50
    :cond_0
    const-string v3, "local_path IS NOT NULL"

    .line 51
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/photos/data/GooglePhotoRetriever;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/photos/data/GooglePhotoRetriever;->PROJECTION_LOCAL_PATH:[Ljava/lang/String;

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 52
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 53
    .local v7, "file":Ljava/io/File;
    if-eqz v6, :cond_2

    .line 54
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v7, Ljava/io/File;

    .end local v7    # "file":Ljava/io/File;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .restart local v7    # "file":Ljava/io/File;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v4, v7

    .line 59
    goto :goto_0
.end method

.method public getMedia(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;Ljava/io/File;)Z
    .locals 9
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "imageSize"    # Lcom/android/photos/data/MediaRetriever$MediaSize;
    .param p3, "tempFile"    # Ljava/io/File;

    .prologue
    .line 88
    move-object v6, p1

    .line 89
    .local v6, "uri":Landroid/net/Uri;
    invoke-static {p1}, Lcom/google/android/photos/data/GooglePhotoRetriever;->isAlbum(Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 90
    invoke-virtual {p2}, Lcom/android/photos/data/MediaRetriever$MediaSize;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "size":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "media_size"

    invoke-virtual {v7, v8, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 94
    .end local v4    # "size":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 95
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 96
    .local v2, "out":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 98
    .local v5, "success":Z
    :try_start_0
    iget-object v7, p0, Lcom/google/android/photos/data/GooglePhotoRetriever;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 99
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {v1, v3}, Lcom/android/photos/data/MediaCacheUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    const/4 v5, 0x1

    move-object v2, v3

    .line 108
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v5

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    sget-object v7, Lcom/google/android/photos/data/GooglePhotoRetriever;->TAG:Ljava/lang/String;

    const-string v8, "Could not download"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 105
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 106
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public getTemporaryImage(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)[B
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "temporarySize"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public normalizeMediaSize(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Lcom/android/photos/data/MediaRetriever$MediaSize;
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 128
    sget-object v1, Lcom/google/android/photos/data/GooglePhotoRetriever;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 129
    .local v0, "match":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 131
    sget-object p2, Lcom/android/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    .line 133
    :cond_0
    return-object p2
.end method

.method public normalizeUri(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Landroid/net/Uri;
    .locals 5
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 117
    sget-object v4, Lcom/google/android/photos/data/GooglePhotoRetriever;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 118
    .local v3, "match":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 119
    const/4 v4, 0x0

    .line 123
    :goto_0
    return-object v4

    .line 121
    :cond_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 122
    .local v1, "id":J
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    sget-object v0, Lcom/android/photos/data/PhotoProvider$Photos;->CONTENT_URI:Landroid/net/Uri;

    .line 123
    .local v0, "baseUri":Landroid/net/Uri;
    :goto_1
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 122
    .end local v0    # "baseUri":Landroid/net/Uri;
    :cond_1
    sget-object v0, Lcom/android/photos/data/PhotoProvider$Albums;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1
.end method
