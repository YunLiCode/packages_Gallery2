.class Lcom/android/camera/VideoMenu$2;
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

.field final synthetic val$fitem:Lcom/android/camera/ui/PieItem;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoMenu;Lcom/android/camera/ui/PieItem;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/VideoMenu$2;->this$0:Lcom/android/camera/VideoMenu;

    iput-object p2, p0, Lcom/android/camera/VideoMenu$2;->val$fitem:Lcom/android/camera/ui/PieItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/camera/ui/PieItem;)V
    .locals 7
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    .line 100
    iget-object v4, p0, Lcom/android/camera/VideoMenu$2;->this$0:Lcom/android/camera/VideoMenu;

    iget-object v4, v4, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera_id_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 102
    .local v2, "pref":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, "index":I
    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 105
    .local v3, "values":[Ljava/lang/CharSequence;
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    rem-int v0, v4, v5

    .line 106
    aget-object v4, v3, v0

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 107
    .local v1, "newCameraId":I
    iget-object v5, p0, Lcom/android/camera/VideoMenu$2;->val$fitem:Lcom/android/camera/ui/PieItem;

    iget-object v4, p0, Lcom/android/camera/VideoMenu$2;->this$0:Lcom/android/camera/VideoMenu;

    # getter for: Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/VideoMenu;->access$300(Lcom/android/camera/VideoMenu;)Lcom/android/camera/CameraActivity;

    move-result-object v6

    move-object v4, v2

    check-cast v4, Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getIconIds()[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v5, v6, v4}, Lcom/android/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    .line 109
    iget-object v4, p0, Lcom/android/camera/VideoMenu$2;->val$fitem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v4, p0, Lcom/android/camera/VideoMenu$2;->this$0:Lcom/android/camera/VideoMenu;

    iget-object v4, v4, Lcom/android/camera/PieController;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v4, v1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onCameraPickerClicked(I)V

    .line 112
    .end local v0    # "index":I
    .end local v1    # "newCameraId":I
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method
