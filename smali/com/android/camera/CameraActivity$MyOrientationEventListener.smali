.class Lcom/android/camera/CameraActivity$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/camera/CameraActivity;

    .line 160
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 161
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 168
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/camera/CameraActivity;

    # setter for: Lcom/android/camera/CameraActivity;->mLastRawOrientation:I
    invoke-static {v0, p1}, Lcom/android/camera/CameraActivity;->access$102(Lcom/android/camera/CameraActivity;I)I

    .line 170
    iget-object v0, p0, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraModule;->onOrientationChanged(I)V

    goto :goto_0
.end method
