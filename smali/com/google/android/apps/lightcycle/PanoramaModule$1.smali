.class Lcom/google/android/apps/lightcycle/PanoramaModule$1;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$1;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$1;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # operator++ for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mStatNumUndos:I
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$008(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$1;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mNumberOfImages:I
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$100(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    move-result v0

    if-lez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$1;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # operator-- for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mNumberOfImages:I
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$110(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$1;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$200(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->undoLastCapturedPhoto()V

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$1;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 188
    :cond_0
    return-void
.end method
