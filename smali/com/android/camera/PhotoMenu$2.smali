.class Lcom/android/camera/PhotoMenu$2;
.super Ljava/lang/Object;
.source "PhotoMenu.java"

# interfaces
.implements Lcom/android/camera/ui/PieItem$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoMenu;->initialize(Lcom/android/camera/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoMenu;

.field final synthetic val$beeppref:Lcom/android/camera/ListPreference;

.field final synthetic val$ctpref:Lcom/android/camera/ListPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    iput-object p2, p0, Lcom/android/camera/PhotoMenu$2;->val$ctpref:Lcom/android/camera/ListPreference;

    iput-object p3, p0, Lcom/android/camera/PhotoMenu$2;->val$beeppref:Lcom/android/camera/ListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/camera/ui/PieItem;)V
    .locals 5
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    # getter for: Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoMenu;->access$000(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040019

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountdownTimerPopup;

    .line 120
    .local v0, "timerPopup":Lcom/android/camera/ui/CountdownTimerPopup;
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$2;->val$ctpref:Lcom/android/camera/ListPreference;

    iget-object v2, p0, Lcom/android/camera/PhotoMenu$2;->val$beeppref:Lcom/android/camera/ListPreference;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/CountdownTimerPopup;->initialize(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V

    .line 121
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountdownTimerPopup;->setSettingChangedListener(Lcom/android/camera/ui/CountdownTimerPopup$Listener;)V

    .line 122
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    # getter for: Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;
    invoke-static {v1}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->dismissPopup()V

    .line 123
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    # setter for: Lcom/android/camera/PhotoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;
    invoke-static {v1, v0}, Lcom/android/camera/PhotoMenu;->access$202(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ui/AbstractSettingPopup;)Lcom/android/camera/ui/AbstractSettingPopup;

    .line 124
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    # getter for: Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;
    invoke-static {v1}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoMenu$2;->this$0:Lcom/android/camera/PhotoMenu;

    # getter for: Lcom/android/camera/PhotoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;
    invoke-static {v2}, Lcom/android/camera/PhotoMenu;->access$200(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/ui/AbstractSettingPopup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoUI;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V

    .line 125
    return-void
.end method
