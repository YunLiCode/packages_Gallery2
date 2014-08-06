.class public Lcom/android/camera/PhotoUI;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/camera/FocusOverlayManager$FocusUI;
.implements Lcom/android/camera/LocationManager$Listener;
.implements Lcom/android/camera/PreviewGestures$SingleTapListener;
.implements Lcom/android/camera/PreviewGestures$SwipeListener;
.implements Lcom/android/camera/ui/PieRenderer$PieListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoUI$ZoomChangeListener;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBlocker:Landroid/view/View;

.field private mController:Lcom/android/camera/PhotoController;

.field private mCountDownView:Lcom/android/camera/ui/CountDownView;

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mGestures:Lcom/android/camera/PreviewGestures;

.field private mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private mMenu:Lcom/android/camera/PhotoMenu;

.field private mMenuButton:Landroid/view/View;

.field private mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

.field private mPieRenderer:Lcom/android/camera/ui/PieRenderer;

.field private mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

.field private mPreviewHeight:I

.field private mPreviewThumb:Landroid/view/View;

.field private mPreviewWidth:I

.field private mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mReviewCancelButton:Landroid/view/View;

.field private mReviewDoneButton:Landroid/view/View;

.field private mReviewRetakeButton:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private volatile mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceTexture:Ljava/lang/Object;

.field private mZoomMax:I

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoController;Landroid/view/View;)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/PhotoController;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput v1, p0, Lcom/android/camera/PhotoUI;->mPreviewWidth:I

    .line 94
    iput v1, p0, Lcom/android/camera/PhotoUI;->mPreviewHeight:I

    .line 97
    new-instance v1, Lcom/android/camera/PhotoUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoUI$1;-><init>(Lcom/android/camera/PhotoUI;)V

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 119
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 120
    iput-object p2, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    .line 121
    iput-object p3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    .line 123
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040060

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 125
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0143

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RenderOverlay;

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 127
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->initIndicators()V

    .line 128
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0091

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/CountDownView;

    check-cast v1, Lcom/android/camera/ui/CountDownView;

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    .line 129
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    check-cast v1, Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/CountDownView;->setCountDownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;)V

    .line 131
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0141

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 134
    .local v0, "faceViewStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 136
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0142

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 140
    .end local v0    # "faceViewStub":Landroid/view/ViewStub;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PhotoUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/PhotoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/camera/PhotoUI;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/PhotoUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/camera/PhotoUI;->mPreviewWidth:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/PhotoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/camera/PhotoUI;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/PhotoUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/camera/PhotoUI;->mPreviewHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/PhotoUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->openMenu()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/ZoomRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/PhotoUI;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/PieRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    return-object v0
.end method

.method private dismissPopup(Z)V
    .locals 2
    .param p1, "fullScreen"    # Z

    .prologue
    .line 416
    if-eqz p1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 418
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlocker:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 420
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoUI;->setShowMenu(Z)V

    .line 421
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->removeTouchReceiver(Landroid/view/View;)V

    .line 423
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->popupDismissed()V

    .line 427
    return-void
.end method

.method private getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    goto :goto_0
.end method

.method private initIndicators()V
    .locals 4

    .prologue
    .line 147
    new-instance v0, Lcom/android/camera/OnScreenIndicators;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a0129

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/OnScreenIndicators;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    .line 149
    return-void
.end method

.method private openMenu()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->getCameraState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->cancelAutoFocus()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showInCenter()V

    .line 202
    :cond_1
    return-void
.end method

