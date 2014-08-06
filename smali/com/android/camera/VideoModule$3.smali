.class Lcom/android/camera/VideoModule$3;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoModule;->initializeSurfaceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/camera/VideoModule$3;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameDrawn(Lcom/android/camera/CameraScreenNail;)V
    .locals 2
    .param p1, "c"    # Lcom/android/camera/CameraScreenNail;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/camera/VideoModule$3;->this$0:Lcom/android/camera/VideoModule;

    # getter for: Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1000(Lcom/android/camera/VideoModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 352
    return-void
.end method
