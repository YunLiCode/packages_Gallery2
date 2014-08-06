.class Lcom/google/android/photos/data/GooglePhotoProvider$1;
.super Ljava/lang/Object;
.source "GooglePhotoProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/photos/data/GooglePhotoProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/photos/data/GooglePhotoProvider;

.field final synthetic val$pipe:[Landroid/os/ParcelFileDescriptor;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/photos/data/GooglePhotoProvider;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/photos/data/GooglePhotoProvider$1;->this$0:Lcom/google/android/photos/data/GooglePhotoProvider;

    iput-object p2, p0, Lcom/google/android/photos/data/GooglePhotoProvider$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/photos/data/GooglePhotoProvider$1;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 232
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    iget-object v4, p0, Lcom/google/android/photos/data/GooglePhotoProvider$1;->val$url:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/picasastore/HttpUtils;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 233
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v4, p0, Lcom/google/android/photos/data/GooglePhotoProvider$1;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v1, v3}, Lcom/android/photos/data/MediaCacheUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    iget-object v4, p0, Lcom/google/android/photos/data/GooglePhotoProvider$1;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    aget-object v4, v4, v6

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v2, v3

    .line 240
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    # getter for: Lcom/google/android/photos/data/GooglePhotoProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/photos/data/GooglePhotoProvider;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Couldn\'t read from server:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    iget-object v4, p0, Lcom/google/android/photos/data/GooglePhotoProvider$1;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    aget-object v4, v4, v6

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    iget-object v5, p0, Lcom/google/android/photos/data/GooglePhotoProvider$1;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    aget-object v5, v5, v6

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v4

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 235
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method
