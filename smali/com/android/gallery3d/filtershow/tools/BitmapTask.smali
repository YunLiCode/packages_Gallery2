.class public Lcom/android/gallery3d/filtershow/tools/BitmapTask;
.super Landroid/os/AsyncTask;
.source "BitmapTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TT;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/android/gallery3d/filtershow/tools/BitmapTask;, "Lcom/android/gallery3d/filtershow/tools/BitmapTask<TT;>;"
    .local p1, "callbacks":Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;, "Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks<TT;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/tools/BitmapTask;->mCallbacks:Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;

    .line 32
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/android/gallery3d/filtershow/tools/BitmapTask;, "Lcom/android/gallery3d/filtershow/tools/BitmapTask<TT;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TT;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/BitmapTask;->mCallbacks:Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;

    if-nez v0, :cond_1

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/BitmapTask;->mCallbacks:Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;->onExecute(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 25
    .local p0, "this":Lcom/android/gallery3d/filtershow/tools/BitmapTask;, "Lcom/android/gallery3d/filtershow/tools/BitmapTask<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/tools/BitmapTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/android/gallery3d/filtershow/tools/BitmapTask;, "Lcom/android/gallery3d/filtershow/tools/BitmapTask<TT;>;"
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/BitmapTask;->mCallbacks:Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/BitmapTask;->mCallbacks:Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;->onCancel()V

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    .local p0, "this":Lcom/android/gallery3d/filtershow/tools/BitmapTask;, "Lcom/android/gallery3d/filtershow/tools/BitmapTask<TT;>;"
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/BitmapTask;->mCallbacks:Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/BitmapTask;->mCallbacks:Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;->onComplete(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    .local p0, "this":Lcom/android/gallery3d/filtershow/tools/BitmapTask;, "Lcom/android/gallery3d/filtershow/tools/BitmapTask<TT;>;"
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/tools/BitmapTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
