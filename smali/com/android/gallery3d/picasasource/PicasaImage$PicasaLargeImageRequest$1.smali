.class Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest$1;
.super Ljava/lang/Object;
.source "PicasaImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest;

.field final synthetic val$s:Lcom/android/gallery3d/picasasource/CancelableInputStream;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest;Lcom/android/gallery3d/picasasource/CancelableInputStream;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest$1;->this$1:Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest;

    iput-object p2, p0, Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest$1;->val$s:Lcom/android/gallery3d/picasasource/CancelableInputStream;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest$1;->val$s:Lcom/android/gallery3d/picasasource/CancelableInputStream;

    invoke-virtual {v0}, Lcom/android/gallery3d/picasasource/CancelableInputStream;->cancel()V

    .line 142
    return-void
.end method
