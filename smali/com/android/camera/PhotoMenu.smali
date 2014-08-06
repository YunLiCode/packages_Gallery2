.class public Lcom/android/camera/PhotoMenu;
.super Lcom/android/camera/PieController;
.source "PhotoMenu.java"

# interfaces
.implements Lcom/android/camera/ui/CountdownTimerPopup$Listener;
.implements Lcom/android/camera/ui/ListPrefSettingPopup$Listener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

.field private final mSettingOff:Ljava/lang/String;

.field private mUI:Lcom/android/camera/PhotoUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "CAM_photomenu"

    sput-object v0, Lcom/android/camera/PhotoMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoUI;Lcom/android/camera/ui/PieRenderer;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "ui"    # Lcom/android/camera/PhotoUI;
    .param p3, "pie"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 44
    invoke-direct {p0, p1, p3}, Lcom/android/camera/PieController;-><init>(Landroid/app/Activity;Lcom/android/camera/ui/PieRenderer;)V

    .line 45
    iput-object p2, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    .line 46
    const v0, 0x7f0b025f

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/ui/AbstractSettingPopup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ui/AbstractSettingPopup;)Lcom/android/camera/ui/AbstractSettingPopup;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoMenu;
    .param p1, "x1"    # Lcom/android/camera/ui/AbstractSettingPopup;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/PhotoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    return-object p1
.end method

