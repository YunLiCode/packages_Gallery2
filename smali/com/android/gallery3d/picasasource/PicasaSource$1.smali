.class Lcom/android/gallery3d/picasasource/PicasaSource$1;
.super Landroid/os/Handler;
.source "PicasaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/picasasource/PicasaSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/picasasource/PicasaSource;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/picasasource/PicasaSource;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/PicasaSource$1;->this$0:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource$1;->this$0:Lcom/android/gallery3d/picasasource/PicasaSource;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource$1;->this$0:Lcom/android/gallery3d/picasasource/PicasaSource;

    # getter for: Lcom/android/gallery3d/picasasource/PicasaSource;->mClient:Landroid/content/ContentProviderClient;
    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->access$100(Lcom/android/gallery3d/picasasource/PicasaSource;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource$1;->this$0:Lcom/android/gallery3d/picasasource/PicasaSource;

    # getter for: Lcom/android/gallery3d/picasasource/PicasaSource;->mClient:Landroid/content/ContentProviderClient;
    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->access$100(Lcom/android/gallery3d/picasasource/PicasaSource;)Landroid/content/ContentProviderClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource$1;->this$0:Lcom/android/gallery3d/picasasource/PicasaSource;

    const/4 v2, 0x0

    # setter for: Lcom/android/gallery3d/picasasource/PicasaSource;->mClient:Landroid/content/ContentProviderClient;
    invoke-static {v0, v2}, Lcom/android/gallery3d/picasasource/PicasaSource;->access$102(Lcom/android/gallery3d/picasasource/PicasaSource;Landroid/content/ContentProviderClient;)Landroid/content/ContentProviderClient;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource$1;->this$0:Lcom/android/gallery3d/picasasource/PicasaSource;

    # getter for: Lcom/android/gallery3d/picasasource/PicasaSource;->mStoreClient:Landroid/content/ContentProviderClient;
    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->access$200(Lcom/android/gallery3d/picasasource/PicasaSource;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource$1;->this$0:Lcom/android/gallery3d/picasasource/PicasaSource;

    # getter for: Lcom/android/gallery3d/picasasource/PicasaSource;->mStoreClient:Landroid/content/ContentProviderClient;
    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->access$200(Lcom/android/gallery3d/picasasource/PicasaSource;)Landroid/content/ContentProviderClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource$1;->this$0:Lcom/android/gallery3d/picasasource/PicasaSource;

    const/4 v2, 0x0

    # setter for: Lcom/android/gallery3d/picasasource/PicasaSource;->mStoreClient:Landroid/content/ContentProviderClient;
    invoke-static {v0, v2}, Lcom/android/gallery3d/picasasource/PicasaSource;->access$202(Lcom/android/gallery3d/picasasource/PicasaSource;Landroid/content/ContentProviderClient;)Landroid/content/ContentProviderClient;

    .line 144
    :cond_1
    monitor-exit v1

    .line 145
    return-void

    .line 134
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
