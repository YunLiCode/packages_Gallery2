.class Lcom/google/android/apps/lightcycle/PanoramaModule$9;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;->initButtons()V
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
    .line 496
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$9;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterButtonClick()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$9;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->onDoneButtonPressed()V

    .line 504
    return-void
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 499
    return-void
.end method
