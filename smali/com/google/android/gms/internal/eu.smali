.class public Lcom/google/android/gms/internal/eu;
.super Lcom/google/android/gms/internal/ah;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/eu$b;,
        Lcom/google/android/gms/internal/eu$c;,
        Lcom/google/android/gms/internal/eu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ah",
        "<",
        "Lcom/google/android/gms/internal/et;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ah;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Y(Landroid/os/IBinder;)Lcom/google/android/gms/internal/et;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/et$a;->X(Landroid/os/IBinder;)Lcom/google/android/gms/internal/et;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/ah$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/am;",
            "Lcom/google/android/gms/internal/ah",
            "<",
            "Lcom/google/android/gms/internal/et;",
            ">.d;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const v1, 0x2fda64

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/am;->a(Lcom/google/android/gms/internal/al;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/eu$b;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eu;->q()V

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/eu;->r()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/et;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/et;->a(Lcom/google/android/gms/internal/es;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v1, v3}, Lcom/google/android/gms/internal/eu$b;->a(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/panorama/PanoramaClient$OnFullPanoramaInfoLoadedListener;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 2

    new-instance v1, Lcom/google/android/gms/internal/eu$b;

    if-eqz p4, :cond_0

    move-object v0, p2

    :goto_0
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/eu$b;-><init>(Lcom/google/android/gms/internal/eu;Lcom/google/android/gms/panorama/PanoramaClient$OnFullPanoramaInfoLoadedListener;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/eu;->a(Lcom/google/android/gms/internal/eu$b;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/eu;->Y(Landroid/os/IBinder;)Lcom/google/android/gms/internal/et;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.panorama.service.START"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.panorama.internal.IPanoramaService"

    return-object v0
.end method
