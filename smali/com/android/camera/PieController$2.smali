.class Lcom/android/camera/PieController$2;
.super Ljava/lang/Object;
.source "PieController.java"

# interfaces
.implements Lcom/android/camera/ui/PieItem$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PieController;->makeSwitchItem(Ljava/lang/String;Z)Lcom/android/camera/ui/PieItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PieController;

.field final synthetic val$fitem:Lcom/android/camera/ui/PieItem;

.field final synthetic val$prefKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/PieController;Ljava/lang/String;Lcom/android/camera/ui/PieItem;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/camera/PieController$2;->this$0:Lcom/android/camera/PieController;

    iput-object p2, p0, Lcom/android/camera/PieController$2;->val$prefKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/PieController$2;->val$fitem:Lcom/android/camera/ui/PieItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/camera/ui/PieItem;)V
    .locals 6
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    .line 159
    iget-object v3, p0, Lcom/android/camera/PieController$2;->this$0:Lcom/android/camera/PieController;

    iget-object v3, v3, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PieController$2;->val$prefKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 161
    .local v1, "pref":Lcom/android/camera/IconListPreference;
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, "index":I
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 163
    .local v2, "values":[Ljava/lang/CharSequence;
    add-int/lit8 v3, v0, 0x1

    array-length v4, v2

    rem-int v0, v3, v4

    .line 164
    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 165
    iget-object v3, p0, Lcom/android/camera/PieController$2;->val$fitem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v3, p0, Lcom/android/camera/PieController$2;->val$fitem:Lcom/android/camera/ui/PieItem;

    iget-object v4, p0, Lcom/android/camera/PieController$2;->this$0:Lcom/android/camera/PieController;

    iget-object v4, v4, Lcom/android/camera/PieController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v5

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    .line 168
    iget-object v3, p0, Lcom/android/camera/PieController$2;->this$0:Lcom/android/camera/PieController;

    # invokes: Lcom/android/camera/PieController;->reloadPreference(Lcom/android/camera/IconListPreference;)V
    invoke-static {v3, v1}, Lcom/android/camera/PieController;->access$000(Lcom/android/camera/PieController;Lcom/android/camera/IconListPreference;)V

    .line 169
    iget-object v3, p0, Lcom/android/camera/PieController$2;->this$0:Lcom/android/camera/PieController;

    invoke-virtual {v3, v1}, Lcom/android/camera/PieController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 170
    return-void
.end method
