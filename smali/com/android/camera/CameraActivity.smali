.class public Lcom/android/camera/CameraActivity;
.super Lcom/android/camera/ActivityBase;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/ui/CameraSwitcher$CameraSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraActivity$MyOrientationEventListener;
    }
.end annotation


# static fields
.field private static final DRAW_IDS:[I


# instance fields
.field private mAutoRotateScreen:Z

.field private mCameraControls:Landroid/view/View;

.field private mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mControlsBackground:Landroid/view/View;

.field mCurrentModule:Lcom/android/camera/CameraModule;

.field private mCurrentModuleIndex:I

.field private mDown:Landroid/view/MotionEvent;

.field private mDrawables:[Landroid/graphics/drawable/Drawable;

.field private mFadeInCameraScreenNail:Ljava/lang/Runnable;

.field private mFrame:Landroid/widget/FrameLayout;

.field private mHeightOrWidth:I

.field private mLastRawOrientation:I

.field private mMediaSaveService:Lcom/android/camera/MediaSaveService;

.field private mOnFrameDrawn:Ljava/lang/Runnable;

.field private mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

.field private mPieMenuButton:Landroid/view/View;

.field private mShutter:Lcom/android/camera/ShutterButton;

.field private mSwitcher:Lcom/android/camera/ui/CameraSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/CameraActivity;->DRAW_IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020148
        0x7f02014f
        0x7f02014a
        0x7f02014e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 47
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 65
    iput v0, p0, Lcom/android/camera/CameraActivity;->mHeightOrWidth:I

    .line 69
    iput v0, p0, Lcom/android/camera/CameraActivity;->mLastRawOrientation:I

    .line 72
    new-instance v0, Lcom/android/camera/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$1;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 244
    new-instance v0, Lcom/android/camera/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$3;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mOnFrameDrawn:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Lcom/android/camera/CameraActivity$4;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$4;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mFadeInCameraScreenNail:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/MediaSaveService;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/CameraActivity;Lcom/android/camera/MediaSaveService;)Lcom/android/camera/MediaSaveService;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/camera/CameraActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/camera/CameraActivity;->mLastRawOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/CameraActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->doChangeCamera(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/CameraActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFadeInCameraScreenNail:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/CameraActivity;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/CameraActivity;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private bindMediaSaveService()V
    .locals 3

    .prologue
    .line 347
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/camera/MediaSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/CameraActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 349
    return-void
.end method

.method private canReuseScreenNail()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 510
    iget v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeModule(Lcom/android/camera/CameraModule;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/CameraModule;

    .prologue
    .line 276
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onPauseBeforeSuper()V

    .line 277
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onPauseAfterSuper()V

    .line 278
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 279
    return-void
.end method

.method private doChangeCamera(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->canReuseScreenNail()Z

    move-result v0

    .line 204
    .local v0, "canReuse":Z
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->keep()V

    .line 205
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-direct {p0, v1}, Lcom/android/camera/CameraActivity;->closeModule(Lcom/android/camera/CameraModule;)V

    .line 206
    iput p1, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    .line 207
    packed-switch p1, :pswitch_data_0

    .line 221
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v1}, Lcom/android/camera/CameraModule;->needsPieMenu()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->showPieMenuButton(Z)V

    .line 223
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/CameraActivity;->openModule(Lcom/android/camera/CameraModule;Z)V

    .line 224
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    iget v2, p0, Lcom/android/camera/CameraActivity;->mLastRawOrientation:I

    invoke-interface {v1, v2}, Lcom/android/camera/CameraModule;->onOrientationChanged(I)V

    .line 225
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    invoke-interface {v1, v2}, Lcom/android/camera/CameraModule;->onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraScreenNail;->setAlpha(F)V

    .line 229
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mOnFrameDrawn:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraScreenNail;->setOnFrameDrawnOneShot(Ljava/lang/Runnable;)V

    .line 230
    return-void

    .line 209
    :pswitch_0
    new-instance v1, Lcom/android/camera/VideoModule;

    invoke-direct {v1}, Lcom/android/camera/VideoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_0

    .line 212
    :pswitch_1
    new-instance v1, Lcom/android/camera/PhotoModule;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_0

    .line 215
    :pswitch_2
    new-instance v1, Lcom/android/camera/PanoramaModule;

    invoke-direct {v1}, Lcom/android/camera/PanoramaModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_0

    .line 218
    :pswitch_3
    invoke-static {}, Lcom/android/gallery3d/util/LightCycleHelper;->createPanoramaModule()Lcom/android/camera/CameraModule;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private openModule(Lcom/android/camera/CameraModule;Z)V
    .locals 3
    .param p1, "module"    # Lcom/android/camera/CameraModule;
    .param p2, "canReuse"    # Z

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->canReuseScreenNail()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, p0, v2, v0}, Lcom/android/camera/CameraModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V

    .line 270
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 271
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onResumeBeforeSuper()V

    .line 272
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onResumeAfterSuper()V

    .line 273
    return-void

    :cond_0
    move v0, v1

    .line 269
    goto :goto_0
.end method

.method private setRotationAnimation(Z)V
    .locals 3
    .param p1, "fullscreen"    # Z

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "rotationAnimation":I
    if-eqz p1, :cond_0

    .line 377
    const/4 v0, 0x1

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 380
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 381
    .local v2, "winParams":Landroid/view/WindowManager$LayoutParams;
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 382
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 383
    return-void
.end method

.method private unbindMediaSaveService()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 358
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelActivityTouchHandling()V
    .locals 2

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDown:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDown:Landroid/view/MotionEvent;

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 449
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 450
    invoke-super {p0, v0}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 452
    .end local v0    # "cancel":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mDown:Landroid/view/MotionEvent;

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSwitcher;->isInsidePopup(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/CameraSwitcher;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 464
    :goto_0
    return v0

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSwitcher;->isInsidePopup(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraModule;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAutoFocusTime()J
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mAutoFocusTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getCameraScreenNail()Lcom/android/camera/CameraScreenNail;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    return-object v0
.end method

.method public getCaptureStartTime()J
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getJpegCallbackFinishTime()J
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getMediaSaveService()Lcom/android/camera/MediaSaveService;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    return-object v0
.end method

.method public getPictureDisplayedToJpegCallbackTime()J
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getShutterButton()Lcom/android/camera/ShutterButton;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mShutter:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method public getShutterLag()J
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mShutterLag:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getShutterToPictureDisplayedTime()J
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public hideSwitcher()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSwitcher;->closePopup()V

    .line 301
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSwitcher;->setVisibility(I)V

    .line 302
    return-void
.end method

.method public hideUI()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraControls:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 288
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mShutter:Lcom/android/camera/ShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 289
    return-void
.end method

.method public init()V
    .locals 9

    .prologue
    .line 117
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v7

    rem-int/lit16 v7, v7, 0xb4

    const/16 v8, 0x5a

    if-ne v7, v8, :cond_2

    const/4 v4, 0x1

    .line 118
    .local v4, "landscape":Z
    :goto_0
    const v7, 0x7f0a007f

    invoke-virtual {p0, v7}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/CameraActivity;->mControlsBackground:Landroid/view/View;

    .line 119
    const v7, 0x7f0a007e

    invoke-virtual {p0, v7}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/CameraActivity;->mCameraControls:Landroid/view/View;

    .line 120
    const v7, 0x7f0a0082

    invoke-virtual {p0, v7}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ShutterButton;

    iput-object v7, p0, Lcom/android/camera/CameraActivity;->mShutter:Lcom/android/camera/ShutterButton;

    .line 121
    const v7, 0x7f0a0081

    invoke-virtual {p0, v7}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/CameraSwitcher;

    iput-object v7, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    .line 122
    const v7, 0x7f0a0080

    invoke-virtual {p0, v7}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/CameraActivity;->mPieMenuButton:Landroid/view/View;

    .line 123
    invoke-static {p0}, Lcom/android/gallery3d/util/LightCycleHelper;->hasLightCycleCapture(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/camera/CameraActivity;->DRAW_IDS:[I

    array-length v6, v7

    .line 125
    .local v6, "totaldrawid":I
    :goto_1
    sget-boolean v7, Lcom/android/gallery3d/common/ApiHelper;->HAS_OLD_PANORAMA:Z

    if-nez v7, :cond_0

    add-int/lit8 v6, v6, -0x1

    .line 127
    :cond_0
    new-array v0, v6, [I

    .line 128
    .local v0, "drawids":[I
    new-array v5, v6, [I

    .line 129
    .local v5, "moduleids":[I
    const/4 v2, 0x0

    .line 130
    .local v2, "ix":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v7, v7

    if-ge v1, v7, :cond_6

    .line 131
    const/4 v7, 0x2

    if-ne v1, v7, :cond_4

    sget-boolean v7, Lcom/android/gallery3d/common/ApiHelper;->HAS_OLD_PANORAMA:Z

    if-nez v7, :cond_4

    .line 130
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 117
    .end local v0    # "drawids":[I
    .end local v1    # "i":I
    .end local v2    # "ix":I
    .end local v4    # "landscape":Z
    .end local v5    # "moduleids":[I
    .end local v6    # "totaldrawid":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 123
    .restart local v4    # "landscape":Z
    :cond_3
    sget-object v7, Lcom/android/camera/CameraActivity;->DRAW_IDS:[I

    array-length v7, v7

    add-int/lit8 v6, v7, -0x1

    goto :goto_1

    .line 134
    .restart local v0    # "drawids":[I
    .restart local v1    # "i":I
    .restart local v2    # "ix":I
    .restart local v5    # "moduleids":[I
    .restart local v6    # "totaldrawid":I
    :cond_4
    const/4 v7, 0x3

    if-ne v1, v7, :cond_5

    invoke-static {p0}, Lcom/android/gallery3d/util/LightCycleHelper;->hasLightCycleCapture(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 137
    :cond_5
    aput v1, v5, v2

    .line 138
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ix":I
    .local v3, "ix":I
    sget-object v7, Lcom/android/camera/CameraActivity;->DRAW_IDS:[I

    aget v7, v7, v1

    aput v7, v0, v2

    move v2, v3

    .end local v3    # "ix":I
    .restart local v2    # "ix":I
    goto :goto_3

    .line 140
    :cond_6
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    invoke-virtual {v7, v5, v0}, Lcom/android/camera/ui/CameraSwitcher;->setIds([I[I)V

    .line 141
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    invoke-virtual {v7, p0}, Lcom/android/camera/ui/CameraSwitcher;->setSwitchListener(Lcom/android/camera/ui/CameraSwitcher$CameraSwitchListener;)V

    .line 142
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    iget v8, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    invoke-virtual {v7, v8}, Lcom/android/camera/ui/CameraSwitcher;->setCurrentIndex(I)V

    .line 143
    return-void
.end method

.method protected installIntentFilter()V
    .locals 1

    .prologue
    .line 400
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->installIntentFilter()V

    .line 401
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->installIntentFilter()V

    .line 402
    return-void
.end method

.method public isAutoRotateScreen()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mAutoRotateScreen:Z

    return v0
.end method

.method public isInCameraApp()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    return v0
.end method

.method public isPanoramaActivity()Z
    .locals 2

    .prologue
    .line 517
    iget v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/VideoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule;->isRecording()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x2

    .line 408
    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/gallery3d/app/PhotoPage;

    if-nez v0, :cond_0

    .line 410
    const/4 p2, 0x0

    .line 412
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 414
    if-ne p2, v1, :cond_1

    .line 415
    const/4 p2, 0x0

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/CameraModule;->onActivityResult(IILandroid/content/Intent;)V

    .line 418
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    .line 432
    :cond_0
    return-void
.end method

.method public onCameraSelected(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    const/4 v5, 0x1

    .line 178
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    if-eq p1, v1, :cond_0

    .line 180
    iput-boolean v5, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    .line 182
    .local v0, "screenNail":Lcom/android/camera/CameraScreenNail;
    if-eqz v0, :cond_3

    .line 183
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 186
    :cond_2
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getAlpha()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x0

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    .line 188
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/camera/CameraActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/CameraActivity$2;-><init>(Lcom/android/camera/CameraActivity;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 195
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 197
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->doChangeCamera(I)V

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onCaptureTextureCopied()V

    .line 490
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 316
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 317
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraModule;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 318
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 94
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v1, 0x7f040014

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->setContentView(I)V

    .line 96
    const v1, 0x7f0a0084

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    .line 97
    sget-object v1, Lcom/android/camera/CameraActivity;->DRAW_IDS:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/camera/CameraActivity;->DRAW_IDS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraActivity;->DRAW_IDS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->init()V

    .line 102
    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    :cond_1
    new-instance v1, Lcom/android/camera/VideoModule;

    invoke-direct {v1}, Lcom/android/camera/VideoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 105
    iput v4, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    .line 110
    :goto_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-interface {v1, p0, v2, v4}, Lcom/android/camera/CameraModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V

    .line 111
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    iget v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraSwitcher;->setCurrentIndex(I)V

    .line 112
    new-instance v1, Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    invoke-direct {v1, p0, p0}, Lcom/android/camera/CameraActivity$MyOrientationEventListener;-><init>(Lcom/android/camera/CameraActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    .line 113
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->bindMediaSaveService()V

    .line 114
    return-void

    .line 107
    :cond_2
    new-instance v1, Lcom/android/camera/PhotoModule;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 108
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->unbindMediaSaveService()V

    .line 148
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    .line 149
    return-void
.end method

.method protected onFullScreenChanged(Z)V
    .locals 1
    .param p1, "full"    # Z

    .prologue
    .line 362
    if-eqz p1, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 367
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onFullScreenChanged(Z)V

    .line 368
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ROTATION_ANIMATION:Z

    if-eqz v0, :cond_0

    .line 369
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->setRotationAnimation(Z)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraModule;->onFullScreenChanged(Z)V

    .line 372
    return-void

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->hideUI()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/CameraModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/CameraModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 394
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 395
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->clearActivityResult()V

    .line 396
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 323
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->disable()V

    .line 324
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onPauseBeforeSuper()V

    .line 325
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 326
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onPauseAfterSuper()V

    .line 327
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onPreviewTextureCopied()V

    .line 485
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 332
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 334
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->setRequestedOrientation(I)V

    .line 335
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mAutoRotateScreen:Z

    .line 340
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->enable()V

    .line 341
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onResumeBeforeSuper()V

    .line 342
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 343
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onResumeAfterSuper()V

    .line 344
    return-void

    .line 337
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->setRequestedOrientation(I)V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mAutoRotateScreen:Z

    goto :goto_0
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onShowSwitcherPopup()V

    .line 266
    return-void
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 425
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 387
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    .line 388
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onStop()V

    .line 389
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->clearTasks()V

    .line 390
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 494
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 495
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onUserInteraction()V

    .line 496
    return-void
.end method

.method public showPieMenuButton(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const v4, 0x7f0a0129

    const v3, 0x7f0a0080

    const v0, 0x7f0a007f

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 233
    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    invoke-virtual {p0, v3}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    invoke-virtual {p0, v3}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 240
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSwitcher()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->needsSwitcher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSwitcher;->setVisibility(I)V

    .line 308
    :cond_0
    return-void
.end method

.method public showUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraControls:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 294
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mShutter:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mShutter:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestLayout()V

    .line 297
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 470
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/camera/ProxyLauncher;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 472
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 473
    invoke-super {p0, v0, p2}, Lcom/android/camera/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 474
    return-void
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 477
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public updateCameraAppView()V
    .locals 1

    .prologue
    .line 505
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->updateCameraAppView()V

    .line 506
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->updateCameraAppView()V

    .line 507
    return-void
.end method

.method protected updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->updateStorageHintOnResume()Z

    move-result v0

    return v0
.end method
