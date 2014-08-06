.class public Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;
.super Ljava/lang/Object;
.source "FilteringPipeline.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static HIRES_DELAY:J

.field private static volatile sPipeline:Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;


# instance fields
.field private DEBUG:Z

.field private mAccessoryPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private volatile mHasUnhandledPreviewRequest:Z

.field private mHighresPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

.field private volatile mPipelineIsOn:Z

.field private mPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

.field private mProcessingHandler:Landroid/os/Handler;

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->$assertionsDisabled:Z

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->sPipeline:Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    .line 37
    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->HIRES_DELAY:J

    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->DEBUG:Z

    .line 39
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mPipelineIsOn:Z

    .line 41
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mAccessoryPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    .line 42
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    .line 43
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHighresPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    .line 45
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHandlerThread:Landroid/os/HandlerThread;

    .line 53
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHasUnhandledPreviewRequest:Z

    .line 68
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mProcessingHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline$1;-><init>(Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mUIHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FilteringPipeline"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHandlerThread:Landroid/os/HandlerThread;

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mProcessingHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v1

    const-string v2, "Accessory"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;-><init>(Lcom/android/gallery3d/filtershow/filters/FiltersManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mAccessoryPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    .line 138
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getPreviewManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v1

    const-string v2, "Preview"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;-><init>(Lcom/android/gallery3d/filtershow/filters/FiltersManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    .line 140
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getHighresManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v1

    const-string v2, "Highres"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;-><init>(Lcom/android/gallery3d/filtershow/filters/FiltersManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHighresPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHasUnhandledPreviewRequest:Z

    return v0
.end method

.method public static declared-synchronized getPipeline()Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;
    .locals 2

    .prologue
    .line 145
    const-class v1, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->sPipeline:Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->sPipeline:Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    .line 148
    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->sPipeline:Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 56
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 57
    const-string v0, "COMPUTE_RENDERING_REQUEST"

    .line 65
    :goto_0
    return-object v0

    .line 59
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 60
    const-string v0, "COMPUTE_PARTIAL_RENDERING_REQUEST"

    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 63
    const-string v0, "COMPUTE_HIGHRES_RENDERING_REQUEST"

    goto :goto_0

    .line 65
    :cond_2
    const-string v0, "UNKNOWN TYPE"

    goto :goto_0
.end method

.method public static declared-synchronized reset()V
    .locals 2

    .prologue
    .line 219
    const-class v1, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->sPipeline:Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mAccessoryPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->reset()V

    .line 220
    sget-object v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->sPipeline:Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->reset()V

    .line 221
    sget-object v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->sPipeline:Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHighresPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->reset()V

    .line 222
    sget-object v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->sPipeline:Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 223
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->sPipeline:Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit v1

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 93
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mPipelineIsOn:Z

    if-nez v4, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v7

    .line 96
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 99
    .local v1, "preset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getDoubleBuffer()Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;

    move-result-object v0

    .line 100
    .local v0, "buffer":Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    const/4 v5, 0x2

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->compute(Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;Lcom/android/gallery3d/filtershow/presets/ImagePreset;I)V

    .line 101
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->swapProducer()V

    .line 102
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 103
    .local v3, "uimsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 110
    .end local v0    # "buffer":Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;
    .end local v1    # "preset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .end local v3    # "uimsg":Landroid/os/Message;
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 111
    const-string v4, "FilteringPipeline"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Compute Request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->getType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;

    .line 115
    .local v2, "request":Lcom/android/gallery3d/filtershow/cache/RenderingRequest;
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 116
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHighresPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->render(Lcom/android/gallery3d/filtershow/cache/RenderingRequest;)V

    .line 120
    :goto_1
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mUIHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 122
    .restart local v3    # "uimsg":Landroid/os/Message;
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 118
    .end local v3    # "uimsg":Landroid/os/Message;
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mAccessoryPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->render(Lcom/android/gallery3d/filtershow/cache/RenderingRequest;)V

    goto :goto_1

    .line 96
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public postRenderingRequest(Lcom/android/gallery3d/filtershow/cache/RenderingRequest;)V
    .locals 5
    .param p1, "request"    # Lcom/android/gallery3d/filtershow/cache/RenderingRequest;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 162
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mPipelineIsOn:Z

    if-nez v2, :cond_0

    .line 183
    :goto_0
    return-void

    .line 165
    :cond_0
    const/4 v1, 0x3

    .line 166
    .local v1, "type":I
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 167
    const/4 v1, 0x4

    .line 169
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 170
    const/4 v1, 0x5

    .line 172
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 173
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    if-eq v1, v3, :cond_3

    if-ne v1, v4, :cond_5

    .line 176
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mProcessingHandler:Landroid/os/Handler;

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mProcessingHandler:Landroid/os/Handler;

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mProcessingHandler:Landroid/os/Handler;

    sget-wide v3, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->HIRES_DELAY:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 181
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setHighResPreviewScaleFactor(F)V
    .locals 1
    .param p1, "highResPreviewScaleFactor"    # F

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mAccessoryPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->setHighResPreviewScaleFactor(F)V

    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->setHighResPreviewScaleFactor(F)V

    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHighresPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->setHighResPreviewScaleFactor(F)V

    .line 216
    return-void
.end method

.method public setOriginal(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mPipelineIsOn:Z

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "FilteringPipeline"

    const-string v1, "setOriginal called after pipeline initialization!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mAccessoryPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->setOriginal(Landroid/graphics/Bitmap;)V

    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->setOriginal(Landroid/graphics/Bitmap;)V

    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHighresPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->setOriginal(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setPreviewScaleFactor(F)V
    .locals 1
    .param p1, "previewScaleFactor"    # F

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mAccessoryPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->setPreviewScaleFactor(F)V

    .line 208
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->setPreviewScaleFactor(F)V

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHighresPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->setPreviewScaleFactor(F)V

    .line 210
    return-void
.end method

.method public turnOnPipeline(Z)V
    .locals 1
    .param p1, "t"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mPipelineIsOn:Z

    .line 228
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mPipelineIsOn:Z

    if-eqz v0, :cond_3

    .line 229
    sget-boolean v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 230
    :cond_0
    sget-boolean v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mAccessoryPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 231
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHighresPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->updatePreviewBuffer()V

    .line 234
    :cond_3
    return-void
.end method

.method public updatePreviewBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 186
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mPipelineIsOn:Z

    if-nez v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHasUnhandledPreviewRequest:Z

    .line 190
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHighresPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->stop()V

    .line 191
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mPreviewPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->needsRepaint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getPreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 201
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getPreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mHasUnhandledPreviewRequest:Z

    .line 203
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method
