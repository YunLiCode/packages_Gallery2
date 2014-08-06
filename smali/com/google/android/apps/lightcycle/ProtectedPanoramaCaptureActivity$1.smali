.class Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ProtectedPanoramaCaptureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity$1;->this$0:Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity$1;->this$0:Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/ProtectedPanoramaCaptureActivity;->finish()V

    .line 45
    return-void
.end method
