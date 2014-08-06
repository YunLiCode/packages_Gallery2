.class Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;
.super Ljava/lang/Object;
.source "LightCycleController.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->onPhotoTakenCallback:Lcom/google/android/apps/lightcycle/util/Callback;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1200(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/util/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->onPhotoTakenCallback:Lcom/google/android/apps/lightcycle/util/Callback;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1200(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/util/Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$900(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->finalizePhoto()V

    .line 561
    return-void
.end method
