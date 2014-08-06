.class public Lcom/android/camera/CameraBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "CameraBackupAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/camera/CameraBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/camera/ComboPreferences;->getSharedPreferencesNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "prefNames":[Ljava/lang/String;
    const-string v2, "camera_prefs"

    new-instance v3, Landroid/app/backup/SharedPreferencesBackupHelper;

    invoke-direct {v3, v0, v1}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/CameraBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 31
    return-void
.end method
