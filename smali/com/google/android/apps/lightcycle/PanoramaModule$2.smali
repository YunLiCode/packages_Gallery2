.class Lcom/google/android/apps/lightcycle/PanoramaModule$2;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/lightcycle/util/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$2;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 191
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaModule$2;->onCallback(Ljava/lang/Void;)V

    return-void
.end method

.method public onCallback(Ljava/lang/Void;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    .line 195
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$2;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mNumberOfImages:I
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$100(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$2;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    # setter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mStatFirstPhotoTimeMillis:J
    invoke-static {v0, v5, v6}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$402(Lcom/google/android/apps/lightcycle/PanoramaModule;J)J

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$2;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # operator++ for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mNumberOfImages:I
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$108(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$2;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 201
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$2;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$500(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$2;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$500(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$2;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mSingleImageShutterSoundId:I
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$600(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$2;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mStitchingPaused:Z
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$700(Lcom/google/android/apps/lightcycle/PanoramaModule;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$2;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    const/4 v1, 0x1

    # setter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mStitchingPaused:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$702(Lcom/google/android/apps/lightcycle/PanoramaModule;Z)Z

    .line 206
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$2;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$800(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.lightcycle.panorama.PAUSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 209
    :cond_2
    return-void
.end method
