.class public Lcom/android/camera/ui/TimeIntervalPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "TimeIntervalPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/TimeIntervalPopup$Listener;
    }
.end annotation


# instance fields
.field private mConfirmButton:Landroid/widget/Button;

.field private final mDurations:[Ljava/lang/String;

.field private mHelpText:Landroid/widget/TextView;

.field private mListener:Lcom/android/camera/ui/TimeIntervalPopup$Listener;

.field private mNumberSpinner:Landroid/widget/NumberPicker;

.field private mPreference:Lcom/android/camera/IconListPreference;

.field private mTimeLapseSwitch:Landroid/widget/Switch;

.field private mTimePicker:Landroid/view/View;

.field private mUnitSpinner:Landroid/widget/NumberPicker;

.field private final mUnits:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0f000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnits:[Ljava/lang/String;

    .line 63
    const v1, 0x7f0f000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mDurations:[Ljava/lang/String;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/TimeIntervalPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/TimeIntervalPopup;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/camera/ui/TimeIntervalPopup;->updateInputState()V

    return-void
.end method

.method private restoreSetting()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 110
    iget-object v4, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v5, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 111
    .local v1, "index":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 112
    const-string v4, "TimeIntervalPopup"

    const-string v5, "Invalid preference value."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v4, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->print()V

    .line 114
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 115
    :cond_0
    if-nez v1, :cond_1

    .line 117
    iget-object v4, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 118
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/TimeIntervalPopup;->setTimeSelectionEnabled(Z)V

    .line 128
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 121
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/TimeIntervalPopup;->setTimeSelectionEnabled(Z)V

    .line 122
    iget-object v4, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 123
    .local v0, "durationCount":I
    add-int/lit8 v4, v1, -0x1

    div-int v3, v4, v0

    .line 124
    .local v3, "unit":I
    add-int/lit8 v4, v1, -0x1

    rem-int v2, v4, v0

    .line 125
    .local v2, "number":I
    iget-object v4, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 126
    iget-object v4, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_0
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 155
    .local v0, "newId":I
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 160
    .end local v0    # "newId":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mListener:Lcom/android/camera/ui/TimeIntervalPopup$Listener;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mListener:Lcom/android/camera/ui/TimeIntervalPopup$Listener;

    iget-object v2, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-interface {v1, v2}, Lcom/android/camera/ui/TimeIntervalPopup$Listener;->onListPrefChanged(Lcom/android/camera/ListPreference;)V

    .line 163
    :cond_0
    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    goto :goto_0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/IconListPreference;)V
    .locals 5
    .param p1, "preference"    # Lcom/android/camera/IconListPreference;

    .prologue
    const/high16 v4, 0x60000

    const/4 v3, 0x0

    .line 68
    iput-object p1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    .line 71
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mDurations:[Ljava/lang/String;

    array-length v0, v1

    .line 75
    .local v0, "durationCount":I
    const v1, 0x7f0a0096

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    .line 76
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 77
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 78
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mDurations:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 82
    const v1, 0x7f0a018e

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    .line 83
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 84
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnits:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 85
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnits:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 88
    const v1, 0x7f0a018d

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimePicker:Landroid/view/View;

    .line 89
    const v1, 0x7f0a018f

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Landroid/widget/Switch;

    .line 90
    const v1, 0x7f0a0190

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mHelpText:Landroid/widget/TextView;

    .line 91
    const v1, 0x7f0a0191

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mConfirmButton:Landroid/widget/Button;

    .line 94
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 95
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 97
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/camera/ui/TimeIntervalPopup$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/TimeIntervalPopup$1;-><init>(Lcom/android/camera/ui/TimeIntervalPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mConfirmButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/camera/ui/TimeIntervalPopup$2;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/TimeIntervalPopup$2;-><init>(Lcom/android/camera/ui/TimeIntervalPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method public reloadPreference()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/TimeIntervalPopup$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/TimeIntervalPopup$Listener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mListener:Lcom/android/camera/ui/TimeIntervalPopup$Listener;

    .line 56
    return-void
.end method

.method protected setTimeSelectionEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 143
    iget-object v3, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mHelpText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimePicker:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    return-void

    :cond_0
    move v0, v2

    .line 143
    goto :goto_0

    :cond_1
    move v2, v1

    .line 144
    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/camera/ui/TimeIntervalPopup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/android/camera/ui/TimeIntervalPopup;->restoreSetting()V

    .line 139
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 140
    return-void
.end method
