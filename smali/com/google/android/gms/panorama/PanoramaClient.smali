.class public Lcom/google/android/gms/panorama/PanoramaClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;,
        Lcom/google/android/gms/panorama/PanoramaClient$OnFullPanoramaInfoLoadedListener;
    }
.end annotation


# instance fields
.field private final hF:Lcom/google/android/gms/internal/eu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectionCallbacks"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
    .param p3, "connectionFailedListener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/eu;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/eu;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->hF:Lcom/google/android/gms/internal/eu;

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->hF:Lcom/google/android/gms/internal/eu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eu;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->hF:Lcom/google/android/gms/internal/eu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eu;->disconnect()V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->hF:Lcom/google/android/gms/internal/eu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eu;->isConnected()Z

    move-result v0

    return v0
.end method

.method public loadFullPanoramaInfoAndGrantAccess(Lcom/google/android/gms/panorama/PanoramaClient$OnFullPanoramaInfoLoadedListener;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/panorama/PanoramaClient$OnFullPanoramaInfoLoadedListener;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "viewerIntentExtras"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->hF:Lcom/google/android/gms/internal/eu;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/eu;->a(Lcom/google/android/gms/panorama/PanoramaClient$OnFullPanoramaInfoLoadedListener;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    return-void
.end method
