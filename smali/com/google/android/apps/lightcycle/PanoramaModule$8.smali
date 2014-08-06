.class Lcom/google/android/apps/lightcycle/PanoramaModule$8;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 479
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1900(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/ui/MoreSettingPopup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->initializeSettingsPopup()V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1900(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/ui/MoreSettingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/MoreSettingPopup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1900(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/ui/MoreSettingPopup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MoreSettingPopup;->setVisibility(I)V

    .line 490
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # invokes: Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUiAndSwipe()V
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1100(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    .line 491
    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1900(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/ui/MoreSettingPopup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MoreSettingPopup;->setVisibility(I)V

    goto :goto_0
.end method
