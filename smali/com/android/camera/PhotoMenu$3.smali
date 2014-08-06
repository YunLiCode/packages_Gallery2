.class Lcom/android/camera/PhotoMenu$3;
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

.field final synthetic val$sizePref:Lcom/android/camera/ListPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ListPreference;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$3;->this$0:Lcom/android/camera/PhotoMenu;

    iput-object p2, p0, Lcom/android/camera/PhotoMenu$3;->val$sizePref:Lcom/android/camera/ListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/camera/ui/PieItem;)V
    .locals 5
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$3;->this$0:Lcom/android/camera/PhotoMenu;

    # getter for: Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoMenu;->access$000(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040051

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ListPrefSettingPopup;

    .line 137
    .local v0, "popup":Lcom/android/camera/ui/ListPrefSettingPopup;
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$3;->val$sizePref:Lcom/android/camera/ListPreference;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ListPrefSettingPopup;->initialize(Lcom/android/camera/ListPreference;)V

    .line 138
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$3;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ListPrefSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/ListPrefSettingPopup$Listener;)V

    .line 139
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$3;->this$0:Lcom/android/camera/PhotoMenu;

    # getter for: Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;
    invoke-static {v1}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->dismissPopup()V

    .line 140
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$3;->this$0:Lcom/android/camera/PhotoMenu;

    # setter for: Lcom/android/camera/PhotoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;
    invoke-static {v1, v0}, Lcom/android/camera/PhotoMenu;->access$202(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ui/AbstractSettingPopup;)Lcom/android/camera/ui/AbstractSettingPopup;

    .line 141
    iget-object v1, p0, Lcom/android/camera/PhotoMenu$3;->this$0:Lcom/android/camera/PhotoMenu;

    # getter for: Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;
    invoke-static {v1}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoMenu$3;->this$0:Lcom/android/camera/PhotoMenu;

    # getter for: Lcom/android/camera/PhotoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;
    invoke-static {v2}, Lcom/android/camera/PhotoMenu;->access$200(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/ui/AbstractSettingPopup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoUI;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V

    .line 142
    return-void
.end method
