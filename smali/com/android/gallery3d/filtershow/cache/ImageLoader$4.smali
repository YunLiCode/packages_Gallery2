.class Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/cache/ImageLoader;->saveToUri(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/String;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field final synthetic val$filterShowActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field final synthetic val$ios:Lcom/android/gallery3d/util/InterruptableOutputStream;

.field final synthetic val$outputFormat:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/util/InterruptableOutputStream;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;->this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;->val$filterShowActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;->val$ios:Lcom/android/gallery3d/util/InterruptableOutputStream;

    iput-object p4, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;->val$outputFormat:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;->val$ios:Lcom/android/gallery3d/util/InterruptableOutputStream;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/InterruptableOutputStream;->interrupt()V

    .line 610
    return-void
.end method

.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;->val$filterShowActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->done()V

    .line 605
    return-void
.end method

.method public onExecute(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "param"    # Landroid/graphics/Bitmap;

    .prologue
    .line 614
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;->this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;->this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;->val$outputFormat:Ljava/lang/String;

    # invokes: Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->access$300(Lcom/android/gallery3d/filtershow/cache/ImageLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/gallery3d/filtershow/cache/ImageLoader;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->access$400(Lcom/android/gallery3d/filtershow/cache/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    .line 615
    .local v0, "cf":Landroid/graphics/Bitmap$CompressFormat;
    const/16 v1, 0x5f

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;->val$ios:Lcom/android/gallery3d/util/InterruptableOutputStream;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 616
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;->val$ios:Lcom/android/gallery3d/util/InterruptableOutputStream;

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 617
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic onExecute(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 600
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;->onExecute(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
