.class Lcom/google/android/picasastore/PicasaPhotoContentProvider0$2;
.super Landroid/os/Handler;
.source "PicasaPhotoContentProvider0.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->initHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasastore/PicasaPhotoContentProvider0;


# direct methods
.method constructor <init>(Lcom/google/android/picasastore/PicasaPhotoContentProvider0;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0$2;->this$0:Lcom/google/android/picasastore/PicasaPhotoContentProvider0;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0$2;->this$0:Lcom/google/android/picasastore/PicasaPhotoContentProvider0;

    # invokes: Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->onFsIdChanged()V
    invoke-static {v0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->access$000(Lcom/google/android/picasastore/PicasaPhotoContentProvider0;)V

    .line 148
    return-void

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
