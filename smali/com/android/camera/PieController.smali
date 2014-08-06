.class public Lcom/android/camera/PieController;
.super Ljava/lang/Object;
.source "PieController.java"


# static fields
.field protected static CENTER:F

.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field private mOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/camera/IconListPreference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/camera/IconListPreference;",
            "Lcom/android/camera/ui/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/IconListPreference;",
            ">;"
        }
    .end annotation
.end field

.field protected mRenderer:Lcom/android/camera/ui/PieRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "CAM_piecontrol"

    sput-object v0, Lcom/android/camera/PieController;->TAG:Ljava/lang/String;

    .line 41
    const v0, 0x3fc90fdb

    sput v0, Lcom/android/camera/PieController;->CENTER:F

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/camera/ui/PieRenderer;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pie"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/camera/PieController;->mActivity:Landroid/app/Activity;

    .line 58
    iput-object p2, p0, Lcom/android/camera/PieController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PieController;->mPreferences:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PieController;->mOverrides:Ljava/util/Map;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PieController;Lcom/android/camera/IconListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PieController;
    .param p1, "x1"    # Lcom/android/camera/IconListPreference;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/camera/PieController;->reloadPreference(Lcom/android/camera/IconListPreference;)V

    return-void
.end method

.method private varargs override(Lcom/android/camera/IconListPreference;[Ljava/lang/String;)V
    .locals 5
    .param p1, "pref"    # Lcom/android/camera/IconListPreference;
    .param p2, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 246
    iget-object v4, p0, Lcom/android/camera/PieController;->mOverrides:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_0

    .line 248
    aget-object v2, p2, v0

    .line 249
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    aget-object v3, p2, v4

    .line 250
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    iget-object v4, p0, Lcom/android/camera/PieController;->mOverrides:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v4, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PieItem;

    .line 253
    .local v1, "item":Lcom/android/camera/ui/PieItem;
    if-nez v3, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/camera/ui/PieItem;->setEnabled(Z)V

    .line 257
    .end local v1    # "item":Lcom/android/camera/ui/PieItem;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/PieController;->reloadPreference(Lcom/android/camera/IconListPreference;)V

    .line 258
    return-void

    .line 253
    .restart local v1    # "item":Lcom/android/camera/ui/PieItem;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 247
    .end local v1    # "item":Lcom/android/camera/ui/PieItem;
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private reloadPreference(Lcom/android/camera/IconListPreference;)V
    .locals 7
    .param p1, "pref"    # Lcom/android/camera/IconListPreference;

    .prologue
    .line 210
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v4, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/PieItem;

    .line 212
    .local v2, "item":Lcom/android/camera/ui/PieItem;
    iget-object v4, p0, Lcom/android/camera/PieController;->mOverrides:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 213
    .local v3, "overrideValue":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 214
    .local v0, "iconIds":[I
    if-eqz v0, :cond_3

    .line 217
    if-nez v3, :cond_2

    .line 218
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 228
    .local v1, "index":I
    :cond_1
    iget-object v4, p0, Lcom/android/camera/PieController;->mActivity:Landroid/app/Activity;

    aget v5, v0, v1

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    goto :goto_0

    .line 220
    .end local v1    # "index":I
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 221
    .restart local v1    # "index":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 223
    sget-object v4, Lcom/android/camera/PieController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to find override value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->print()V

    goto :goto_0

    .line 231
    .end local v1    # "index":I
    :cond_3
    iget-object v4, p0, Lcom/android/camera/PieController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/PieController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->clearItems()V

    .line 66
    iget-object v0, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/camera/PieController;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 68
    return-void
.end method

.method protected makeItem(I)Lcom/android/camera/ui/PieItem;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/camera/PieController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/camera/ui/PieItem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/camera/ui/PieItem;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v1
.end method

.method protected makeItem(Ljava/lang/CharSequence;)Lcom/android/camera/ui/PieItem;
    .locals 3
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 88
    new-instance v0, Lcom/android/camera/drawable/TextDrawable;

    iget-object v1, p0, Lcom/android/camera/PieController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/camera/drawable/TextDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;)V

    .line 89
    .local v0, "drawable":Lcom/android/camera/drawable/TextDrawable;
    new-instance v1, Lcom/android/camera/ui/PieItem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/camera/ui/PieItem;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v1
.end method

.method public makeItem(Ljava/lang/String;)Lcom/android/camera/ui/PieItem;
    .locals 9
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v8, p0, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v8, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    check-cast v6, Lcom/android/camera/IconListPreference;

    .line 95
    .local v6, "pref":Lcom/android/camera/IconListPreference;
    if-nez v6, :cond_1

    const/4 v4, 0x0

    .line 132
    :cond_0
    return-object v4

    .line 96
    :cond_1
    invoke-virtual {v6}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v1

    .line 97
    .local v1, "iconIds":[I
    const/4 v7, -0x1

    .line 98
    .local v7, "resid":I
    invoke-virtual {v6}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {v6}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 101
    .local v2, "index":I
    aget v7, v1, v2

    .line 106
    .end local v2    # "index":I
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/camera/PieController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v4

    .line 107
    .local v4, "item":Lcom/android/camera/ui/PieItem;
    invoke-virtual {v6}, Lcom/android/camera/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v8, p0, Lcom/android/camera/PieController;->mPreferences:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v8, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v8, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-virtual {v6}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    array-length v5, v8

    .line 111
    .local v5, "nOfEntries":I
    const/4 v8, 0x1

    if-le v5, v8, :cond_0

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_0

    .line 113
    const/4 v3, 0x0

    .line 114
    .local v3, "inner":Lcom/android/camera/ui/PieItem;
    if-eqz v1, :cond_3

    .line 115
    aget v8, v1, v0

    invoke-virtual {p0, v8}, Lcom/android/camera/PieController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v3

    .line 119
    :goto_2
    invoke-virtual {v6}, Lcom/android/camera/IconListPreference;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v3, v8}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v4, v3}, Lcom/android/camera/ui/PieItem;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 121
    move v2, v0

    .line 122
    .restart local v2    # "index":I
    new-instance v8, Lcom/android/camera/PieController$1;

    invoke-direct {v8, p0, v6, v2}, Lcom/android/camera/PieController$1;-><init>(Lcom/android/camera/PieController;Lcom/android/camera/IconListPreference;I)V

    invoke-virtual {v3, v8}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    .end local v0    # "i":I
    .end local v2    # "index":I
    .end local v3    # "inner":Lcom/android/camera/ui/PieItem;
    .end local v4    # "item":Lcom/android/camera/ui/PieItem;
    .end local v5    # "nOfEntries":I
    :cond_2
    invoke-virtual {v6}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v7

    goto :goto_0

    .line 117
    .restart local v0    # "i":I
    .restart local v3    # "inner":Lcom/android/camera/ui/PieItem;
    .restart local v4    # "item":Lcom/android/camera/ui/PieItem;
    .restart local v5    # "nOfEntries":I
    :cond_3
    invoke-virtual {v6}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {p0, v8}, Lcom/android/camera/PieController;->makeItem(Ljava/lang/CharSequence;)Lcom/android/camera/ui/PieItem;

    move-result-object v3

    goto :goto_2
