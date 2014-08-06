.class Lcom/android/gallery3d/picasasource/PicasaAlbumSet$2;
.super Ljava/lang/Object;
.source "PicasaAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/picasasource/PicasaAlbumSet;

.field final synthetic val$syncFuture:Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/picasasource/PicasaAlbumSet;Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$2;->this$0:Lcom/android/gallery3d/picasasource/PicasaAlbumSet;

    iput-object p2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$2;->val$syncFuture:Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$2;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 2
    .param p1, "jc"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$2;->val$syncFuture:Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->startSync(Ljava/lang/String;)V

    .line 321
    return-object v1
.end method
