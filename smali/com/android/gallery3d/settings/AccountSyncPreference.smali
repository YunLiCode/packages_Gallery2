.class public Lcom/android/gallery3d/settings/AccountSyncPreference;
.super Landroid/preference/Preference;
.source "AccountSyncPreference.java"


# instance fields
.field private mSyncEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/settings/AccountSyncPreference;->mSyncEnabled:Z

    .line 32
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/settings/AccountSyncPreference;->setLayoutResource(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 43
    const v2, 0x7f0a0064

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    .local v1, "text":Landroid/widget/TextView;
    const v2, 0x7f0a0065

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    .local v0, "summary":Landroid/widget/TextView;
    iget-boolean v2, p0, Lcom/android/gallery3d/settings/AccountSyncPreference;->mSyncEnabled:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0b0131

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 48
    const v2, 0x7f0b0133

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 49
    return-void

    .line 45
    :cond_0
    const v2, 0x7f0b0132

    goto :goto_0
.end method

.method public setSyncEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/gallery3d/settings/AccountSyncPreference;->mSyncEnabled:Z

    if-ne p1, v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/settings/AccountSyncPreference;->mSyncEnabled:Z

    .line 37
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/AccountSyncPreference;->notifyChanged()V

    goto :goto_0
.end method
