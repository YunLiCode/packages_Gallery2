.class Lcom/google/android/apps/lightcycle/panorama/RenderedGui$1;
.super Ljava/lang/Object;
.source "RenderedGui.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->init(Landroid/content/Context;Lcom/google/android/apps/lightcycle/opengl/Shader;IILcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/RenderedGui;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui$1;->this$0:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public message(IFLjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # F
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui$1;->this$0:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButton:Lcom/google/android/apps/lightcycle/panorama/Button;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->access$000(Lcom/google/android/apps/lightcycle/panorama/RenderedGui;)Lcom/google/android/apps/lightcycle/panorama/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/Button;->setVisible(Z)V

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui$1;->this$0:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    # invokes: Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->notifyDone()V
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->access$100(Lcom/google/android/apps/lightcycle/panorama/RenderedGui;)V

    .line 79
    return-void
.end method
