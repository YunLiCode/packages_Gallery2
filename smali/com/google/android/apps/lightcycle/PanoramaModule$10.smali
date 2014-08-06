.class Lcom/google/android/apps/lightcycle/PanoramaModule$10;
.super Ljava/lang/Thread;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;->onDoneButtonPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$10;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 727
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$10;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v9}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$800(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020166

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 729
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 730
    .local v5, "photoSphereImage":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 732
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$10;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    invoke-static {v9}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->mosaicFilePath:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v5, v9, v10, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 734
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 735
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$10;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    invoke-static {v9}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->mosaicFilePath:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->createImageContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v8

    .line 738
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "mime_type"

    const-string v10, "application/stitching-preview"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$10;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v9}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$800(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 741
    .local v7, "uri":Landroid/net/Uri;
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$10;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    invoke-static {v9}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v9

    iput-object v7, v9, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->imageUri:Landroid/net/Uri;

    .line 742
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$10;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v9}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$800(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->getStitchingServiceManager(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    move-result-object v6

    .line 744
    .local v6, "stitchingServiceManager":Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$10;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    invoke-static {v9}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->onStitchingQueued(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 756
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "stitchingServiceManager":Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 745
    :catch_0
    move-exception v1

    .line 746
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    const-string v9, "LightCycle"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not write image: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$10;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->mosaicFilePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    if-eqz v3, :cond_0

    .line 749
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 750
    :catch_1
    move-exception v2

    .line 751
    .local v2, "e2":Ljava/io/IOException;
    const-string v9, "LightCycle"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close write image: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$10;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->mosaicFilePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 745
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e2":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
