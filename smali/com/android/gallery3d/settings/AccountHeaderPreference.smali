.class public Lcom/android/gallery3d/settings/AccountHeaderPreference;
.super Landroid/preference/Preference;
.source "AccountHeaderPreference.java"


# instance fields
.field private mAccountName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    const v1, 0x101008e

    invoke-direct {p0, p1, v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/settings/AccountHeaderPreference;->setLayoutResource(I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 45
    const v1, 0x7f0a0064

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    .local v0, "title":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/gallery3d/settings/AccountHeaderPreference;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/settings/AccountHeaderPreference;->mAccountName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/settings/AccountHeaderPreference;->mAccountName:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/AccountHeaderPreference;->notifyChanged()V

    goto :goto_0
.end method
