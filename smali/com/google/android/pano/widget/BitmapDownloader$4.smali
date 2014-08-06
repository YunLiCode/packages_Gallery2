.class Lcom/google/android/pano/widget/BitmapDownloader$4;
.super Lcom/google/android/pano/widget/BitmapWorkerTask;
.source "BitmapDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/widget/BitmapDownloader;->getBitmap(Lcom/google/android/pano/widget/BitmapWorkerOptions;Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/BitmapDownloader;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/BitmapDownloader;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;)V
    .locals 0
    .param p2, "x0"    # Landroid/widget/ImageView;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/pano/widget/BitmapDownloader$4;->this$0:Lcom/google/android/pano/widget/BitmapDownloader;

    iput-object p3, p0, Lcom/google/android/pano/widget/BitmapDownloader$4;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/google/android/pano/widget/BitmapDownloader$4;->val$callback:Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;

    invoke-direct {p0, p2}, Lcom/google/android/pano/widget/BitmapWorkerTask;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/google/android/pano/widget/BitmapDownloader$4;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/google/android/pano/widget/BitmapDownloader$4;->val$bitmap:Landroid/graphics/Bitmap;

    .line 166
    :cond_0
    :goto_0
    return-object v0

    .line 162
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->doInBackground([Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/google/android/pano/widget/BitmapDownloader$4;->this$0:Lcom/google/android/pano/widget/BitmapDownloader;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0}, Lcom/google/android/pano/widget/BitmapDownloader$4;->isScaled()Z

    move-result v3

    # invokes: Lcom/google/android/pano/widget/BitmapDownloader;->addBitmapToMemoryCache(Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/graphics/Bitmap;Z)V
    invoke-static {v1, v2, v0, v3}, Lcom/google/android/pano/widget/BitmapDownloader;->access$000(Lcom/google/android/pano/widget/BitmapDownloader;Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 156
    check-cast p1, [Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/BitmapDownloader$4;->doInBackground([Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/pano/widget/BitmapDownloader$4;->val$callback:Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;->onBitmapRetrieved(Landroid/graphics/Bitmap;)V

    .line 172
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 156
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/BitmapDownloader$4;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
