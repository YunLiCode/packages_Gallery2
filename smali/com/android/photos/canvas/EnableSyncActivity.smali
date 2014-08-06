.class public Lcom/android/photos/canvas/EnableSyncActivity;
.super Landroid/app/Activity;
.source "EnableSyncActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 17
    .local v1, "accounts":[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 18
    .local v0, "account":Landroid/accounts/Account;
    const-string v5, "com.google.android.gallery3d.GooglePhotoProvider"

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 17
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    invoke-virtual {p0}, Lcom/android/photos/canvas/EnableSyncActivity;->finish()V

    .line 22
    invoke-virtual {p0}, Lcom/android/photos/canvas/EnableSyncActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/photos/canvas/CanvasProviderBase;->NOTIFY_CHANGED_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 24
    return-void
.end method
