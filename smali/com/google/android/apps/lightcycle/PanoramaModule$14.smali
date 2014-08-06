.class Lcom/google/android/apps/lightcycle/PanoramaModule$14;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;->onCaptureTextureCopied()V
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
    .line 1087
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$14;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1087
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaModule$14;->onCallback(Ljava/lang/Void;)V

    return-void
.end method

.method public onCallback(Ljava/lang/Void;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 1092
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$14;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mPhotoSpherePreviewWriter:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2200(Lcom/google/android/apps/lightcycle/PanoramaModule;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$14;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v3

    iget-object v0, v3, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->mosaicFilePath:Ljava/lang/String;

    .line 1098
    .local v0, "previewFile":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->PreviewStitch(Ljava/lang/String;)I

    .line 1099
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$14;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->imageUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 1100
    const-string v3, "LightCycle"

    const-string v4, "Prepared preview doesn\'t exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$14;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1115
    return-void

    .line 1102
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$14;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$800(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getStitchingProgressManager()Lcom/android/gallery3d/app/StitchingProgressManager;

    move-result-object v1

    .line 1104
    .local v1, "progressManager":Lcom/android/gallery3d/app/StitchingProgressManager;
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$14;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->imageUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/app/StitchingProgressManager;->clearCachedThumbnails(Landroid/net/Uri;)V

    .line 1105
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$14;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->mosaicFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->createImageContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 1108
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "mime_type"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1109
    const-string v3, "datetaken"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1110
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$14;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$800(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$14;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    invoke-static {v4}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->imageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1093
    .end local v0    # "previewFile":Ljava/lang/String;
    .end local v1    # "progressManager":Lcom/android/gallery3d/app/StitchingProgressManager;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
