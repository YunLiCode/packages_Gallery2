.class public Lcom/android/camera/ui/MoreSettingPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "MoreSettingPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/camera/ui/InLineSettingItem$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;,
        Lcom/android/camera/ui/MoreSettingPopup$Listener;
    }
.end annotation


# instance fields
.field private mEnabled:[Z

.field private mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ListPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/camera/ui/MoreSettingPopup$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/MoreSettingPopup;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/MoreSettingPopup;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/MoreSettingPopup;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/MoreSettingPopup;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V
    .locals 5
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 124
    aget-object v3, p2, v0

    invoke-virtual {p1, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 125
    .local v2, "pref":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v2    # "pref":Lcom/android/camera/ListPreference;
    :cond_1
    new-instance v1, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;-><init>(Lcom/android/camera/ui/MoreSettingPopup;)V

    .line 129
    .local v1, "mListItemAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/camera/ListPreference;>;"
    iget-object v3, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    iget-object v3, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    iget-object v3, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/ListView;

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelector(I)V

    .line 133
    iget-object v3, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    .line 134
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 135
    iget-object v3, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_2
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListener:Lcom/android/camera/ui/MoreSettingPopup$Listener;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ListPreference;

    .line 187
    .local v0, "pref":Lcom/android/camera/ListPreference;
    iget-object v1, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListener:Lcom/android/camera/ui/MoreSettingPopup$Listener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/MoreSettingPopup$Listener;->onPreferenceClicked(Lcom/android/camera/ListPreference;)V

    .line 189
    .end local v0    # "pref":Lcom/android/camera/ListPreference;
    :cond_0
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListener:Lcom/android/camera/ui/MoreSettingPopup$Listener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListener:Lcom/android/camera/ui/MoreSettingPopup$Listener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/MoreSettingPopup$Listener;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 157
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 9
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 161
    iget-object v8, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    if-nez v8, :cond_2

    move v0, v7

    .line 162
    .local v0, "count":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, p1

    if-ge v2, v8, :cond_5

    .line 163
    aget-object v4, p1, v2

    .line 164
    .local v4, "key":Ljava/lang/String;
    add-int/lit8 v8, v2, 0x1

    aget-object v6, p1, v8

    .line 165
    .local v6, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v0, :cond_4

    .line 166
    iget-object v8, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ListPreference;

    .line 167
    .local v5, "pref":Lcom/android/camera/ListPreference;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 169
    if-eqz v6, :cond_0

    invoke-virtual {v5, v6}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 171
    :cond_0
    if-nez v6, :cond_3

    const/4 v1, 0x1

    .line 172
    .local v1, "enable":Z
    :goto_3
    iget-object v8, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    aput-boolean v1, v8, v3

    .line 173
    iget-object v8, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-le v8, v3, :cond_1

    .line 174
    iget-object v8, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 165
    .end local v1    # "enable":Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 161
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "pref":Lcom/android/camera/ListPreference;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    array-length v0, v8

    goto :goto_0

    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "pref":Lcom/android/camera/ListPreference;
    .restart local v6    # "value":Ljava/lang/String;
    :cond_3
    move v1, v7

    .line 171
    goto :goto_3

    .line 162
    .end local v5    # "pref":Lcom/android/camera/ListPreference;
    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 179
    .end local v3    # "j":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/MoreSettingPopup;->reloadPreference()V

    .line 180
    return-void
.end method

.method public reloadPreference()V
    .locals 5

    .prologue
    .line 193
    iget-object v4, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 194
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 195
    iget-object v4, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ListPreference;

    .line 196
    .local v2, "pref":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    .line 197
    iget-object v4, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/InLineSettingItem;

    .line 199
    .local v3, "settingItem":Lcom/android/camera/ui/InLineSettingItem;
    invoke-virtual {v3}, Lcom/android/camera/ui/InLineSettingItem;->reloadPreference()V

    .line 194
    .end local v3    # "settingItem":Lcom/android/camera/ui/InLineSettingItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v2    # "pref":Lcom/android/camera/ListPreference;
    :cond_1
    return-void
.end method

.method public setPreferenceEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 143
    iget-object v3, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    if-nez v3, :cond_1

    const/4 v0, 0x0

    .line 144
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 145
    iget-object v3, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ListPreference;

    .line 146
    .local v2, "pref":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    iget-object v3, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    aput-boolean p2, v3, v1

    .line 151
    .end local v2    # "pref":Lcom/android/camera/ListPreference;
    :cond_0
    return-void

    .line 143
    .end local v0    # "count":I
    .end local v1    # "j":I
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/MoreSettingPopup;->mEnabled:[Z

    array-length v0, v3

    goto :goto_0

    .line 144
    .restart local v0    # "count":I
    .restart local v1    # "j":I
    .restart local v2    # "pref":Lcom/android/camera/ListPreference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/MoreSettingPopup$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/MoreSettingPopup$Listener;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/camera/ui/MoreSettingPopup;->mListener:Lcom/android/camera/ui/MoreSettingPopup$Listener;

    .line 115
    return-void
.end method
