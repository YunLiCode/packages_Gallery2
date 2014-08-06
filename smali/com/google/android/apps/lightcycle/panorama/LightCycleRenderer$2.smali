.class Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;
.super Ljava/lang/Thread;
.source "LightCycleRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->undoLastCapturedPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)V
    .locals 0

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1276
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRealtimeAlignmentEnabled:Z
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$100(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->UndoAddImage(Z)V

    .line 1277
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$200(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->updateTargets()V

    .line 1278
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$200(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->finalizeHitTargets()V

    .line 1279
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->undoAddImage()I

    move-result v0

    .line 1280
    .local v0, "index":I
    if-nez v0, :cond_0

    .line 1281
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$200(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->reset()V

    .line 1282
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$400(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->reset()V

    .line 1283
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->resetVelocityLimit()V

    .line 1284
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    const/4 v2, 0x1

    # setter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z
    invoke-static {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$502(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Z)Z

    .line 1286
    :cond_0
    return-void
.end method
