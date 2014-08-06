.class Lcom/android/gallery3d/picasasource/PicasaAlbum$WhereEntry;
.super Ljava/lang/Object;
.source "PicasaAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/picasasource/PicasaAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WhereEntry"
.end annotation


# instance fields
.field public args:[Ljava/lang/String;

.field public selection:Ljava/lang/String;


# direct methods
.method public constructor <init>(JI)V
    .locals 5
    .param p1, "albumId"    # J
    .param p3, "type"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "id":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 85
    :pswitch_0
    const-string v1, "album_id = ?"

    iput-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum$WhereEntry;->selection:Ljava/lang/String;

    .line 86
    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum$WhereEntry;->args:[Ljava/lang/String;

    .line 90
    :goto_0
    return-void

    .line 75
    :pswitch_1
    const-string v1, "album_id = ? AND content_type LIKE ?"

    iput-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum$WhereEntry;->selection:Ljava/lang/String;

    .line 76
    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v2

    const-string v2, "image/%"

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum$WhereEntry;->args:[Ljava/lang/String;

    goto :goto_0

    .line 80
    :pswitch_2
    const-string v1, "album_id = ? AND content_type LIKE ?"

    iput-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum$WhereEntry;->selection:Ljava/lang/String;

    .line 81
    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v2

    const-string v2, "video/%"

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum$WhereEntry;->args:[Ljava/lang/String;

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
