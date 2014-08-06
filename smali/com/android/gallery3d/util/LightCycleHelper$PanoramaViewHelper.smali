.class public Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;
.super Ljava/lang/Object;
.source "LightCycleHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/panorama/PanoramaClient$OnFullPanoramaInfoLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/util/LightCycleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanoramaViewHelper"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mGooglePlayServicesAvailable:Z

.field private mPanoramaClient:Lcom/google/android/gms/panorama/PanoramaClient;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->mActivity:Landroid/app/Activity;

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->mGooglePlayServicesAvailable:Z

    .line 87
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    .line 129
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4
    .param p1, "status"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 116
    const-string v1, "LightCycleHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x2328

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "LightCycleHelper"

    const-string v2, "Could not start resolution"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/google/android/gms/panorama/PanoramaClient;

    iget-object v1, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/panorama/PanoramaClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->mPanoramaClient:Lcom/google/android/gms/panorama/PanoramaClient;

    .line 91
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public onFullPanoramaInfoLoaded(Lcom/google/android/gms/common/ConnectionResult;ILandroid/content/Intent;)V
    .locals 3
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;
    .param p2, "panoramaType"    # I
    .param p3, "viewerIntent"    # Landroid/content/Intent;

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 140
    if-eqz p3, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string v0, "LightCycleHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load panorama info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->mPanoramaClient:Lcom/google/android/gms/panorama/PanoramaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/PanoramaClient;->connect()V

    .line 95
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->mPanoramaClient:Lcom/google/android/gms/panorama/PanoramaClient;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->mPanoramaClient:Lcom/google/android/gms/panorama/PanoramaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/PanoramaClient;->disconnect()V

    .line 101
    :cond_0
    return-void
.end method

.method public showPanorama(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->mGooglePlayServicesAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->mPanoramaClient:Lcom/google/android/gms/panorama/PanoramaClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->mPanoramaClient:Lcom/google/android/gms/panorama/PanoramaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/PanoramaClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    const-string v0, "LightCycleHelper"

    const-string v1, "PanoramaClient not available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string v0, "Lightcycle"

    const-string v1, "Viewer"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->mPanoramaClient:Lcom/google/android/gms/panorama/PanoramaClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/android/gms/panorama/PanoramaClient;->loadFullPanoramaInfoAndGrantAccess(Lcom/google/android/gms/panorama/PanoramaClient$OnFullPanoramaInfoLoadedListener;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method
