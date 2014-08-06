.class Lcom/android/gallery3d/filtershow/cache/FilteringPipeline$1;
.super Landroid/os/Handler;
.source "FilteringPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline$1;->this$0:Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 74
    :pswitch_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getDoubleBuffer()Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;

    move-result-object v0

    .line 75
    .local v0, "buffer":Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->swapConsumer()V

    .line 76
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->notifyObservers()V

    .line 77
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline$1;->this$0:Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    # getter for: Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHasUnhandledPreviewRequest:Z
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->access$000(Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline$1;->this$0:Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->updatePreviewBuffer()V

    goto :goto_0

    .line 83
    .end local v0    # "buffer":Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;

    .line 84
    .local v1, "request":Lcom/android/gallery3d/filtershow/cache/RenderingRequest;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->markAvailable()V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
