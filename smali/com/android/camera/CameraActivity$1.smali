.class Lcom/android/camera/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "b"    # Landroid/os/IBinder;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    check-cast p2, Lcom/android/camera/MediaSaveService$LocalBinder;

    .end local p2    # "b":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/camera/MediaSaveService$LocalBinder;->getService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    # setter for: Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;
    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$002(Lcom/android/camera/CameraActivity;Lcom/android/camera/MediaSaveService;)Lcom/android/camera/MediaSaveService;

    .line 76
    iget-object v0, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    iget-object v1, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    # getter for: Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;
    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/MediaSaveService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/CameraModule;->onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V

    .line 77
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;
    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$002(Lcom/android/camera/CameraActivity;Lcom/android/camera/MediaSaveService;)Lcom/android/camera/MediaSaveService;

    .line 81
    return-void
.end method
