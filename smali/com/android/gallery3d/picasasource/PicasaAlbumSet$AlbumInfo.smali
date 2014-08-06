.class Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;
.super Ljava/lang/Object;
.source "PicasaAlbumSet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/picasasource/PicasaAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public date:J

.field public set:Lcom/android/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(JLcom/android/gallery3d/data/MediaSet;)V
    .locals 0
    .param p1, "date"    # J
    .param p3, "set"    # Lcom/android/gallery3d/data/MediaSet;

    .prologue
    .line 199
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-wide p1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;->date:J

    .line 201
    iput-object p3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;->set:Lcom/android/gallery3d/data/MediaSet;

    .line 202
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;)I
    .locals 4
    .param p1, "other"    # Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;

    .prologue
    .line 208
    iget-wide v0, p1, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;->date:J

    iget-wide v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;->date:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    .line 210
    :goto_0
    return v0

    .line 209
    :cond_0
    iget-wide v0, p1, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;->date:J

    iget-wide v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;->date:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 195
    check-cast p1, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;->compareTo(Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumInfo;)I

    move-result v0

    return v0
.end method
