.class Lcom/android/gallery3d/picasasource/PicasaImage;
.super Lcom/android/gallery3d/data/MediaItem;
.source "PicasaImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest;,
        Lcom/android/gallery3d/picasasource/PicasaImage$PicasaBitmapJob;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_DIR:Ljava/io/File;

.field public static final ITEM_PATH:Lcom/android/gallery3d/data/Path;


# instance fields
.field private mData:Lcom/google/android/picasasync/PhotoEntry;

.field private mIsVideo:Z

.field private final mSource:Lcom/android/gallery3d/picasasource/PicasaSource;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/picasasource/PicasaImage;->DOWNLOAD_DIR:Ljava/io/File;

    .line 58
    const-string v0, "/picasa/item"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/picasasource/PicasaImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;Lcom/google/android/picasasync/PhotoEntry;)V
    .locals 2
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;
    .param p2, "source"    # Lcom/android/gallery3d/picasasource/PicasaSource;
    .param p3, "entry"    # Lcom/google/android/picasasync/PhotoEntry;

    .prologue
    .line 65
    invoke-static {}, Lcom/android/gallery3d/picasasource/PicasaImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 66
    iput-object p2, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    .line 67
    iput-object p3, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v0, v0, Lcom/google/android/picasasync/PhotoEntry;->contentType:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mIsVideo:Z

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/picasasource/PicasaImage;)Lcom/android/gallery3d/picasasource/PicasaSource;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/picasasource/PicasaImage;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    return-object v0
.end method