.end method

.method public makeSwitchItem(Ljava/lang/String;Z)Lcom/android/camera/ui/PieItem;
    .locals 7
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "addListener"    # Z

    .prologue
    .line 136
    iget-object v6, p0, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v6, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    check-cast v4, Lcom/android/camera/IconListPreference;

    .line 138
    .local v4, "pref":Lcom/android/camera/IconListPreference;
    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 173
    :cond_0
    :goto_0
    return-object v3

    .line 139
    :cond_1
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v1

    .line 140
    .local v1, "iconIds":[I
    const/4 v5, -0x1

    .line 141
    .local v5, "resid":I
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 142
    .local v2, "index":I
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v1, :cond_2

    .line 144
    aget v5, v1, v2

    .line 149
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/camera/PieController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v3

    .line 150
    .local v3, "item":Lcom/android/camera/ui/PieItem;
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v3, v6}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v6, p0, Lcom/android/camera/PieController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v6, v5}, Lcom/android/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    .line 152
    iget-object v6, p0, Lcom/android/camera/PieController;->mPreferences:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v6, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    if-eqz p2, :cond_0

    .line 155
    move-object v0, v3

    .line 156
    .local v0, "fitem":Lcom/android/camera/ui/PieItem;
    new-instance v6, Lcom/android/camera/PieController$2;

    invoke-direct {v6, p0, p1, v0}, Lcom/android/camera/PieController$2;-><init>(Lcom/android/camera/PieController;Ljava/lang/String;Lcom/android/camera/ui/PieItem;)V

    invoke-virtual {v3, v6}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    goto :goto_0

    .line 147
    .end local v0    # "fitem":Lcom/android/camera/ui/PieItem;
    .end local v3    # "item":Lcom/android/camera/ui/PieItem;
    :cond_2
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v5

    goto :goto_1
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/PieController;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/camera/PieController;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    .line 74
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 3
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 237
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 238
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 241
    .local v1, "pref":Lcom/android/camera/IconListPreference;
    invoke-direct {p0, v1, p1}, Lcom/android/camera/PieController;->override(Lcom/android/camera/IconListPreference;[Ljava/lang/String;)V

    goto :goto_0

    .line 243
    .end local v1    # "pref":Lcom/android/camera/IconListPreference;
    :cond_1
    return-void
.end method

.method public reloadPreferences()V
    .locals 3

    .prologue
    .line 203
    iget-object v2, p0, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2}, Lcom/android/camera/PreferenceGroup;->reloadValue()V

    .line 204
    iget-object v2, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 205
    .local v1, "pref":Lcom/android/camera/IconListPreference;
    invoke-direct {p0, v1}, Lcom/android/camera/PieController;->reloadPreference(Lcom/android/camera/IconListPreference;)V

    goto :goto_0

    .line 207
    .end local v1    # "pref":Lcom/android/camera/IconListPreference;
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/PieController;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 54
    return-void
.end method

.method public setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V
    .locals 0
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 200
    return-void
.end method

.method public updateItem(Lcom/android/camera/ui/PieItem;Ljava/lang/String;)V
    .locals 4
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;
    .param p2, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v2, p0, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2, p2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 190
    .local v1, "pref":Lcom/android/camera/IconListPreference;
    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, "index":I
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v2, p0, Lcom/android/camera/PieController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    .line 196
    .end local v0    # "index":I
    :cond_0
    return-void
.end method
