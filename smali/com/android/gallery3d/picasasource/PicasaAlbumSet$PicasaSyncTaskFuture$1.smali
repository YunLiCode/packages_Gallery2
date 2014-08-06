.class Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture$1;
.super Ljava/lang/Object;
.source "PicasaAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->cancel()V
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
.field final synthetic this$0:Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture$1;->this$0:Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture$1;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 1
    .param p1, "jc"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture$1;->this$0:Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;

    # invokes: Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->cancelInternal()V
    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->access$200(Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;)V

    .line 423
    const/4 v0, 0x0

    return-object v0
.end method
