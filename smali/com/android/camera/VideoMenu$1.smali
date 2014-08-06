.class Lcom/android/camera/VideoMenu$1;
.super Ljava/lang/Object;
.source "VideoMenu.java"

# interfaces
.implements Lcom/android/camera/ui/PieItem$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoMenu;->initialize(Lcom/android/camera/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoMenu;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/camera/ui/PieItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    const/4 v1, 0x1

    .line 76
    iget-object v0, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    # getter for: Lcom/android/camera/VideoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;
    invoke-static {v0}, Lcom/android/camera/VideoMenu;->access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/ui/AbstractSettingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    # getter for: Lcom/android/camera/VideoMenu;->mPopupStatus:I
    invoke-static {v0}, Lcom/android/camera/VideoMenu;->access$100(Lcom/android/camera/VideoMenu;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    .line 78
    iget-object v0, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    # setter for: Lcom/android/camera/VideoMenu;->mPopupStatus:I
    invoke-static {v0, v1}, Lcom/android/camera/VideoMenu;->access$102(Lcom/android/camera/VideoMenu;I)I

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    # getter for: Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;
    invoke-static {v0}, Lcom/android/camera/VideoMenu;->access$200(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoMenu$1;->this$0:Lcom/android/camera/VideoMenu;

    # getter for: Lcom/android/camera/VideoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;
    invoke-static {v1}, Lcom/android/camera/VideoMenu;->access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/ui/AbstractSettingPopup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V

    .line 81
    return-void
.end method
