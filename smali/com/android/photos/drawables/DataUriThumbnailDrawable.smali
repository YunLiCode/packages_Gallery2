.class public Lcom/android/photos/drawables/DataUriThumbnailDrawable;
.super Lcom/android/photos/drawables/AutoThumbnailDrawable;
.source "DataUriThumbnailDrawable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/photos/drawables/AutoThumbnailDrawable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/photos/drawables/AutoThumbnailDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic dataChangedLocked(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/photos/drawables/DataUriThumbnailDrawable;->dataChangedLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected dataChangedLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getFallbackImageStream(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/photos/drawables/DataUriThumbnailDrawable;->getFallbackImageStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getFallbackImageStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 44
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getPreferredImageBytes(Ljava/lang/Object;)[B
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/photos/drawables/DataUriThumbnailDrawable;->getPreferredImageBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected getPreferredImageBytes(Ljava/lang/String;)[B
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v1, 0x0

    .line 33
    .local v1, "thumbnail":[B
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "exif":Landroid/media/ExifInterface;
    invoke-virtual {v0}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 38
    .end local v0    # "exif":Landroid/media/ExifInterface;
    :cond_0
    :goto_0
    return-object v1

    .line 37
    :catch_0
    move-exception v2

    goto :goto_0
.end method
