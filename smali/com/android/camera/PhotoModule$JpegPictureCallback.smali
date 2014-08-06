.class final Lcom/android/camera/PhotoModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V
    .locals 0
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput-object p2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 780
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 21
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mPaused:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3500(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    :goto_0
    return-void

    .line 788
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3600(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hdr"

    if-ne v2, v3, :cond_1

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 793
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    # setter for: Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v2, v12, v13}, Lcom/android/camera/PhotoModule;->access$3702(Lcom/android/camera/PhotoModule;J)J

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3300(Lcom/android/camera/PhotoModule;)J

    move-result-wide v2

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-eqz v2, :cond_4

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$3300(Lcom/android/camera/PhotoModule;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$3100(Lcom/android/camera/PhotoModule;)J

    move-result-wide v19

    sub-long v12, v12, v19

    iput-wide v12, v2, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$3700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$3300(Lcom/android/camera/PhotoModule;)J

    move-result-wide v19

    sub-long v12, v12, v19

    iput-wide v12, v2, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 808
    :goto_1
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v12, v7, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "ms"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v2, :cond_2

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->animateSlide()V

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xd

    invoke-static {}, Lcom/android/camera/CaptureAnimManager;->getAnimationDuration()I

    move-result v7

    int-to-long v12, v7

    invoke-virtual {v2, v3, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 822
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 824
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

    if-eqz v2, :cond_5

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # invokes: Lcom/android/camera/PhotoModule;->setupPreview()V
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)V

    .line 834
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v18

    .line 837
    .local v18, "s":Landroid/hardware/Camera$Size;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v11

    .line 838
    .local v11, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    invoke-static {v11}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v10

    .line 840
    .local v10, "orientation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mJpegRotation:I
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3900(Lcom/android/camera/PhotoModule;)I

    move-result v2

    add-int/2addr v2, v10

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_6

    .line 841
    move-object/from16 v0, v18

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    .line 842
    .local v8, "width":I
    move-object/from16 v0, v18

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    .line 847
    .local v9, "height":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$NamedImages;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 848
    .local v4, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$NamedImages;->getDate()J

    move-result-wide v5

    .line 849
    .local v5, "date":J
    if-nez v4, :cond_7

    .line 850
    const-string v2, "CAM_PhotoModule"

    const-string v3, "Unbalanced name/data pair"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "date":J
    .end local v8    # "width":I
    .end local v9    # "height":I
    .end local v10    # "orientation":I
    .end local v11    # "exif":Lcom/android/gallery3d/exif/ExifInterface;
    .end local v18    # "s":Landroid/hardware/Camera$Size;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 883
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 884
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$3700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v12

    sub-long v12, v16, v12

    iput-wide v12, v2, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    .line 885
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mJpegCallbackFinishTime = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v12, v7, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "ms"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const-wide/16 v12, 0x0

    # setter for: Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v2, v12, v13}, Lcom/android/camera/PhotoModule;->access$3702(Lcom/android/camera/PhotoModule;J)J

    goto/16 :goto_0

    .line 803
    .end local v16    # "now":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$3400(Lcom/android/camera/PhotoModule;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$3100(Lcom/android/camera/PhotoModule;)J

    move-result-wide v19

    sub-long v12, v12, v19

    iput-wide v12, v2, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$3700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$3400(Lcom/android/camera/PhotoModule;)J

    move-result-wide v19

    sub-long v12, v12, v19

    iput-wide v12, v2, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 830
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v12, 0x12c

    invoke-virtual {v2, v3, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 844
    .restart local v10    # "orientation":I
    .restart local v11    # "exif":Lcom/android/gallery3d/exif/ExifInterface;
    .restart local v18    # "s":Landroid/hardware/Camera$Size;
    :cond_6
    move-object/from16 v0, v18

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    .line 845
    .restart local v8    # "width":I
    move-object/from16 v0, v18

    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    .restart local v9    # "height":I
    goto/16 :goto_3

    .line 852
    .restart local v4    # "title":Ljava/lang/String;
    .restart local v5    # "date":J
    :cond_7
    const-wide/16 v2, -0x1

    cmp-long v2, v5, v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v5, v2, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 853
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mHeading:I
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4100(Lcom/android/camera/PhotoModule;)I

    move-result v2

    if-ltz v2, :cond_9

    .line 855
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v3, "M"

    invoke-virtual {v11, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v14

    .line 858
    .local v14, "directionRefTag":Lcom/android/gallery3d/exif/ExifTag;
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v3, Lcom/android/gallery3d/exif/Rational;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mHeading:I
    invoke-static {v7}, Lcom/android/camera/PhotoModule;->access$4100(Lcom/android/camera/PhotoModule;)I

    move-result v7

    int-to-long v12, v7

    const-wide/16 v19, 0x1

    move-wide/from16 v0, v19

    invoke-direct {v3, v12, v13, v0, v1}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    invoke-virtual {v11, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v15

    .line 861
    .local v15, "directionTag":Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v11, v14}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 862
    invoke-virtual {v11, v15}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 864
    .end local v14    # "directionRefTag":Lcom/android/gallery3d/exif/ExifTag;
    .end local v15    # "directionTag":Lcom/android/gallery3d/exif/ExifTag;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$4200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v13}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/gallery3d/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    goto/16 :goto_4

    .line 869
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "date":J
    .end local v8    # "width":I
    .end local v9    # "height":I
    .end local v10    # "orientation":I
    .end local v11    # "exif":Lcom/android/gallery3d/exif/ExifInterface;
    .end local v18    # "s":Landroid/hardware/Camera$Size;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    # setter for: Lcom/android/camera/PhotoModule;->mJpegImageData:[B
    invoke-static {v2, v0}, Lcom/android/camera/PhotoModule;->access$4402(Lcom/android/camera/PhotoModule;[B)[B

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mQuickCapture:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->showPostCaptureAlert()V

    goto/16 :goto_4

    .line 873
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule;->onCaptureDone()V

    goto/16 :goto_4
.end method
