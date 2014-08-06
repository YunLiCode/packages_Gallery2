.class Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumsLoader;
.super Ljava/lang/Object;
.source "PicasaAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/picasasource/PicasaAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/gallery3d/data/MediaSet;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/picasasource/PicasaAlbumSet;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/picasasource/PicasaAlbumSet;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/picasasource/PicasaAlbumSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/picasasource/PicasaAlbumSet;Lcom/android/gallery3d/picasasource/PicasaAlbumSet$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/picasasource/PicasaAlbumSet;
    .param p2, "x1"    # Lcom/android/gallery3d/picasasource/PicasaAlbumSet$1;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumsLoader;-><init>(Lcom/android/gallery3d/picasasource/PicasaAlbumSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumsLoader;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "jc"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/picasasource/PicasaAlbumSet;

    # invokes: Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->load(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->access$000(Lcom/android/gallery3d/picasasource/PicasaAlbumSet;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