.method private static notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pref"    # Lcom/android/camera/ListPreference;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 184
    .local v0, "pref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/camera/PhotoMenu;->reloadPreferences()V

    .line 188
    :cond_0
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 12
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 51
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 52
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/camera/PhotoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, "item":Lcom/android/camera/ui/PieItem;
    iget-object v9, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 55
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v4, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 59
    .local v4, "locale":Ljava/util/Locale;
    const-string v9, "pref_camera_hdr_key"

    invoke-virtual {p1, v9}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 60
    const-string v9, "pref_camera_hdr_key"

    invoke-virtual {p0, v9, v10}, Lcom/android/camera/PhotoMenu;->makeSwitchItem(Ljava/lang/String;Z)Lcom/android/camera/ui/PieItem;

    move-result-object v3

    .line 61
    iget-object v9, p0, Lcom/android/camera/PieController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v9, v3}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 64
    :cond_0
    const-string v9, "pref_camera_exposure_key"

    invoke-virtual {p1, v9}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 65
    const-string v9, "pref_camera_exposure_key"

    invoke-virtual {p0, v9}, Lcom/android/camera/PhotoMenu;->makeItem(Ljava/lang/String;)Lcom/android/camera/ui/PieItem;

    move-result-object v3

    .line 66
    const v9, 0x7f0b02ad

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v9, p0, Lcom/android/camera/PieController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v9, v3}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 70
    :cond_1
    const v9, 0x7f020143

    invoke-virtual {p0, v9}, Lcom/android/camera/PhotoMenu;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v5

    .line 71
    .local v5, "more":Lcom/android/camera/ui/PieItem;
    const v9, 0x7f0b0327

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v9, p0, Lcom/android/camera/PieController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v9, v5}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 74
    const-string v9, "pref_camera_flashmode_key"

    invoke-virtual {p1, v9}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 75
    const-string v9, "pref_camera_flashmode_key"

    invoke-virtual {p0, v9}, Lcom/android/camera/PhotoMenu;->makeItem(Ljava/lang/String;)Lcom/android/camera/ui/PieItem;

    move-result-object v3

    .line 76
    const v9, 0x7f0b0282

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v9, p0, Lcom/android/camera/PieController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v9, v3}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 80
    :cond_2
    const-string v9, "pref_camera_id_key"

    invoke-virtual {p1, v9}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 81
    const-string v9, "pref_camera_id_key"

    invoke-virtual {p0, v9, v11}, Lcom/android/camera/PhotoMenu;->makeSwitchItem(Ljava/lang/String;Z)Lcom/android/camera/ui/PieItem;

    move-result-object v3

    .line 82
    move-object v2, v3

    .line 83
    .local v2, "fitem":Lcom/android/camera/ui/PieItem;
    new-instance v9, Lcom/android/camera/PhotoMenu$1;

    invoke-direct {v9, p0, v2}, Lcom/android/camera/PhotoMenu$1;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ui/PieItem;)V

    invoke-virtual {v3, v9}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 99
    iget-object v9, p0, Lcom/android/camera/PieController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v9, v3}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 102
    .end local v2    # "fitem":Lcom/android/camera/ui/PieItem;
    :cond_3
    const-string v9, "pref_camera_recordlocation_key"

    invoke-virtual {p1, v9}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 103
    const-string v9, "pref_camera_recordlocation_key"

    invoke-virtual {p0, v9, v10}, Lcom/android/camera/PhotoMenu;->makeSwitchItem(Ljava/lang/String;Z)Lcom/android/camera/ui/PieItem;

    move-result-object v3

    .line 104
    invoke-virtual {v5, v3}, Lcom/android/camera/ui/PieItem;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 105
    iget-object v9, p0, Lcom/android/camera/PhotoMenu;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 107
    invoke-virtual {v3, v11}, Lcom/android/camera/ui/PieItem;->setEnabled(Z)V

    .line 111
    :cond_4
    const-string v9, "pref_camera_timer_key"

    invoke-virtual {p1, v9}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 112
    .local v1, "ctpref":Lcom/android/camera/ListPreference;
    const-string v9, "pref_camera_timer_sound_key"

    invoke-virtual {p1, v9}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 113
    .local v0, "beeppref":Lcom/android/camera/ListPreference;
    const v9, 0x7f020158

    invoke-virtual {p0, v9}, Lcom/android/camera/PhotoMenu;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v3

    .line 114
    const v9, 0x7f0b0259

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v9, Lcom/android/camera/PhotoMenu$2;

    invoke-direct {v9, p0, v1, v0}, Lcom/android/camera/PhotoMenu$2;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V

    invoke-virtual {v3, v9}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 127
    invoke-virtual {v5, v3}, Lcom/android/camera/ui/PieItem;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 129
    const v9, 0x7f0200eb

    invoke-virtual {p0, v9}, Lcom/android/camera/PhotoMenu;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v3

    .line 130
    const-string v9, "pref_camera_picturesize_key"

    invoke-virtual {p1, v9}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v8

    .line 131
    .local v8, "sizePref":Lcom/android/camera/ListPreference;
    const v9, 0x7f0b026c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v9, Lcom/android/camera/PhotoMenu$3;

    invoke-direct {v9, p0, v8}, Lcom/android/camera/PhotoMenu$3;-><init>(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ListPreference;)V

    invoke-virtual {v3, v9}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 144
    invoke-virtual {v5, v3}, Lcom/android/camera/ui/PieItem;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 146
    const-string v9, "pref_camera_whitebalance_key"

    invoke-virtual {p1, v9}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 147
    const-string v9, "pref_camera_whitebalance_key"

    invoke-virtual {p0, v9}, Lcom/android/camera/PhotoMenu;->makeItem(Ljava/lang/String;)Lcom/android/camera/ui/PieItem;

    move-result-object v3

    .line 148
    const v9, 0x7f0b028c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {v5, v3}, Lcom/android/camera/ui/PieItem;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 152
    :cond_5
    const-string v9, "pref_camera_scenemode_key"

    invoke-virtual {p1, v9}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 153
    const-string v9, "pref_camera_scenemode_key"

    invoke-virtual {p1, v9}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    check-cast v6, Lcom/android/camera/IconListPreference;

    .line 155
    .local v6, "pref":Lcom/android/camera/IconListPreference;
    invoke-virtual {v6, v10}, Lcom/android/camera/IconListPreference;->setUseSingleIcon(Z)V

    .line 156
    const-string v9, "pref_camera_scenemode_key"

    invoke-virtual {p0, v9}, Lcom/android/camera/PhotoMenu;->makeItem(Ljava/lang/String;)Lcom/android/camera/ui/PieItem;

    move-result-object v3

    .line 157
    invoke-virtual {v5, v3}, Lcom/android/camera/ui/PieItem;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 159
    .end local v6    # "pref":Lcom/android/camera/IconListPreference;
    :cond_6
    return-void
.end method

.method public onListPrefChanged(Lcom/android/camera/ListPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->dismissPopup()V

    .line 167
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoMenu;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 168
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 194
    const-string v0, "pref_camera_hdr_key"

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const-string v0, "pref_camera_scenemode_key"

    const-string v1, "auto"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 200
    return-void

    .line 196
    :cond_1
    const-string v0, "pref_camera_scenemode_key"

    const-string v1, "auto"

    invoke-static {p1, v0, v1}, Lcom/android/camera/PhotoMenu;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "pref_camera_hdr_key"

    iget-object v1, p0, Lcom/android/camera/PhotoMenu;->mSettingOff:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public popupDismissed()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/camera/PhotoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoMenu;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 175
    :cond_0
    return-void
.end method
