.class Lcom/android/camera/MediaSaveService$VideoSaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoSaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private duration:J

.field private listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private path:Ljava/lang/String;

.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/camera/MediaSaveService;

.field private values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaveService;Ljava/lang/String;JLandroid/content/ContentValues;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "values"    # Landroid/content/ContentValues;
    .param p6, "l"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .param p7, "r"    # Landroid/content/ContentResolver;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->path:Ljava/lang/String;

    .line 179
    iput-wide p3, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->duration:J

    .line 180
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p5}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->values:Landroid/content/ContentValues;

    .line 181
    iput-object p6, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 182
    iput-object p7, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->resolver:Landroid/content/ContentResolver;

    .line 183
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 8
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 192
    iget-object v4, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->values:Landroid/content/ContentValues;

    const-string v5, "_size"

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    iget-object v4, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->values:Landroid/content/ContentValues;

    const-string v5, "duration"

    iget-wide v6, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->duration:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    const/4 v2, 0x0

    .line 196
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    const-string v4, "content://media/external/video/media"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 197
    .local v3, "videoTable":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->resolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->values:Landroid/content/ContentValues;

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 202
    iget-object v4, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->values:Landroid/content/ContentValues;

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "finalName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    iput-object v1, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->path:Ljava/lang/String;

    .line 208
    :cond_0
    iget-object v4, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->resolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->values:Landroid/content/ContentValues;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    # getter for: Lcom/android/camera/MediaSaveService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current video URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v1    # "finalName":Ljava/lang/String;
    .end local v3    # "videoTable":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 209
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    # getter for: Lcom/android/camera/MediaSaveService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "failed to add video to media store"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    const/4 v2, 0x0

    .line 215
    # getter for: Lcom/android/camera/MediaSaveService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current video URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    # getter for: Lcom/android/camera/MediaSaveService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/MediaSaveService;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current video URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 169
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaveService$VideoSaveTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MediaSaveService$VideoSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/MediaSaveService$OnMediaSavedListener;->onMediaSaved(Landroid/net/Uri;)V

    .line 223
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 169
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaveService$VideoSaveTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method
