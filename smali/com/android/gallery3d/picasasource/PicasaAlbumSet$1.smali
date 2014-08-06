.class Lcom/android/gallery3d/picasasource/PicasaAlbumSet$1;
.super Ljava/lang/Object;
.source "PicasaAlbumSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->onFutureDone(Lcom/android/gallery3d/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/picasasource/PicasaAlbumSet;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/picasasource/PicasaAlbumSet;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$1;->this$0:Lcom/android/gallery3d/picasasource/PicasaAlbumSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$1;->this$0:Lcom/android/gallery3d/picasasource/PicasaAlbumSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->notifyContentChanged()V

    .line 307
    return-void
.end method
