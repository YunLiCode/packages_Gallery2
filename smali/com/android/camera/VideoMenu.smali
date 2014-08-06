.class public Lcom/android/camera/VideoMenu;
.super Lcom/android/camera/PieController;
.source "VideoMenu.java"

# interfaces
.implements Lcom/android/camera/ui/ListPrefSettingPopup$Listener;
.implements Lcom/android/camera/ui/MoreSettingPopup$Listener;
.implements Lcom/android/camera/ui/TimeIntervalPopup$Listener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mOtherKeys:[Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

.field private mPopupStatus:I

.field private mUI:Lcom/android/camera/VideoUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "CAM_VideoMenu"

    sput-object v0, Lcom/android/camera/VideoMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoUI;Lcom/android/camera/ui/PieRenderer;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "ui"    # Lcom/android/camera/VideoUI;
    .param p3, "pie"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 49
    invoke-direct {p0, p1, p3}, Lcom/android/camera/PieController;-><init>(Landroid/app/Activity;Lcom/android/camera/ui/PieRenderer;)V

    .line 50
    iput-object p2, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    .line 51
    iput-object p1, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/VideoMenu;)Lcom/android/camera/ui/AbstractSettingPopup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/VideoMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/VideoMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/VideoMenu;)Lcom/android/camera/VideoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/VideoMenu;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoMenu;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 6
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    const/4 v5, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 56
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/VideoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 57
    iput v5, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, "item":Lcom/android/camera/ui/PieItem;
    const-string v3, "pref_camera_whitebalance_key"

    invoke-virtual {p1, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 61
    const-string v3, "pref_camera_whitebalance_key"

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoMenu;->makeItem(Ljava/lang/String;)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 62
    iget-object v3, p0, Lcom/android/camera/PieController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 65
    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "pref_video_effect_key"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string v5, "pref_video_time_lapse_frame_interval_key"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "pref_video_quality_key"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "pref_camera_recordlocation_key"

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/camera/VideoMenu;->mOtherKeys:[Ljava/lang/String;

    .line 71
    const v3, 0x7f020143

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoMenu;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 72
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0328

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v3, Lcom/android/camera/VideoMenu$1;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoMenu$1;-><init>(Lcom/android/camera/VideoMenu;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 83
    iget-object v3, p0, Lcom/android/camera/PieController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 85
    const-string v3, "pref_camera_id_key"

    invoke-virtual {p1, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 86
    const v3, 0x7f020147

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoMenu;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 87
    const-string v3, "pref_camera_id_key"

    invoke-virtual {p1, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    .line 89
    .local v2, "lpref":Lcom/android/camera/IconListPreference;
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getIconIds()[I

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    .line 94
    move-object v0, v1

    .line 95
    .local v0, "fitem":Lcom/android/camera/ui/PieItem;
    new-instance v3, Lcom/android/camera/VideoMenu$2;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/VideoMenu$2;-><init>(Lcom/android/camera/VideoMenu;Lcom/android/camera/ui/PieItem;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 114
    iget-object v3, p0, Lcom/android/camera/PieController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 117
    .end local v0    # "fitem":Lcom/android/camera/ui/PieItem;
    .end local v2    # "lpref":Lcom/android/camera/IconListPreference;
    :cond_1
    const-string v3, "pref_camera_video_flashmode_key"

    invoke-virtual {p1, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 118
    const-string v3, "pref_camera_video_flashmode_key"

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoMenu;->makeItem(Ljava/lang/String;)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 119
    iget-object v3, p0, Lcom/android/camera/PieController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 121
    :cond_2
    return-void
.end method

.method protected initializePopup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 153
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 156
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040056

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/MoreSettingPopup;

    .line 158
    .local v1, "popup":Lcom/android/camera/ui/MoreSettingPopup;
    invoke-virtual {v1, p0}, Lcom/android/camera/ui/MoreSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/MoreSettingPopup$Listener;)V

    .line 159
    iget-object v2, p0, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mOtherKeys:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/MoreSettingPopup;->initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const-string v2, "pref_camera_recordlocation_key"

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/MoreSettingPopup;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 164
    :cond_0
    iput-object v1, p0, Lcom/android/camera/VideoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 165
    return-void
.end method

.method public onListPrefChanged(Lcom/android/camera/ListPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 145
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->dismissPopup(Z)V

    .line 149
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 150
    return-void
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;)V
    .locals 8
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 180
    iget v3, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-eq v3, v5, :cond_0

    .line 202
    .end local p1    # "pref":Lcom/android/camera/ListPreference;
    :goto_0
    return-void

    .line 182
    .restart local p1    # "pref":Lcom/android/camera/ListPreference;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 185
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const-string v3, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    const v3, 0x7f040086

    invoke-virtual {v1, v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/TimeIntervalPopup;

    .line 188
    .local v2, "timeInterval":Lcom/android/camera/ui/TimeIntervalPopup;
    check-cast p1, Lcom/android/camera/IconListPreference;

    .end local p1    # "pref":Lcom/android/camera/ListPreference;
    invoke-virtual {v2, p1}, Lcom/android/camera/ui/TimeIntervalPopup;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 189
    invoke-virtual {v2, p0}, Lcom/android/camera/ui/TimeIntervalPopup;->setSettingChangedListener(Lcom/android/camera/ui/TimeIntervalPopup$Listener;)V

    .line 190
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v5}, Lcom/android/camera/VideoUI;->dismissPopup(Z)V

    .line 191
    iput-object v2, p0, Lcom/android/camera/VideoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 200
    .end local v2    # "timeInterval":Lcom/android/camera/ui/TimeIntervalPopup;
    :goto_1
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    iget-object v4, p0, Lcom/android/camera/VideoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v3, v4}, Lcom/android/camera/VideoUI;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V

    .line 201
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    goto :goto_0

    .line 193
    .restart local p1    # "pref":Lcom/android/camera/ListPreference;
    :cond_1
    const v3, 0x7f040051

    invoke-virtual {v1, v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ListPrefSettingPopup;

    .line 195
    .local v0, "basic":Lcom/android/camera/ui/ListPrefSettingPopup;
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ListPrefSettingPopup;->initialize(Lcom/android/camera/ListPreference;)V

    .line 196
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ListPrefSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/ListPrefSettingPopup$Listener;)V

    .line 197
    iget-object v3, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v5}, Lcom/android/camera/VideoUI;->dismissPopup(Z)V

    .line 198
    iput-object v0, p0, Lcom/android/camera/VideoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    goto :goto_1
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 2
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 133
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->overrideSettings([Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    if-eq v0, v1, :cond_1

    .line 135
    :cond_0
    iput v1, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 136
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    check-cast v0, Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/MoreSettingPopup;->overrideSettings([Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public popupDismissed(Z)V
    .locals 2
    .param p1, "topPopupOnly"    # Z

    .prologue
    .line 169
    iget v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/camera/VideoMenu;->initializePopup()V

    .line 171
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/VideoMenu;->mPopupStatus:I

    .line 172
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V

    .line 174
    :cond_0
    return-void
.end method

.method public reloadPreferences()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/camera/PieController;->reloadPreferences()V

    .line 126
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/camera/VideoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractSettingPopup;->reloadPreference()V

    .line 129
    :cond_0
    return-void
.end method
