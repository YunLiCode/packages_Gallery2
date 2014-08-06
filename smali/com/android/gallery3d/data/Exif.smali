.class public Lcom/android/gallery3d/data/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(Ljava/io/InputStream;)I
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .line 31
    if-nez p0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v3

    .line 34
    :cond_1
    new-instance v1, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 36
    .local v1, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 37
    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v2

    .line 38
    .local v2, "val":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v2}, Ljava/lang/Integer;->shortValue()S

    move-result v4

    invoke-static {v4}, Lcom/android/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 43
    .end local v2    # "val":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "CameraExif"

    const-string v5, "Failed to read EXIF orientation"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
