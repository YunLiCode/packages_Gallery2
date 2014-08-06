.class Lcom/android/camera/CameraManager$CameraProxy$3;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraManager$CameraProxy;->waitDone()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraManager$CameraProxy;

.field final synthetic val$waitDoneLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraManager$CameraProxy;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraProxy$3;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iput-object p2, p0, Lcom/android/camera/CameraManager$CameraProxy$3;->val$waitDoneLock:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy$3;->val$waitDoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy$3;->val$waitDoneLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 465
    monitor-exit v1

    .line 466
    return-void

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
