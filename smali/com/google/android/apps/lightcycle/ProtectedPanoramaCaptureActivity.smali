.class public Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;
.super Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;
.source "ProtectedPanoramaCaptureActivity.java"


# instance fields
.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field protected mSecureCamera:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity$1;-><init>(Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-static {}, Lcom/android/gallery3d/util/LightCycleHelper;->initNative()V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "secure_camera"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;->mSecureCamera:Z

    .line 25
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;->mSecureCamera:Z

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 29
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;->mSecureCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 38
    :cond_0
    invoke-super {p0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->onDestroy()V

    .line 39
    return-void
.end method
