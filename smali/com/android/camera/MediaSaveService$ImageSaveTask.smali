.class Lcom/android/camera/MediaSaveService$ImageSaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaveTask"
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
.field private data:[B

.field private date:J

.field private exif:Lcom/android/gallery3d/exif/ExifInterface;

.field private height:I

.field private listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private loc:Landroid/location/Location;

.field private orientation:I

.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/camera/MediaSaveService;

.field private title:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaveService;[BLjava/lang/String;JLandroid/location/Location;IIILcom/android/gallery3d/exif/ExifInterface;Landroid/content/ContentResolver;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;)V
    .locals 0
    .param p2, "data"    # [B
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "date"    # J
    .param p6, "loc"    # Landroid/location/Location;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "orientation"    # I
    .param p10, "exif"    # Lcom/android/gallery3d/exif/ExifInterface;
    .param p11, "resolver"    # Landroid/content/ContentResolver;
    .param p12, "listener"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->data:[B

    .line 139
    iput-object p3, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->title:Ljava/lang/String;

    .line 140
    iput-wide p4, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->date:J

    .line 141
    iput-object p6, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->loc:Landroid/location/Location;

    .line 142
    iput p7, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->width:I

    .line 143
    iput p8, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->height:I

    .line 144
    iput p9, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->orientation:I

    .line 145
    iput-object p10, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    .line 146
    iput-object p11, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->resolver:Landroid/content/ContentResolver;

    .line 147
    iput-object p12, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 148
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 10
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->title:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->date:J

    iget-object v4, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->loc:Landroid/location/Location;

    iget v5, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->orientation:I

    iget-object v6, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v7, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->data:[B

    iget v8, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->width:I

    iget v9, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->height:I

    invoke-static/range {v0 .. v9}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/gallery3d/exif/ExifInterface;[BII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 124
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaveService$ImageSaveTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->listener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/MediaSaveService$OnMediaSavedListener;->onMediaSaved(Landroid/net/Uri;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    # operator-- for: Lcom/android/camera/MediaSaveService;->mTaskNumber:I
    invoke-static {v0}, Lcom/android/camera/MediaSaveService;->access$010(Lcom/android/camera/MediaSaveService;)I

    .line 165
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    # getter for: Lcom/android/camera/MediaSaveService;->mTaskNumber:I
    invoke-static {v0}, Lcom/android/camera/MediaSaveService;->access$000(Lcom/android/camera/MediaSaveService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/MediaSaveService$ImageSaveTask;->this$0:Lcom/android/camera/MediaSaveService;

    # invokes: Lcom/android/camera/MediaSaveService;->onQueueAvailable()V
    invoke-static {v0}, Lcom/android/camera/MediaSaveService;->access$100(Lcom/android/camera/MediaSaveService;)V

    .line 166
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 124
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaveService$ImageSaveTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method
