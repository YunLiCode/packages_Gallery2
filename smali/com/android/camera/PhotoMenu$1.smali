.class Lcom/android/camera/PhotoMenu$1;
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

.field final synthetic val$fitem:Lcom/android/camera/ui/PieItem;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ui/PieItem;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$1;->this$0:Lcom/android/camera/PhotoMenu;

    iput-object p2, p0, Lcom/android/camera/PhotoMenu$1;->val$fitem:Lcom/android/camera/ui/PieItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/camera/ui/PieItem;)V
    .locals 6
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    .line 87
    iget-object v3, p0, Lcom/android/camera/PhotoMenu$1;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v3, v3, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 89
    .local v1, "pref":Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, "index":I
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 92
    .local v2, "values":[Ljava/lang/CharSequence;
    add-int/lit8 v3, v0, 0x1

    array-length v4, v2

    rem-int v0, v3, v4

    .line 93
    invoke-virtual {v1, v0}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 94
    iget-object v3, p0, Lcom/android/camera/PhotoMenu$1;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v3, v3, Lcom/android/camera/PieController;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v3, v0}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onCameraPickerClicked(I)V

    .line 96
    .end local v0    # "index":I
    .end local v2    # "values":[Ljava/lang/CharSequence;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PhotoMenu$1;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v4, p0, Lcom/android/camera/PhotoMenu$1;->val$fitem:Lcom/android/camera/ui/PieItem;

    const-string v5, "pref_camera_id_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/PhotoMenu;->updateItem(Lcom/android/camera/ui/PieItem;Ljava/lang/String;)V

    .line 97
    return-void
.end method
