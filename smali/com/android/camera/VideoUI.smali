.class public Lcom/android/camera/VideoUI;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/camera/PreviewGestures$SingleTapListener;
.implements Lcom/android/camera/PreviewGestures$SwipeListener;
.implements Lcom/android/camera/ui/PieRenderer$PieListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoUI$ZoomChangeListener;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBlocker:Landroid/view/View;

.field private mController:Lcom/android/camera/VideoController;

.field private mGestures:Lcom/android/camera/PreviewGestures;

.field private mLabelsLinearLayout:Landroid/widget/LinearLayout;

.field private mMenu:Landroid/view/View;

.field private mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

.field private mPieRenderer:Lcom/android/camera/ui/PieRenderer;

.field private mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field private mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

.field private mPreviewThumb:Landroid/view/View;

.field private mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mReviewCancelButton:Landroid/view/View;

.field private mReviewDoneButton:Landroid/view/View;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewPlayButton:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSurfaceViewReady:Z

.field private mTimeLapseLabel:Landroid/view/View;

.field private mVideoMenu:Lcom/android/camera/VideoMenu;

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
.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoController;Landroid/view/View;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/VideoController;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 83
    iput-object p2, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    .line 84
    iput-object p3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04008b

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewSurfaceView;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    .line 88
    invoke-direct {p0}, Lcom/android/camera/VideoUI;->initializeMiscControls()V

    .line 89
    invoke-direct {p0}, Lcom/android/camera/VideoUI;->initializeControlByIntent()V

    .line 90
    invoke-direct {p0}, Lcom/android/camera/VideoUI;->initializeOverlay()V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/PieRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/VideoUI;)Lcom/android/camera/VideoController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/VideoUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/ZoomRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/VideoUI;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method private initializeControlByIntent()V
    .locals 5

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a007f

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoUI;->mBlocker:Landroid/view/View;

    .line 95
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a0080

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoUI;->mMenu:Landroid/view/View;

    .line 96
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mMenu:Landroid/view/View;

    new-instance v2, Lcom/android/camera/VideoUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoUI$1;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v1, Lcom/android/camera/OnScreenIndicators;

    iget-object v2, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0a0129

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/OnScreenIndicators;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    .line 106
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenIndicators;->resetToDefault()V

    .line 107
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v1}, Lcom/android/camera/VideoController;->isVideoCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 109
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a007e

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 110
    .local v0, "cameraControls":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04006f

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 114
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a0168

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoUI;->mReviewDoneButton:Landroid/view/View;

    .line 115
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a016a

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoUI;->mReviewCancelButton:Landroid/view/View;

    .line 116
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a019d

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoUI;->mReviewPlayButton:Landroid/view/View;

    .line 117
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mReviewCancelButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mReviewDoneButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/VideoUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoUI$2;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mReviewCancelButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/VideoUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoUI$3;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mReviewPlayButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/VideoUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoUI$4;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .end local v0    # "cameraControls":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 247
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewFrameLayout;->setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V

    .line 248
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0a019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    .line 249
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 250
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 251
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 252
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    .line 254
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->enableTouch(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0a019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    .line 256
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0a019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 257
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0a019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mTimeLapseLabel:Landroid/view/View;

    .line 260
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0a019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    .line 261
    return-void
.end method

.method private initializeOverlay()V
    .locals 6

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 203
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/android/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/PieRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 205
    new-instance v0, Lcom/android/camera/VideoMenu;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/camera/VideoMenu;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoUI;Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    .line 206
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PieRenderer;->setPieListener(Lcom/android/camera/ui/PieRenderer$PieListener;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 209
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 210
    new-instance v0, Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 213
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_2

    .line 214
    new-instance v0, Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v4, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    move-object v2, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/PreviewGestures;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PreviewGestures$SingleTapListener;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/PreviewGestures$SwipeListener;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 217
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0}, Lcom/android/camera/PreviewGestures;->reset()V

    .line 218
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mBlocker:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addUnclickableArea(Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 221
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewCancelButton:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mReviewCancelButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewDoneButton:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 227
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewPlayButton:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 228
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mReviewPlayButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 232
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewThumb:Landroid/view/View;

    .line 233
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewThumb:Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoUI$5;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoUI$5;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    return-void
.end method

.method private openMenu()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showInCenter()V

    .line 285
    :cond_0
    return-void
.end method

.method private setShowMenu(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 443
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz v0, :cond_0

    .line 444
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mMenu:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mMenu:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 449
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 444
    goto :goto_0

    :cond_3
    move v1, v2

    .line 447
    goto :goto_1
.end method


# virtual methods
.method public clickShutter()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->performClick()Z

    .line 487
    return-void
.end method

.method public collapseCameraControls()Z
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 142
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoUI;->dismissPopup(Z)V

    .line 143
    const/4 v0, 0x1

    .line 145
    :cond_0
    return v0
.end method

.method public dismissPopup(Z)V
    .locals 1
    .param p1, "topLevelOnly"    # Z

    .prologue
    .line 301
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/VideoUI;->dismissPopup(ZZ)V

    .line 302
    return-void
.end method

.method public dismissPopup(ZZ)V
    .locals 2
    .param p1, "topLevelPopupOnly"    # Z
    .param p2, "fullScreen"    # Z

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->isInReviewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 308
    :cond_0
    if-eqz p2, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 310
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mBlocker:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/VideoUI;->setShowMenu(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->removeTouchReceiver(Landroid/view/View;)V

    .line 315
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoMenu;->popupDismissed(Z)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->dispatchTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 497
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableCameraControls(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->setZoomOnly(Z)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 163
    :cond_1
    return-void

    .line 158
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enablePreviewThumb(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 537
    if-eqz p1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPreviewThumb:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 539
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewThumb:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 544
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPreviewThumb:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->removeTouchReceiver(Landroid/view/View;)V

    .line 542
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewThumb:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableShutter(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 343
    :cond_0
    return-void
.end method

.method public getPreview()Landroid/view/View;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public hidePieRenderer()Z
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 328
    const/4 v0, 0x1

    .line 330
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideSurfaceView()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 195
    return-void
.end method

.method public initializePopup(Lcom/android/camera/PreferenceGroup;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoMenu;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 471
    return-void
.end method

.method public initializeZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 474
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoUI;->mZoomMax:I

    .line 476
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRatios:Ljava/util/List;

    .line 479
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/camera/VideoUI;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 480
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 481
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRatios:Ljava/util/List;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 482
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    new-instance v1, Lcom/android/camera/VideoUI$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoUI$ZoomChangeListener;-><init>(Lcom/android/camera/VideoUI;Lcom/android/camera/VideoUI$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method public isSurfaceViewReady()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mSurfaceViewReady:Z

    return v0
.end method

.method public onFullScreenChanged(Z)V
    .locals 4
    .param p1, "full"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 452
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/VideoUI;->dismissPopup(ZZ)V

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_2

    .line 460
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/RenderOverlay;->setVisibility(I)V

    .line 462
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/VideoUI;->setShowMenu(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mBlocker:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 465
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mBlocker:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 467
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 460
    goto :goto_0

    :cond_5
    move v1, v2

    .line 465
    goto :goto_1
.end method

.method public onPieClosed()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 356
    return-void
.end method

.method public onPieOpened(II)V
    .locals 2
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .prologue
    const/4 v1, 0x0

    .line 348
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/VideoUI;->dismissPopup(ZZ)V

    .line 349
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->cancelActivityTouchHandling()V

    .line 350
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 351
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 0

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->hidePieRenderer()Z

    .line 323
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/VideoController;->onSingleTapUp(Landroid/view/View;II)V

    .line 367
    return-void
.end method

.method public onSwipe(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 528
    if-nez p1, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/android/camera/VideoUI;->openMenu()V

    .line 531
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoMenu;->overrideSettings([Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public pressShutter(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 491
    return-void
.end method

.method public removeTopLevelPopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 149
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoUI;->dismissPopup(Z)V

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAspectRatio(D)V
    .locals 1
    .param p1, "ratio"    # D

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 273
    return-void
.end method

.method public setOrientationIndicator(IZ)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setOrientation(I)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 180
    div-int/lit8 v0, p1, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 186
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 187
    return-void

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method public setPrefChangedListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoMenu;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 243
    return-void
.end method

.method public setRecordingTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    return-void
.end method

.method public setRecordingTimeTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 506
    return-void
.end method

.method public setShutterPressed(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V
    .locals 5
    .param p1, "popup"    # Lcom/android/camera/ui/AbstractSettingPopup;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 288
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 289
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mBlocker:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 290
    invoke-direct {p0, v4}, Lcom/android/camera/VideoUI;->setShowMenu(Z)V

    .line 291
    iput-object p1, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 292
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 293
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 295
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 296
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v2, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v2}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 298
    return-void
.end method

.method public showPreviewBorder(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewFrameLayout;->showBorder(Z)V

    .line 360
    return-void
.end method

.method public showRecordingUI(ZZ)V
    .locals 4
    .param p1, "recording"    # Z
    .param p2, "zoomSupported"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 393
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mMenu:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 395
    if-eqz p1, :cond_3

    .line 396
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 397
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 398
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 416
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 393
    goto :goto_0

    :cond_2
    move v0, v2

    .line 394
    goto :goto_1

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v2, 0x7f020016

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 410
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 411
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    goto :goto_2
.end method

.method public showReviewControls()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 424
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 425
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 426
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewPlayButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 427
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v0, v2}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 430
    return-void
.end method

.method public showReviewImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 420
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    return-void
.end method

.method public showSurfaceView()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 199
    return-void
.end method

.method public showTimeLapseUI(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mTimeLapseLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mTimeLapseLabel:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :cond_0
    return-void

    .line 277
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 372
    const-string v0, "CAM_VideoUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface changed. width="

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

    .line 373
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 377
    const-string v0, "CAM_VideoUI"

    const-string v1, "Surface created"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoUI;->mSurfaceViewReady:Z

    .line 379
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 383
    const-string v0, "CAM_VideoUI"

    const-string v1, "Surface destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoUI;->mSurfaceViewReady:Z

    .line 385
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->stopPreview()V

    .line 386
    return-void
.end method

.method public updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "prefs"    # Lcom/android/camera/ComboPreferences;

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/OnScreenIndicators;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 267
    .local v0, "location":Z
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenIndicators;->updateLocationIndicator(Z)V

    .line 269
    return-void
.end method