.method public static find(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;J)Lcom/android/gallery3d/picasasource/PicasaImage;
    .locals 2
    .param p0, "path"    # Lcom/android/gallery3d/data/Path;
    .param p1, "source"    # Lcom/android/gallery3d/picasasource/PicasaSource;
    .param p2, "id"    # J

    .prologue
    .line 72
    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/picasasource/PicasaAlbum;->getPhotoEntry(Lcom/android/gallery3d/picasasource/PicasaSource;J)Lcom/google/android/picasasync/PhotoEntry;

    move-result-object v0

    .line 73
    .local v0, "entry":Lcom/google/android/picasasync/PhotoEntry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 74
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/gallery3d/picasasource/PicasaImage;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/gallery3d/picasasource/PicasaImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;Lcom/google/android/picasasync/PhotoEntry;)V

    goto :goto_0
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-wide v0, v0, Lcom/google/android/picasasync/PhotoEntry;->albumId:J

    return-wide v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getApplication()Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-static {v0, v1}, Lcom/android/gallery3d/provider/GalleryProvider;->getUriFor(Landroid/content/Context;Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDateInMs()J
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-wide v0, v0, Lcom/google/android/picasasync/PhotoEntry;->dateTaken:J

    return-wide v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 11

    .prologue
    const/16 v10, 0x67

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 275
    invoke-super {p0}, Lcom/android/gallery3d/data/MediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 276
    .local v0, "details":Lcom/android/gallery3d/data/MediaDetails;
    iget-object v4, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v4, v4, Lcom/google/android/picasasync/PhotoEntry;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 277
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 278
    .local v1, "formater":Ljava/text/DateFormat;
    const/4 v4, 0x3

    new-instance v5, Ljava/util/Date;

    iget-object v6, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-wide v6, v6, Lcom/google/android/picasasync/PhotoEntry;->dateUpdated:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 280
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v5, v5, Lcom/google/android/picasasync/PhotoEntry;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 281
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v5, v5, Lcom/google/android/picasasync/PhotoEntry;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 282
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v5, v5, Lcom/google/android/picasasync/PhotoEntry;->rotation:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 283
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v5, v5, Lcom/google/android/picasasync/PhotoEntry;->size:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 285
    iget-object v4, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v4, v4, Lcom/google/android/picasasync/PhotoEntry;->summary:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v4, v4, Lcom/google/android/picasasync/PhotoEntry;->summary:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    iget-object v4, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v4, v4, Lcom/google/android/picasasync/PhotoEntry;->summary:Ljava/lang/String;

    invoke-virtual {v0, v9, v4}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 288
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-wide v4, v4, Lcom/google/android/picasasync/PhotoEntry;->latitude:D

    iget-object v6, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-wide v6, v6, Lcom/google/android/picasasync/PhotoEntry;->longitude:D

    invoke-static {v4, v5, v6, v7}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    const/4 v4, 0x4

    new-array v5, v9, [D

    iget-object v6, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-wide v6, v6, Lcom/google/android/picasasync/PhotoEntry;->latitude:D

    aput-wide v6, v5, v3

    iget-object v6, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-wide v6, v6, Lcom/google/android/picasasync/PhotoEntry;->longitude:D

    aput-wide v6, v5, v2

    invoke-virtual {v0, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 294
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v4, v4, Lcom/google/android/picasasync/PhotoEntry;->exifMake:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 295
    const/16 v4, 0x64

    iget-object v5, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v5, v5, Lcom/google/android/picasasync/PhotoEntry;->exifMake:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 297
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v4, v4, Lcom/google/android/picasasync/PhotoEntry;->exifModel:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 298
    const/16 v4, 0x65

    iget-object v5, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v5, v5, Lcom/google/android/picasasync/PhotoEntry;->exifModel:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 300
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v4, v4, Lcom/google/android/picasasync/PhotoEntry;->exifFlash:I

    if-eqz v4, :cond_4

    .line 301
    const/16 v4, 0x66

    new-instance v5, Lcom/android/gallery3d/data/MediaDetails$FlashState;

    iget-object v6, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v6, v6, Lcom/google/android/picasasync/PhotoEntry;->exifFlash:I

    if-ne v6, v2, :cond_9

    :goto_0
    invoke-direct {v5, v2}, Lcom/android/gallery3d/data/MediaDetails$FlashState;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 305
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v2, v2, Lcom/google/android/picasasync/PhotoEntry;->exifFocalLength:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_5

    .line 306
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v2, v2, Lcom/google/android/picasasync/PhotoEntry;->exifFocalLength:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 308
    const v2, 0x7f0b0203

    invoke-virtual {v0, v10, v2}, Lcom/android/gallery3d/data/MediaDetails;->setUnit(II)V

    .line 310
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v2, v2, Lcom/google/android/picasasync/PhotoEntry;->exifFstop:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_6

    .line 311
    const/16 v2, 0x69

    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v3, v3, Lcom/google/android/picasasync/PhotoEntry;->exifFstop:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 314
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v2, v2, Lcom/google/android/picasasync/PhotoEntry;->exifExposure:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_7

    .line 315
    const/16 v2, 0x6b

    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v3, v3, Lcom/google/android/picasasync/PhotoEntry;->exifExposure:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 318
    :cond_7
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v2, v2, Lcom/google/android/picasasync/PhotoEntry;->exifIso:I

    if-lez v2, :cond_8

    .line 319
    const/16 v2, 0x6c

    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v3, v3, Lcom/google/android/picasasync/PhotoEntry;->exifIso:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 323
    :cond_8
    return-object v0

    :cond_9
    move v2, v3

    .line 301
    goto :goto_0
.end method

.method public getFaces()[Lcom/android/gallery3d/data/Face;
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 191
    iget-object v12, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v7, v12, Lcom/google/android/picasasync/PhotoEntry;->faceNames:Ljava/lang/String;

    .line 192
    .local v7, "names":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v4, v12, Lcom/google/android/picasasync/PhotoEntry;->faceIds:Ljava/lang/String;

    .line 193
    .local v4, "ids":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v10, v12, Lcom/google/android/picasasync/PhotoEntry;->faceRects:Ljava/lang/String;

    .line 194
    .local v10, "rects":Ljava/lang/String;
    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    if-nez v10, :cond_1

    :cond_0
    move-object v12, v13

    .line 215
    :goto_0
    return-object v12

    .line 197
    :cond_1
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v11, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/Face;>;"
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v12, ","

    invoke-direct {v6, v7, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .local v6, "nameTokenizer":Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v12, ","

    invoke-direct {v3, v4, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v3, "idTokenizer":Ljava/util/StringTokenizer;
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v12, ","

    invoke-direct {v9, v10, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .local v9, "rectTokenizer":Ljava/util/StringTokenizer;
    :cond_2
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 204
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, "rect":Ljava/lang/String;
    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    if-eqz v8, :cond_2

    .line 208
    new-instance v12, Lcom/android/gallery3d/data/Face;

    invoke-direct {v12, v5, v2, v8}, Lcom/android/gallery3d/data/Face;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 213
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "idTokenizer":Ljava/util/StringTokenizer;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "nameTokenizer":Ljava/util/StringTokenizer;
    .end local v8    # "rect":Ljava/lang/String;
    .end local v9    # "rectTokenizer":Ljava/util/StringTokenizer;
    .end local v11    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/Face;>;"
    :catch_0
    move-exception v1

    .line 214
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v12, "PicasaImage"

    invoke-static {v12, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v12, v13

    .line 215
    goto :goto_0

    .line 211
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "idTokenizer":Ljava/util/StringTokenizer;
    .restart local v6    # "nameTokenizer":Ljava/util/StringTokenizer;
    .restart local v9    # "rectTokenizer":Ljava/util/StringTokenizer;
    .restart local v11    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/Face;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v0, v12, [Lcom/android/gallery3d/data/Face;

    .line 212
    .local v0, "array":[Lcom/android/gallery3d/data/Face;
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/android/gallery3d/data/Face;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getFullImageRotation()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v0, v0, Lcom/google/android/picasasync/PhotoEntry;->rotation:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v0, v0, Lcom/google/android/picasasync/PhotoEntry;->height:I

    return v0
.end method

.method public getLatLong([D)V
    .locals 3
    .param p1, "latLong"    # [D

    .prologue
    .line 171
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-wide v1, v1, Lcom/google/android/picasasync/PhotoEntry;->latitude:D

    aput-wide v1, p1, v0

    .line 172
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-wide v1, v1, Lcom/google/android/picasasync/PhotoEntry;->longitude:D

    aput-wide v1, p1, v0

    .line 173
    return-void
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mIsVideo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v0, v0, Lcom/google/android/picasasync/PhotoEntry;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v0, v0, Lcom/google/android/picasasync/PhotoEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 250
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v2, v2, Lcom/google/android/picasasync/PhotoEntry;->photoSphere:I

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-interface {p1, p0, v0, v1}, Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;->panoramaInfoAvailable(Lcom/android/gallery3d/data/MediaObject;ZZ)V

    .line 251
    return-void

    :cond_0
    move v0, v1

    .line 250
    goto :goto_0
.end method

.method public getPhotoEntry()Lcom/google/android/picasasync/PhotoEntry;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    return-object v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-wide v1, v1, Lcom/android/gallery3d/common/Entry;->id:J

    const-string v3, ".full"

    invoke-static {v1, v2, v3}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 262
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v1, v1, Lcom/google/android/picasasync/PhotoEntry;->contentUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v0, v0, Lcom/google/android/picasasync/PhotoEntry;->size:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSupportedOperations()I
    .locals 6

    .prologue
    .line 233
    iget-boolean v2, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mIsVideo:Z

    if-eqz v2, :cond_2

    const/16 v1, 0x80

    .line 236
    .local v1, "specialOps":I
    :goto_0
    or-int/lit16 v0, v1, 0x404

    .line 237
    .local v0, "operation":I
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v2, v2, Lcom/google/android/picasasync/PhotoEntry;->contentType:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    and-int/lit8 v0, v0, -0x41

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-wide v2, v2, Lcom/google/android/picasasync/PhotoEntry;->latitude:D

    iget-object v4, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-wide v4, v4, Lcom/google/android/picasasync/PhotoEntry;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    or-int/lit8 v0, v0, 0x10

    .line 243
    :cond_1
    return v0

    .line 233
    .end local v0    # "operation":I
    .end local v1    # "specialOps":I
    :cond_2
    const/16 v1, 0x268

    goto :goto_0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 177
    iget-object v4, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v1, v4, Lcom/google/android/picasasync/PhotoEntry;->keywords:Ljava/lang/String;

    .line 178
    .local v1, "content":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v4, 0x0

    .line 186
    :goto_0
    return-object v4

    .line 180
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 185
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 186
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget v0, v0, Lcom/google/android/picasasync/PhotoEntry;->width:I

    return v0
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const-string v0, "thumbnail"

    .line 87
    .local v0, "typeString":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v2}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaStoreFacade()Lcom/google/android/picasastore/PicasaStoreFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-wide v3, v3, Lcom/android/gallery3d/common/Entry;->id:J

    iget-object v5, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v5, v5, Lcom/google/android/picasasync/PhotoEntry;->screennailUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/google/android/picasastore/PicasaStoreFacade;->getPhotoUri(JLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 89
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Lcom/android/gallery3d/picasasource/PicasaImage$PicasaBitmapJob;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/gallery3d/picasasource/PicasaImage$PicasaBitmapJob;-><init>(Lcom/android/gallery3d/picasasource/PicasaImage;Landroid/net/Uri;I)V

    return-object v2

    .line 84
    .end local v0    # "typeString":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v0, "screennail"

    goto :goto_0
.end method

.method public requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaStoreFacade()Lcom/google/android/picasastore/PicasaStoreFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-wide v2, v2, Lcom/android/gallery3d/common/Entry;->id:J

    const-string v4, "full"

    iget-object v5, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    iget-object v5, v5, Lcom/google/android/picasasync/PhotoEntry;->contentUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/picasastore/PicasaStoreFacade;->getPhotoUri(JLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 161
    .local v0, "photoUri":Landroid/net/Uri;
    new-instance v1, Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest;-><init>(Lcom/android/gallery3d/picasasource/PicasaImage;Landroid/net/Uri;)V

    return-object v1
.end method

.method protected updateContent(Lcom/google/android/picasasync/PhotoEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/google/android/picasasync/PhotoEntry;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/picasasync/PhotoEntry;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/PicasaImage;->mData:Lcom/google/android/picasasync/PhotoEntry;

    .line 222
    invoke-static {}, Lcom/android/gallery3d/picasasource/PicasaImage;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 224
    :cond_0
    return-void
.end method
