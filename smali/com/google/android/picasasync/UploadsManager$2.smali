.class Lcom/google/android/picasasync/UploadsManager$2;
.super Landroid/os/Handler;
.source "UploadsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/UploadsManager;->initHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasasync/UploadsManager;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/UploadsManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/picasasync/UploadsManager$2;->this$0:Lcom/google/android/picasasync/UploadsManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 226
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

    .line 209
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$2;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # invokes: Lcom/google/android/picasasync/UploadsManager;->reloadSystemSettingsInternal()V
    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->access$100(Lcom/google/android/picasasync/UploadsManager;)V

    .line 228
    :goto_0
    return-void

    .line 213
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$2;->this$0:Lcom/google/android/picasasync/UploadsManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    # invokes: Lcom/google/android/picasasync/UploadsManager;->cancelTaskInternal(J)V
    invoke-static {v1, v2, v3}, Lcom/google/android/picasasync/UploadsManager;->access$200(Lcom/google/android/picasasync/UploadsManager;J)V

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$2;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # invokes: Lcom/google/android/picasasync/UploadsManager;->onFsIdChangedInternal()V
    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->access$000(Lcom/google/android/picasasync/UploadsManager;)V

    goto :goto_0

    .line 221
    :pswitch_3
    # getter for: Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Try to reset UploadsManager again!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$2;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # invokes: Lcom/google/android/picasasync/UploadsManager;->reset()V
    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->access$400(Lcom/google/android/picasasync/UploadsManager;)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
