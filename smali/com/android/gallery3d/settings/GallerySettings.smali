.class public Lcom/android/gallery3d/settings/GallerySettings;
.super Landroid/preference/PreferenceActivity;
.source "GallerySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final PROJECTION_SETTINGS:[Ljava/lang/String;


# instance fields
.field private final DELAY_SHOW_PROGRESS:J

.field private final MSG_DISMISS_PROGRESS_DIALOG:I

.field private final MSG_SHOW_PROGRESS_DIALOG:I

.field private final MSG_UPDATE_ACCOUNTS:I

.field private mFacade:Lcom/google/android/picasasync/PicasaFacade;

.field private mHandler:Landroid/os/Handler;

.field private mIsResumed:Z

.field private mLoadAccountTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefsSyncOnWifiOnly:Landroid/preference/CheckBoxPreference;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sync_picasa_on_wifi_only"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/settings/GallerySettings;->PROJECTION_SETTINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 74
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/gallery3d/settings/GallerySettings;->DELAY_SHOW_PROGRESS:J

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/settings/GallerySettings;->MSG_SHOW_PROGRESS_DIALOG:I

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/settings/GallerySettings;->MSG_DISMISS_PROGRESS_DIALOG:I

    .line 78
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/settings/GallerySettings;->MSG_UPDATE_ACCOUNTS:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/settings/GallerySettings;->mIsResumed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/settings/GallerySettings;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/settings/GallerySettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/settings/GallerySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/settings/GallerySettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/settings/GallerySettings;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/settings/GallerySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/settings/GallerySettings;[Landroid/accounts/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/settings/GallerySettings;
    .param p1, "x1"    # [Landroid/accounts/Account;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/gallery3d/settings/GallerySettings;->updateAccountInfo([Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/android/gallery3d/settings/GallerySettings;->getGoogleAccounts(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/settings/GallerySettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/settings/GallerySettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/settings/GallerySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static addAccount(Landroid/app/Activity;Z)V
    .locals 10
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "checkExisting"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 170
    invoke-static {p0}, Lcom/android/gallery3d/settings/GallerySettings;->disallowAddAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 174
    .local v9, "prefs":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_2

    .line 175
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 177
    .local v8, "accounts":[Landroid/accounts/Account;
    array-length v0, v8

    if-gtz v0, :cond_0

    const-string v0, "showSigninReminder"

    invoke-interface {v9, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    .end local v8    # "accounts":[Landroid/accounts/Account;
    :cond_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v4, "options":Landroid/os/Bundle;
    const-string v0, "introMessage"

    const v1, 0x7f0b0137

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 184
    const-string v0, "allowSkip"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const-string v2, "service_lh2"

    new-instance v6, Lcom/android/gallery3d/settings/GallerySettings$2;

    invoke-direct {v6, v9}, Lcom/android/gallery3d/settings/GallerySettings$2;-><init>(Landroid/content/SharedPreferences;)V

    move-object v5, p0

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method private changePicasaSyncSettings(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/settings/GallerySettings;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getSettingsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method private static disallowAddAccount(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 158
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_0

    .line 162
    :goto_0
    return v1

    .line 161
    :cond_0
    const-string v2, "user"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 162
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "no_modify_accounts"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private static getGoogleAccounts(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 3
    .param p0, "jc"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 319
    :try_start_0
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 322
    :goto_0
    return-object v1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GallerySettings"

    const-string v2, "cannot get accounts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/accounts/Account;

    goto :goto_0
.end method

.method private updateAccountInfo([Landroid/accounts/Account;)V
    .locals 20
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 271
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/settings/GallerySettings;->mIsResumed:Z

    if-nez v3, :cond_0

    .line 315
    :goto_0
    return-void

    .line 273
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/settings/GallerySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/settings/GallerySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 275
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/settings/GallerySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 277
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/settings/GallerySettings;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    const-string v3, "prefs_account_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/settings/GallerySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 282
    .local v9, "account_settings":Landroid/preference/PreferenceGroup;
    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 283
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/settings/GallerySettings;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v16

    .line 287
    .local v16, "picasaAuthority":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.settings.SYNC_SETTINGS"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v17, "startSyncSettings":Landroid/content/Intent;
    const-string v3, "authorities"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v15

    .line 291
    .local v15, "masterSync":Z
    move-object/from16 v10, p1

    .local v10, "arr$":[Landroid/accounts/Account;
    array-length v14, v10

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v14, :cond_3

    aget-object v8, v10, v13

    .line 292
    .local v8, "account":Landroid/accounts/Account;
    new-instance v12, Lcom/android/gallery3d/settings/AccountHeaderPreference;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/gallery3d/settings/AccountHeaderPreference;-><init>(Landroid/content/Context;)V

    .line 293
    .local v12, "header":Lcom/android/gallery3d/settings/AccountHeaderPreference;
    iget-object v3, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v12, v3}, Lcom/android/gallery3d/settings/AccountHeaderPreference;->setAccountName(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 296
    new-instance v18, Lcom/android/gallery3d/settings/AccountSyncPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/settings/AccountSyncPreference;-><init>(Landroid/content/Context;)V

    .line 297
    .local v18, "sync":Lcom/android/gallery3d/settings/AccountSyncPreference;
    if-eqz v15, :cond_2

    move-object/from16 v0, v16

    invoke-static {v8, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/settings/AccountSyncPreference;->setSyncEnabled(Z)V

    .line 299
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/settings/AccountSyncPreference;->setIntent(Landroid/content/Intent;)V

    .line 300
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 291
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 297
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 304
    .end local v8    # "account":Landroid/accounts/Account;
    .end local v12    # "header":Lcom/android/gallery3d/settings/AccountHeaderPreference;
    .end local v18    # "sync":Lcom/android/gallery3d/settings/AccountSyncPreference;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/settings/GallerySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 306
    .local v2, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/settings/GallerySettings;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaFacade;->getSettingsUri()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/gallery3d/settings/GallerySettings;->PROJECTION_SETTINGS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 309
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_4

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 310
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_5

    const/16 v19, 0x1

    .line 311
    .local v19, "syncOnWifiOnly":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/settings/GallerySettings;->mPrefsSyncOnWifiOnly:Landroid/preference/CheckBoxPreference;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 309
    .end local v19    # "syncOnWifiOnly":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 310
    :cond_5
    const/16 v19, 0x0

    goto :goto_4

    .line 313
    :catchall_0
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x4

    .line 91
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 93
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 95
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/settings/GallerySettings;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    .line 98
    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/GallerySettings;->addPreferencesFromResource(I)V

    .line 101
    const-string v1, "prefs_sync_on_wifi_only"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/GallerySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/gallery3d/settings/GallerySettings;->mPrefsSyncOnWifiOnly:Landroid/preference/CheckBoxPreference;

    .line 102
    iget-object v1, p0, Lcom/android/gallery3d/settings/GallerySettings;->mPrefsSyncOnWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    const-string v1, "prefs_open_source_licenses"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/GallerySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 105
    new-instance v1, Lcom/android/gallery3d/settings/GallerySettings$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/settings/GallerySettings$1;-><init>(Lcom/android/gallery3d/settings/GallerySettings;)V

    iput-object v1, p0, Lcom/android/gallery3d/settings/GallerySettings;->mHandler:Landroid/os/Handler;

    .line 130
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 135
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120020

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 136
    invoke-static {p0}, Lcom/android/gallery3d/settings/GallerySettings;->disallowAddAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const v0, 0x7f0a0259

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 139
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 154
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 146
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->showAddAccount()V

    goto :goto_0

    .line 150
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->finish()V

    goto :goto_0

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0a0259 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 256
    iput-boolean v2, p0, Lcom/android/gallery3d/settings/GallerySettings;->mIsResumed:Z

    .line 257
    iget-object v1, p0, Lcom/android/gallery3d/settings/GallerySettings;->mLoadAccountTask:Lcom/android/gallery3d/util/Future;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/gallery3d/settings/GallerySettings;->mLoadAccountTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/settings/GallerySettings;->mLoadAccountTask:Lcom/android/gallery3d/util/Future;

    .line 263
    :cond_0
    const-string v1, "prefs_account_settings"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/GallerySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 265
    .local v0, "account_settings":Landroid/preference/PreferenceGroup;
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 267
    iget-object v1, p0, Lcom/android/gallery3d/settings/GallerySettings;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 220
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "key":Ljava/lang/String;
    const-string v2, "prefs_sync_on_wifi_only"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 223
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "sync_picasa_on_wifi_only"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    invoke-direct {p0, v1}, Lcom/android/gallery3d/settings/GallerySettings;->changePicasaSyncSettings(Landroid/content/ContentValues;)V

    .line 225
    return v3

    .line 223
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 227
    .end local v1    # "values":Landroid/content/ContentValues;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown prefs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 212
    const-string v0, "prefs_open_source_licenses"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/app/LicensesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/settings/GallerySettings;->startActivity(Landroid/content/Intent;)V

    .line 215
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 232
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 233
    iput-boolean v4, p0, Lcom/android/gallery3d/settings/GallerySettings;->mIsResumed:Z

    .line 235
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 236
    .local v0, "app":Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/settings/GallerySettings$3;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/settings/GallerySettings$3;-><init>(Lcom/android/gallery3d/settings/GallerySettings;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/settings/GallerySettings;->mLoadAccountTask:Lcom/android/gallery3d/util/Future;

    .line 247
    iget-object v1, p0, Lcom/android/gallery3d/settings/GallerySettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    iget-object v1, p0, Lcom/android/gallery3d/settings/GallerySettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 250
    iget-object v1, p0, Lcom/android/gallery3d/settings/GallerySettings;->mPrefsSyncOnWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 251
    return-void
.end method

.method public showAddAccount()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/gallery3d/settings/GallerySettings;->addAccount(Landroid/app/Activity;Z)V

    .line 167
    return-void
.end method