.method private setShowMenu(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 436
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz v0, :cond_0

    .line 437
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 437
    goto :goto_0

    :cond_3
    move v1, v2

    .line 440
    goto :goto_1
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 570
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 633
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 638
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    .line 639
    :cond_0
    return-void
.end method

.method public collapseCameraControls()Z
    .locals 2

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->dismissPopup()V

    .line 449
    const/4 v0, 0x1

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->onShowSwitcherPopup()V

    .line 452
    return v0
.end method

.method public dismissPopup()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoUI;->dismissPopup(Z)V

    .line 413
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->dispatchTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 330
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableGestures(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 293
    :cond_0
    return-void
.end method

.method public enablePreviewThumb(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 380
    if-eqz p1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPreviewThumb:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 382
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewThumb:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPreviewThumb:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->removeTouchReceiver(Landroid/view/View;)V

    .line 385
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewThumb:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableShutter(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 603
    :cond_0
    return-void
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getSurfaceTexture()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceTexture:Ljava/lang/Object;

    return-object v0
.end method

.method public hasFaces()Z
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method protected hidePostCaptureAlert()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 465
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v0, v1}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 468
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 470
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->resumeFaceDetection()V

    .line 471
    return-void
.end method

.method public initializeControlByIntent()V
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a007f

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mBlocker:Landroid/view/View;

    .line 206
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a0083

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mPreviewThumb:Landroid/view/View;

    .line 207
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPreviewThumb:Landroid/view/View;

    new-instance v2, Lcom/android/camera/PhotoUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$2;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a0080

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    .line 214
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/PhotoUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$3;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v1}, Lcom/android/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 222
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a007e

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 223
    .local v0, "cameraControls":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04006f

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 225
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a0168

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    .line 226
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a016a

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewCancelButton:Landroid/view/View;

    .line 227
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a0169

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    .line 228
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewCancelButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/PhotoUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$4;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewCancelButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/PhotoUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$5;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/PhotoUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$6;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    .end local v0    # "cameraControls":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public initializeFirstTime()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 256
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 257
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 258
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 260
    return-void
.end method

.method public initializeSecondTime(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 265
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hidePostCaptureAlert()V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->reloadPreferences()V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 272
    return-void
.end method

.method public initializeZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 275
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoUI;->mZoomMax:I

    .line 278
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRatios:Ljava/util/List;

    .line 281
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/camera/PhotoUI;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 283
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 284
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRatios:Ljava/util/List;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 285
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    new-instance v1, Lcom/android/camera/PhotoUI$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/PhotoUI$ZoomChangeListener;-><init>(Lcom/android/camera/PhotoUI;Lcom/android/camera/PhotoUI$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    return v0
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 334
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 351
    :cond_0
    :goto_0
    return v0

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v1}, Lcom/android/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->removeTopLevelPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v1}, Lcom/android/camera/PhotoController;->onCaptureCancelled()V

    goto :goto_0

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v1}, Lcom/android/camera/PhotoController;->isCameraIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->removeTopLevelPopup()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraOpened(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 6
    .param p1, "prefGroup"    # Lcom/android/camera/PreferenceGroup;
    .param p2, "prefs"    # Lcom/android/camera/ComboPreferences;
    .param p3, "params"    # Landroid/hardware/Camera$Parameters;
    .param p4, "listener"    # Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/android/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/PieRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 155
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PieRenderer;->setPieListener(Lcom/android/camera/ui/PieRenderer$PieListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Lcom/android/camera/PhotoMenu;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/camera/PhotoMenu;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoUI;Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    .line 160
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p4}, Lcom/android/camera/PhotoMenu;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoMenu;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 164
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_2

    .line 165
    new-instance v0, Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    .line 166
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_3

    .line 170
    new-instance v0, Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    move-object v2, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/PreviewGestures;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PreviewGestures$SingleTapListener;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/PreviewGestures$SwipeListener;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0}, Lcom/android/camera/PreviewGestures;->reset()V

    .line 174
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 175
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mBlocker:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addUnclickableArea(Landroid/view/View;)V

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoUI;->enablePreviewThumb(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewCancelButton:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewCancelButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 184
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 187
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderOverlay;->requestLayout()V

    .line 189
    invoke-virtual {p0, p3}, Lcom/android/camera/PhotoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 190
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/camera/PhotoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;)V

    .line 191
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setFaces([Landroid/hardware/Camera$Face;)V

    .line 682
    return-void
.end method

.method public onFocusFailed(Z)V
    .locals 1
    .param p1, "timeout"    # Z

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/ui/FocusIndicator;->showFail(Z)V

    .line 659
    return-void
.end method

.method public onFocusStarted()V
    .locals 1

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    .line 649
    return-void
.end method

.method public onFocusSucceeded(Z)V
    .locals 1
    .param p1, "timeout"    # Z

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(Z)V

    .line 654
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 5
    .param p1, "full"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 356
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 357
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-nez p1, :cond_7

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 360
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoUI;->dismissPopup(Z)V

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_3

    .line 367
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz p1, :cond_8

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Lcom/android/camera/ui/RenderOverlay;->setVisibility(I)V

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_4

    .line 370
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez p1, :cond_9

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 372
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoUI;->setShowMenu(Z)V

    .line 373
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlocker:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 374
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlocker:Landroid/view/View;

    if-eqz p1, :cond_a

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 376
    :cond_5
    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 377
    :cond_6
    return-void

    :cond_7
    move v0, v2

    .line 357
    goto :goto_0

    :cond_8
    move v0, v3

    .line 367
    goto :goto_1

    :cond_9
    move v1, v2

    .line 370
    goto :goto_2

    :cond_a
    move v2, v3

    .line 374
    goto :goto_3
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 585
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceTexture:Ljava/lang/Object;

    .line 590
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    .line 591
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 595
    iput v2, p0, Lcom/android/camera/PhotoUI;->mPreviewWidth:I

    .line 596
    iput v2, p0, Lcom/android/camera/PhotoUI;->mPreviewHeight:I

    .line 597
    return-void
.end method

.method public onPieClosed()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 525
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 528
    :cond_0
    return-void
.end method

.method public onPieOpened(II)V
    .locals 2
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->dismissPopup()V

    .line 515
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->cancelActivityTouchHandling()V

    .line 516
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 517
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 520
    :cond_0
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 433
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/PhotoController;->onSingleTapUp(Landroid/view/View;II)V

    .line 618
    return-void
.end method

.method public onStartFaceDetection(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 673
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 675
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 676
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 677
    return-void
.end method

.method public onSwipe(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 686
    if-nez p1, :cond_0

    .line 687
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->openMenu()V

    .line 689
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoMenu;->overrideSettings([Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 664
    :cond_0
    return-void
.end method

.method public pressShutterButton()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 611
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 612
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    goto :goto_0
.end method

.method public removeTopLevelPopup()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->dismissPopup()V

    .line 393
    const/4 v0, 0x1

    .line 395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resumeFaceDetection()V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 669
    :cond_0
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 477
    :cond_0
    return-void
.end method

.method public setFocusPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/PieRenderer;->setFocus(II)V

    .line 644
    return-void
.end method

.method public setSurfaceTexture(Ljava/lang/Object;)V
    .locals 0
    .param p1, "st"    # Ljava/lang/Object;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mSurfaceTexture:Ljava/lang/Object;

    .line 558
    return-void
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 0
    .param p1, "hasSignal"    # Z

    .prologue
    .line 296
    return-void
.end method

.method public showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V
    .locals 5
    .param p1, "popup"    # Lcom/android/camera/ui/AbstractSettingPopup;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 399
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 400
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mBlocker:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 401
    invoke-direct {p0, v4}, Lcom/android/camera/PhotoUI;->setShowMenu(Z)V

    .line 402
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 403
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 404
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 406
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 407
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v2}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 409
    return-void
.end method

.method protected showPostCaptureAlert()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 456
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v0, v1}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 459
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 461
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->pauseFaceDetection()V

    .line 462
    return-void
.end method

.method public startCountDown(IZ)V
    .locals 1
    .param p1, "sec"    # I
    .param p2, "playSound"    # Z

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->startCountDown(IZ)V

    .line 574
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 534
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 540
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 542
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0, p1}, Lcom/android/camera/PhotoController;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 543
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 547
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceDestroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 549
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->stopPreview()V

    .line 550
    return-void
.end method

.method public updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;)V
    .locals 5
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "group"    # Lcom/android/camera/PreferenceGroup;
    .param p3, "prefs"    # Lcom/android/camera/ComboPreferences;

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 321
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/OnScreenIndicators;->updateSceneOnScreenIndicator(Ljava/lang/String;)V

    .line 309
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-static {p3}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/camera/OnScreenIndicators;->updateExposureOnScreenIndicator(Landroid/hardware/Camera$Parameters;I)V

    .line 311
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/OnScreenIndicators;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 312
    const/4 v2, 0x2

    .line 313
    .local v2, "wbIndex":I
    const-string v3, "pref_camera_whitebalance_key"

    invoke-virtual {p2, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 314
    .local v1, "pref":Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_1

    .line 315
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getCurrentIndex()I

    move-result v2

    .line 317
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v3, v2}, Lcom/android/camera/OnScreenIndicators;->updateWBIndicator(I)V

    .line 318
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 320
    .local v0, "location":Z
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v3, v0}, Lcom/android/camera/OnScreenIndicators;->updateLocationIndicator(Z)V

    goto :goto_0
.end method
