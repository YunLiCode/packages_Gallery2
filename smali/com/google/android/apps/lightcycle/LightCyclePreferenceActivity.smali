.class public Lcom/google/android/apps/lightcycle/LightCyclePreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "LightCyclePreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/apps/lightcycle/util/UiUtil;->setDisplayHomeAsUpEnabled(Landroid/app/Activity;Z)V

    .line 30
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/LightCyclePreferenceActivity;->addPreferencesFromResource(I)V

    .line 31
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 35
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 37
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/LightCyclePreferenceActivity;->finish()V

    .line 38
    const/4 v0, 0x1

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
