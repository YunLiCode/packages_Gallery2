.class public final Lcom/google/android/gms/internal/ah$d;
.super Lcom/google/android/gms/internal/al$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field final synthetic bu:Lcom/google/android/gms/internal/ah;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ah$d;->bu:Lcom/google/android/gms/internal/ah;

    invoke-direct {p0}, Lcom/google/android/gms/internal/al$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ah$d;->bu:Lcom/google/android/gms/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/internal/ah;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ah$d;->bu:Lcom/google/android/gms/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/internal/ah;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/internal/ah$f;

    iget-object v4, p0, Lcom/google/android/gms/internal/ah$d;->bu:Lcom/google/android/gms/internal/ah;

    invoke-direct {v3, v4, p1, p2, p3}, Lcom/google/android/gms/internal/ah$f;-><init>(Lcom/google/android/gms/internal/ah;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
