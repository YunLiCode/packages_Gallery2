.class Lcom/google/android/apps/lightcycle/PanoramaModule$13;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;->initHelpOverlayButton()V
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
    .line 931
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$13;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 934
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$13;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # invokes: Lcom/google/android/apps/lightcycle/PanoramaModule;->removeHelpOverlay()V
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2000(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    .line 935
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$13;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$800(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 937
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "photosphere_show_help_overlay"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 938
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$13;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # setter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mShowHelpOverlay:Z
    invoke-static {v1, v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2102(Lcom/google/android/apps/lightcycle/PanoramaModule;Z)Z

    .line 939
    return-void
.end method
