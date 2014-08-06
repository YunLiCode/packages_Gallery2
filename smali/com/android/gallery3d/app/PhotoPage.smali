.class public abstract Lcom/android/gallery3d/app/PhotoPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "PhotoPage.java"

# interfaces
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
.implements Lcom/android/gallery3d/app/AppBridge$Server;
.implements Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;
.implements Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;
.implements Lcom/android/gallery3d/ui/PhotoView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;,
        Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;,
        Lcom/android/gallery3d/app/PhotoPage$Model;
    }
.end annotation


# instance fields
.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private volatile mActionBarAllowed:Z

.field private mAppBridge:Lcom/android/gallery3d/app/AppBridge;

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

.field private mCameraSwitchCutoff:J

.field private mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

.field private mCurrentIndex:I

.field private mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

.field private mDeferUpdateUntil:J

.field private mDeferredUpdateWaiting:Z

.field private mDeleteIsFocus:Z

.field private mDeletePath:Lcom/android/gallery3d/data/Path;

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mHandler:Landroid/os/Handler;

.field private mHasCameraScreennailOrPlaceholder:Z

.field private mHaveImageEditor:Z

.field private mIsActive:Z

.field private mIsMenuVisible:Z

.field private mIsPanorama:Z

.field private mIsPanorama360:Z

.field private mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

.field private mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field private final mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

.field private mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

.field private mNfcPushUris:[Landroid/net/Uri;

.field private mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

.field private mOriginalSetPathString:Ljava/lang/String;

.field private mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

.field private mProgressListener:Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

.field private mRecenterCameraOnResume:Z

.field private final mRefreshBottomControlsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

.field private mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

.field private mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

.field private mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSetPathString:Ljava/lang/String;

.field private mShowBars:Z

.field private mShowDetails:Z

.field private mShowSpinner:Z

.field private mSkipUpdateCurrentPhoto:Z

.field private mStartInFilmstrip:Z

.field private mTreatBackAsUp:Z

.field private final mUpdatePanoramaMenuItemsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

.field private final mUpdateShareURICallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 141
    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 143
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 144
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 150
    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 163
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    .line 164
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 170
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    .line 171
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    .line 175
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    .line 176
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    .line 182
    new-array v0, v3, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    .line 184
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-direct {v0, p0, v4}, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    .line 188
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$1;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdatePanoramaMenuItemsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 199
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$2;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRefreshBottomControlsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 210
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$3;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdateShareURICallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 268
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$4;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 992
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$8;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$8;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 1480
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPageBottomControls;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/data/MediaItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Lcom/android/gallery3d/data/MediaItem;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama360:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateBars()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->wantBars()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/PhotoPage;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/PhotoPage;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/android/gallery3d/app/PhotoPage;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;
    .param p1, "x1"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterDeleteSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchCamera()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Lcom/android/gallery3d/data/MediaItem;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateProgressBar()V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/android/gallery3d/app/PhotoPage;->createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/data/MediaObject;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/android/gallery3d/app/PhotoPage;->createShareIntent(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/PhotoPage;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->setNfcBeamPushUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/PhotoPage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->updatePanoramaUI(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/PhotoPage;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/gallery3d/app/PhotoPage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMenuVisible:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/PhotoPage;)[Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/PhotoPage;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    return-void
.end method

.method private canDoSlideShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 828
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    .line 834
    :cond_0
    :goto_0
    return v0

    .line 831
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 834
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canShowBars()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 869
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 880
    :cond_0
    :goto_0
    return v1

    .line 873
    :cond_1
    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    if-eqz v3, :cond_0

    .line 875
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 876
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v3, v2, :cond_0

    move v1, v2

    .line 880
    goto :goto_0
.end method

.method private static createShareIntent(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;
    .locals 4
    .param p0, "mediaObject"    # Lcom/android/gallery3d/data/MediaObject;

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    .line 667
    .local v0, "type":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p0, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 674
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getMediaTypeString(Lcom/android/gallery3d/data/MediaItem;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1562
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1563
    const-string v0, "Video"

    .line 1567
    :goto_0
    return-object v0

    .line 1564
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1565
    const-string v0, "Photo"

    goto :goto_0

    .line 1567
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hideBars()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 852
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_0

    .line 858
    :goto_0
    return-void

    .line 853
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 854
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 855
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 856
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 857
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 1

    .prologue
    .line 1144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 1145
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 1146
    return-void
.end method

.method private launchCamera()V
    .locals 3

    .prologue
    .line 699
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v2, Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 701
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 702
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 703
    return-void
.end method

.method private launchPhotoEditor()V
    .locals 5

    .prologue
    .line 706
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 707
    .local v0, "current":Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_nextgen_edit"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 714
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 716
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 718
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    :cond_2
    const-string v2, "launch-fullscreen"

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isFullscreen()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 722
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 724
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->overrideTransitionToEditor()V

    goto :goto_0
.end method

.method private launchSimpleEditor()V
    .locals 5

    .prologue
    .line 728
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 729
    .local v0, "current":Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_simple_edit"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 738
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 740
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    :cond_2
    const-string v2, "launch-fullscreen"

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isFullscreen()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 744
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 746
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->overrideTransitionToEditor()V

    goto :goto_0
.end method

.method private launchTinyPlanet()V
    .locals 4

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 688
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.TINY_PLANET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v3, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 690
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 692
    const-string v0, "launch-fullscreen"

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isFullscreen()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 694
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 695
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->overrideTransitionToEditor()V

    .line 696
    return-void
.end method

.method private onUpPressed()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 919
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 921
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 944
    :cond_1
    :goto_0
    return-void

    .line 925
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 926
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->setResult()V

    .line 927
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 931
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v0, :cond_4

    .line 935
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 936
    const-string v1, "media-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v1, "parent-media-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 942
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->startGalleryActivity(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private overrideTransitionToEditor()V
    .locals 3

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 683
    return-void
.end method

.method private refreshHidingMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 861
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 862
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMenuVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 865
    :cond_0
    return-void
.end method

.method private requestDeferredUpdate()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 750
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    .line 751
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    if-nez v0, :cond_0

    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    .line 753
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 755
    :cond_0
    return-void
.end method

.method private setCurrentPhotoByIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1274
    if-nez p1, :cond_1

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1275
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 1277
    if-eqz v0, :cond_0

    .line 1278
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DataManager;->getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 1279
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/Path;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1282
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1283
    const-string v3, "media-set-path"

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    const-string v1, "media-item-path"

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/SinglePhotoPage;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1288
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v1, v0, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0
.end method

.method private setNfcBeamPushUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 663
    return-void
.end method

.method private setResult()V
    .locals 3

    .prologue
    .line 947
    .line 948
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 949
    const-string v1, "return-index-hint"

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 950
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/PhotoPage;->setStateResult(ILandroid/content/Intent;)V

    .line 951
    return-void
.end method

.method private setupNfcBeamPush()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 647
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    if-nez v1, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 650
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 651
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 652
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$7;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$7;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private showBars()V
    .locals 2

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_0

    .line 849
    :goto_0
    return-void

    .line 843
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 844
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 845
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->show()V

    .line 846
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 847
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 848
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    goto :goto_0
.end method

.method private showDetails()V
    .locals 5

    .prologue
    .line 1149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 1150
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 1151
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 1152
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$9;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$9;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 1160
    return-void
.end method

.method private switchToGrid()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1015
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v3, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1016
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    if-eqz v0, :cond_2

    .line 1020
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    .line 1021
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoPageProgressBar;->hideProgress()V

    .line 1023
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1024
    const-string v0, "media-path"

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const-string v0, "parent-media-path"

    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v4, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v0

    .line 1032
    const-string v4, "cluster-menu"

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1035
    const-string v0, "app-bridge"

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v4, :cond_4

    :goto_2
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1038
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v1

    const-string v2, "return-index-hint"

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1041
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_6

    .line 1042
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1032
    goto :goto_1

    :cond_4
    move v1, v2

    .line 1035
    goto :goto_2

    .line 1038
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    goto :goto_3

    .line 1044
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private toggleBars()V
    .locals 1

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_1

    .line 889
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    goto :goto_0
.end method

.method private transitionFromAlbumPageIfNeeded()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1392
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v2

    .line 1394
    const-string v0, "albumpage-transition"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1397
    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    if-eqz v0, :cond_3

    .line 1401
    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 1402
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->resetToFirstPicture()V

    .line 1417
    :cond_0
    :goto_0
    const/4 v0, 0x2

    if-ne v3, v0, :cond_6

    .line 1418
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1422
    :cond_2
    :goto_2
    return-void

    .line 1404
    :cond_3
    const-string v0, "index-hint"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1405
    if-ltz v0, :cond_0

    .line 1406
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v2, :cond_4

    .line 1408
    add-int/lit8 v0, v0, 0x1

    .line 1410
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1411
    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 1412
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->moveTo(I)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1418
    goto :goto_1

    .line 1419
    :cond_6
    const/4 v0, 0x4

    if-ne v3, v0, :cond_2

    .line 1420
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    goto :goto_2
.end method

.method private updateBars()V
    .locals 1

    .prologue
    .line 896
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 899
    :cond_0
    return-void
.end method

.method private updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 1
    .param p1, "photo"    # Lcom/android/gallery3d/data/MediaItem;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-ne v0, p1, :cond_0

    .line 788
    :goto_0
    return-void

    .line 782
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 783
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->requestDeferredUpdate()V

    goto :goto_0

    .line 786
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V

    goto :goto_0
.end method

.method private updateMenuOperations()V
    .locals 5

    .prologue
    .line 804
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 807
    .local v1, "menu":Landroid/view/Menu;
    if-nez v1, :cond_1

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    const v3, 0x7f0a01a5

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 810
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 811
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canDoSlideShow()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 813
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_0

    .line 815
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    .line 816
    .local v2, "supportedOperations":I
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-eqz v3, :cond_5

    .line 817
    and-int/lit8 v2, v2, 0x1

    .line 824
    :cond_3
    :goto_2
    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuOperation(Landroid/view/Menu;I)V

    goto :goto_0

    .line 811
    .end local v2    # "supportedOperations":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 819
    .restart local v2    # "supportedOperations":I
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdatePanoramaMenuItemsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/MediaItem;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 820
    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-nez v3, :cond_3

    .line 821
    and-int/lit16 v2, v2, -0x201

    goto :goto_2
.end method

.method private updatePanoramaUI(Z)V
    .locals 3

    .prologue
    const v2, 0x7f0a0247

    .line 1519
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1522
    if-nez v0, :cond_1

    .line 1541
    :cond_0
    :goto_0
    return-void

    .line 1526
    :cond_1
    invoke-static {v0, p1, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuForPanorama(Landroid/view/Menu;ZZ)V

    .line 1528
    if-eqz p1, :cond_2

    .line 1529
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1530
    if-eqz v0, :cond_0

    .line 1531
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1532
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1534
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 1535
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1536
    if-eqz v0, :cond_0

    .line 1537
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1538
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateProgressBar()V
    .locals 4

    .prologue
    .line 791
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    if-eqz v2, :cond_0

    .line 792
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/PhotoPageProgressBar;->hideProgress()V

    .line 793
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getStitchingProgressManager()Lcom/android/gallery3d/app/StitchingProgressManager;

    move-result-object v1

    .line 794
    .local v1, "progressManager":Lcom/android/gallery3d/app/StitchingProgressManager;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_0

    .line 795
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/StitchingProgressManager;->getProgress(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 796
    .local v0, "progress":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 797
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/PhotoPageProgressBar;->setProgress(I)V

    .line 801
    .end local v0    # "progress":Ljava/lang/Integer;
    .end local v1    # "progressManager":Lcom/android/gallery3d/app/StitchingProgressManager;
    :cond_0
    return-void
.end method

.method private updateUIForCurrentPhoto()V
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 768
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 769
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 770
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_2

    .line 771
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->reloadDetails()V

    .line 773
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 775
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdateShareURICallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaItem;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 777
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateProgressBar()V

    goto :goto_0
.end method

.method private wantBars()V
    .locals 1

    .prologue
    .line 884
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    .line 885
    :cond_0
    return-void
.end method


# virtual methods
.method public addSecureAlbumItem(ZI)V
    .locals 1
    .param p1, "isVideo"    # Z
    .param p2, "id"    # I

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/data/SecureAlbum;->addMediaItem(ZI)V

    .line 981
    return-void
.end method

.method public canDisplayBottomControl(I)Z
    .locals 4
    .param p1, "control"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 608
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v2, :cond_0

    .line 623
    :goto_0
    return v1

    .line 611
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 613
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 618
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama:Z

    goto :goto_0

    .line 620
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama360:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0149
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public canDisplayBottomControls()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->canUndo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 265
    const v0, 0x7f090037

    return v0
.end method

.method public notifyScreenNailChanged()V
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 975
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/SnailAlbum;->notifyChange()V

    .line 976
    return-void
.end method

.method public onActionBarAllowed(Z)V
    .locals 2
    .param p1, "allowed"    # Z

    .prologue
    .line 1213
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 1214
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1215
    return-void
.end method

.method public onActionBarWanted()V
    .locals 2

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1220
    return-void
.end method

.method public onAlbumModeSelected(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1500
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1501
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->switchToGrid()V

    .line 1503
    :cond_0
    return-void
.end method

.method protected onBackPressed()V
    .locals 2

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_1

    .line 904
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->switchWithCaptureAnimation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->setResult()V

    .line 908
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 909
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    goto :goto_0

    .line 910
    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    if-eqz v0, :cond_4

    .line 911
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    goto :goto_0

    .line 913
    :cond_4
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onBottomControlClicked(I)V
    .locals 2
    .param p1, "control"    # I

    .prologue
    .line 629
    packed-switch p1, :pswitch_data_0

    .line 641
    :goto_0
    return-void

    .line 631
    :pswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchPhotoEditor()V

    goto :goto_0

    .line 634
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getPanoramaViewHelper()Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->showPanorama(Landroid/net/Uri;)V

    goto :goto_0

    .line 638
    :pswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchTinyPlanet()V

    goto :goto_0

    .line 629
    :pswitch_data_0
    .packed-switch 0x7f0a0149
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCommitDeleteImage()V
    .locals 3

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    if-nez v0, :cond_0

    .line 1258
    :goto_0
    return-void

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    const v1, 0x7f0a024a

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->startSingleItemAction(ILcom/android/gallery3d/data/Path;)V

    .line 1257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 20
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "restoreState"    # Landroid/os/Bundle;

    .prologue
    .line 281
    invoke-super/range {p0 .. p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 283
    new-instance v2, Lcom/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 284
    new-instance v2, Lcom/android/gallery3d/ui/MenuExecutor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 286
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/PhotoView;->setListener(Lcom/android/gallery3d/ui/PhotoView$Listener;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V

    .line 293
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$5;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/app/PhotoPage$5;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/ui/GLRoot;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    .line 413
    const-string v2, "media-set-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    .line 415
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->setupNfcBeamPush()V

    .line 416
    const-string v2, "media-item-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 417
    .local v13, "itemPathString":Ljava/lang/String;
    if-eqz v13, :cond_a

    const-string v2, "media-item-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 420
    .local v5, "itemPath":Lcom/android/gallery3d/data/Path;
    :goto_0
    const-string v2, "treat-back-as-up"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    .line 421
    const-string v2, "start-in-filmstrip"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    .line 422
    const-string v2, "in_camera_roll"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 423
    .local v12, "inCameraRoll":Z
    const-string v2, "index-hint"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 425
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    .line 426
    const-string v2, "app-bridge"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/AppBridge;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_b

    .line 428
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 429
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/AppBridge;->setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V

    .line 433
    invoke-static {}, Lcom/android/gallery3d/data/SnailSource;->newId()I

    move-result v11

    .line 434
    .local v11, "id":I
    invoke-static {v11}, Lcom/android/gallery3d/data/SnailSource;->getSetPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v19

    .line 435
    .local v19, "screenNailSetPath":Lcom/android/gallery3d/data/Path;
    invoke-static {v11}, Lcom/android/gallery3d/data/SnailSource;->getItemPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v18

    .line 436
    .local v18, "screenNailItemPath":Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/SnailAlbum;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/SnailItem;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 442
    const-string v2, "show_when_locked"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    .line 448
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    const-string v3, "/local/all/0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/gallery3d/data/SecureSource;->isSecurePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/SecureAlbum;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    .line 453
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    .line 455
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/filter/empty/{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 460
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/combo/item/{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 464
    move-object/from16 v5, v18

    .line 472
    .end local v11    # "id":I
    .end local v18    # "screenNailItemPath":Lcom/android/gallery3d/data/Path;
    .end local v19    # "screenNailSetPath":Lcom/android/gallery3d/data/Path;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v16

    .line 474
    .local v16, "originalSet":Lcom/android/gallery3d/data/MediaSet;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/gallery3d/data/ComboAlbum;

    if-eqz v2, :cond_4

    move-object/from16 v2, v16

    .line 477
    check-cast v2, Lcom/android/gallery3d/data/ComboAlbum;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/ComboAlbum;->useNameOfChild(I)V

    .line 479
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/filter/delete/{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-nez v2, :cond_5

    .line 484
    const-string v2, "PhotoPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to restore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_5
    if-nez v5, :cond_7

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v15

    .line 488
    .local v15, "mediaItemCount":I
    if-lez v15, :cond_9

    .line 489
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-lt v2, v15, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 490
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 497
    .end local v15    # "mediaItemCount":I
    :cond_7
    new-instance v1, Lcom/android/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v7, :cond_c

    const/4 v7, -0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v8, :cond_d

    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v9, :cond_e

    const/4 v9, 0x0

    :goto_4
    invoke-direct/range {v1 .. v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;IIZZ)V

    .line 502
    .local v1, "pda":Lcom/android/gallery3d/app/PhotoDataAdapter;
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 505
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/gallery3d/app/PhotoPage$6;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->setDataListener(Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;)V

    .line 573
    .end local v1    # "pda":Lcom/android/gallery3d/app/PhotoDataAdapter;
    .end local v16    # "originalSet":Lcom/android/gallery3d/data/MediaSet;
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_10

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v3, v2}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_11

    const v2, 0x7f0a006d

    :goto_7
    invoke-virtual {v3, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 576
    .local v10, "galleryRoot":Landroid/widget/RelativeLayout;
    if-eqz v10, :cond_9

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v2, :cond_8

    .line 578
    new-instance v2, Lcom/android/gallery3d/app/PhotoPageBottomControls;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v10}, Lcom/android/gallery3d/app/PhotoPageBottomControls;-><init>(Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    .line 580
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getStitchingProgressManager()Lcom/android/gallery3d/app/StitchingProgressManager;

    move-result-object v17

    .line 581
    .local v17, "progressManager":Lcom/android/gallery3d/app/StitchingProgressManager;
    if-eqz v17, :cond_9

    .line 582
    new-instance v2, Lcom/android/gallery3d/app/PhotoPageProgressBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3, v10}, Lcom/android/gallery3d/app/PhotoPageProgressBar;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    .line 583
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mProgressListener:Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mProgressListener:Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/StitchingProgressManager;->addChangeListener(Lcom/android/gallery3d/app/StitchingChangeListener;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-eqz v2, :cond_9

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/StitchingProgressManager;->addChangeListener(Lcom/android/gallery3d/app/StitchingChangeListener;)V

    .line 590
    .end local v10    # "galleryRoot":Landroid/widget/RelativeLayout;
    .end local v17    # "progressManager":Lcom/android/gallery3d/app/StitchingProgressManager;
    :cond_9
    return-void

    .line 417
    .end local v5    # "itemPath":Lcom/android/gallery3d/data/Path;
    .end local v12    # "inCameraRoll":Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 465
    .restart local v5    # "itemPath":Lcom/android/gallery3d/data/Path;
    .restart local v12    # "inCameraRoll":Z
    :cond_b
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/combo/item/{/filter/camera_shortcut,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 468
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 469
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    goto/16 :goto_1

    .line 497
    .restart local v16    # "originalSet":Lcom/android/gallery3d/data/MediaSet;
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AppBridge;->isPanorama()Z

    move-result v8

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AppBridge;->isStaticCamera()Z

    move-result v9

    goto/16 :goto_4

    .line 565
    .end local v16    # "originalSet":Lcom/android/gallery3d/data/MediaSet;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v14

    check-cast v14, Lcom/android/gallery3d/data/MediaItem;

    .line 567
    .local v14, "mediaItem":Lcom/android/gallery3d/data/MediaItem;
    new-instance v2, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {v2, v3, v4, v14}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 569
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    .line 570
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    goto/16 :goto_5

    .line 573
    .end local v14    # "mediaItem":Lcom/android/gallery3d/data/MediaItem;
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 574
    :cond_11
    const v2, 0x7f0a0124

    goto/16 :goto_7
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const v1, 0x7f12001d

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/app/GalleryActionBar;->createActionBarMenu(ILandroid/view/Menu;)V

    .line 986
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v1, "image/*"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    .line 987
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 988
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/FilterDeleteSet;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    .line 989
    const/4 v0, 0x1

    return v0

    .line 988
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public onCurrentImageUpdated()V
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    .line 1362
    return-void
.end method

.method public onDeleteImage(Lcom/android/gallery3d/data/Path;I)V
    .locals 2
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;
    .param p2, "offset"    # I

    .prologue
    .line 1237
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 1238
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    .line 1239
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    .line 1240
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->addDeletion(Lcom/android/gallery3d/data/Path;I)V

    .line 1241
    return-void

    .line 1239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1464
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AppBridge;->setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V

    .line 1466
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1467
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AppBridge;->detachScreenNail()V

    .line 1468
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    .line 1469
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    .line 1470
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    .line 1472
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V

    .line 1473
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoPageBottomControls;->cleanup()V

    .line 1476
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1477
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 1478
    return-void
.end method

.method public onFilmModeChanged(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1366
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1367
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    if-eqz v0, :cond_0

    .line 1368
    if-eqz p1, :cond_1

    .line 1369
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 1375
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 1376
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1377
    const-string v0, "Gallery"

    const-string v1, "FilmstripPage"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    :goto_1
    return-void

    .line 1372
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->disableAlbumModeMenu(Z)V

    goto :goto_0

    .line 1380
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 1381
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-lez v0, :cond_4

    .line 1382
    :cond_3
    const-string v0, "Gallery"

    const-string v1, "SinglePhotoPage"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1385
    :cond_4
    const-string v0, "Camera"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onFullScreenChanged(Z)V
    .locals 5
    .param p1, "full"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1224
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1226
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1227
    return-void

    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 1224
    goto :goto_0
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1051
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-nez v0, :cond_0

    move v0, v1

    .line 1139
    :goto_0
    return v0

    .line 1052
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 1053
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v3

    .line 1057
    instance-of v0, v3, Lcom/android/gallery3d/data/SnailItem;

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 1061
    :cond_1
    if-nez v3, :cond_2

    move v0, v1

    .line 1063
    goto :goto_0

    .line 1065
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v4

    .line 1066
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 1068
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    .line 1069
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    .line 1070
    const/4 v0, 0x0

    .line 1071
    sparse-switch v7, :sswitch_data_0

    move v0, v2

    .line 1139
    goto :goto_0

    .line 1073
    :sswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    move v0, v1

    .line 1074
    goto :goto_0

    .line 1077
    :sswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1078
    const-string v2, "media-set-path"

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/FilterDeleteSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const-string v2, "media-item-path"

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    const-string v2, "photo-index"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1081
    const-string v2, "repeat"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1082
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/SlideshowPage;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    move v0, v1

    .line 1084
    goto :goto_0

    .line 1087
    :sswitch_2
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 1088
    new-instance v4, Landroid/content/Intent;

    const-string v0, "com.android.camera.action.CROP"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1089
    const-class v0, Lcom/android/gallery3d/filtershow/crop/CropActivity;

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1090
    invoke-virtual {v6, v5}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1092
    invoke-static {v3}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    :goto_1
    invoke-virtual {v2, v4, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 1095
    goto/16 :goto_0

    .line 1092
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    .line 1098
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v4, Lcom/android/gallery3d/app/TrimVideo;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1099
    invoke-virtual {v6, v5}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1101
    const-string v2, "media-item-path"

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1102
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x6

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 1103
    goto/16 :goto_0

    .line 1106
    :sswitch_4
    new-instance v0, Lcom/android/gallery3d/app/MuteVideo;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/gallery3d/app/MuteVideo;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V

    .line 1108
    invoke-virtual {v0}, Lcom/android/gallery3d/app/MuteVideo;->muteInBackground()V

    move v0, v1

    .line 1109
    goto/16 :goto_0

    .line 1112
    :sswitch_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchPhotoEditor()V

    move v0, v1

    .line 1113
    goto/16 :goto_0

    .line 1116
    :sswitch_6
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchSimpleEditor()V

    move v0, v1

    .line 1117
    goto/16 :goto_0

    .line 1120
    :sswitch_7
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_4

    .line 1121
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    :goto_2
    move v0, v1

    .line 1125
    goto/16 :goto_0

    .line 1123
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showDetails()V

    goto :goto_2

    .line 1128
    :sswitch_8
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f110001

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1134
    :sswitch_9
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1135
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1136
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-virtual {v2, p1, v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    move v0, v1

    .line 1137
    goto/16 :goto_0

    .line 1071
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0a01a5 -> :sswitch_1
        0x7f0a024a -> :sswitch_8
        0x7f0a024b -> :sswitch_5
        0x7f0a024c -> :sswitch_9
        0x7f0a024d -> :sswitch_9
        0x7f0a024e -> :sswitch_2
        0x7f0a024f -> :sswitch_9
        0x7f0a0250 -> :sswitch_7
        0x7f0a0251 -> :sswitch_9
        0x7f0a0254 -> :sswitch_6
        0x7f0a0255 -> :sswitch_3
        0x7f0a0256 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1334
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 1335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 1337
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    .line 1338
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1340
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 1342
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-eqz v0, :cond_1

    .line 1344
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->pause()V

    .line 1346
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->pause()V

    .line 1347
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1348
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1349
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1350
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 1351
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    if-eqz v0, :cond_2

    .line 1352
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->disableAlbumModeMenu(Z)V

    .line 1354
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 1355
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->pause()V

    .line 1356
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/FilterDeleteSet;->clearDeletion()V

    .line 1357
    :cond_3
    return-void
.end method

.method public onPictureCenter(Z)V
    .locals 4
    .param p1, "isCamera"    # Z

    .prologue
    const/16 v2, 0xa

    const/16 v1, 0x9

    const/4 v0, 0x0

    .line 594
    if-nez p1, :cond_0

    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v3, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 595
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 596
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 599
    return-void

    :cond_1
    move p1, v0

    .line 594
    goto :goto_0

    :cond_2
    move v0, v2

    .line 598
    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1426
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 1428
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-nez v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 1460
    :goto_0
    return-void

    .line 1432
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->transitionFromAlbumPageIfNeeded()V

    .line 1434
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->freeze()V

    .line 1435
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 1436
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 1438
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->resume()V

    .line 1439
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->resume()V

    .line 1440
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 1442
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 1443
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1444
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1445
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0, v2, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 1448
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_2

    .line 1449
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 1450
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 1452
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v2, "image/*"

    invoke-static {v0, v2}, Lcom/android/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1453
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-eq v0, v2, :cond_3

    .line 1454
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    .line 1455
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 1458
    :cond_3
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 1459
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1440
    goto :goto_1
.end method

.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 7

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v0

    .line 1551
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->getMediaTypeString(Lcom/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v2

    .line 1552
    const-string v3, "Gallery"

    const-string v4, "Share"

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    :goto_0
    invoke-static {v3, v4, v2, v0, v1}, Lcom/android/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1558
    const/4 v0, 0x0

    return v0

    .line 1552
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1167
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_1

    .line 1168
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AppBridge;->onSingleTapUp(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v2, v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v6

    .line 1172
    if-eqz v6, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    if-eq v6, v2, :cond_0

    .line 1177
    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v3

    .line 1178
    and-int/lit16 v2, v3, 0x80

    if-eqz v2, :cond_3

    move v2, v1

    .line 1179
    :goto_1
    and-int/lit16 v4, v3, 0x1000

    if-eqz v4, :cond_4

    move v5, v1

    .line 1180
    :goto_2
    and-int/lit16 v4, v3, 0x2000

    if-eqz v4, :cond_5

    move v4, v1

    .line 1181
    :goto_3
    const v7, 0x8000

    and-int/2addr v3, v7

    if-eqz v3, :cond_6

    move v3, v1

    .line 1183
    :goto_4
    if-eqz v2, :cond_c

    .line 1186
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v2

    .line 1187
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v7

    .line 1188
    div-int/lit8 v8, v2, 0x2

    sub-int v8, p1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0xc

    if-gt v8, v2, :cond_2

    div-int/lit8 v2, v7, 0x2

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    if-gt v2, v7, :cond_2

    move v0, v1

    .line 1192
    :cond_2
    :goto_5
    if-eqz v0, :cond_8

    .line 1193
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v0, :cond_7

    .line 1194
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/app/PhotoPage;->playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v2, v0

    .line 1178
    goto :goto_1

    :cond_4
    move v5, v0

    .line 1179
    goto :goto_2

    :cond_5
    move v4, v0

    .line 1180
    goto :goto_3

    :cond_6
    move v3, v0

    .line 1181
    goto :goto_4

    .line 1196
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_0

    .line 1198
    :cond_8
    if-eqz v4, :cond_9

    .line 1199
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onBackPressed()V

    goto :goto_0

    .line 1200
    :cond_9
    if-eqz v5, :cond_a

    .line 1201
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v3, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1202
    const-string v2, "dismiss-keyguard"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1203
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1204
    :cond_a
    if-eqz v3, :cond_b

    .line 1205
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchCamera()V

    goto/16 :goto_0

    .line 1207
    :cond_b
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->toggleBars()V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto :goto_5
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 1294
    if-nez p2, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1298
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_2

    move p2, v0

    .line 1302
    :cond_2
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 1303
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1322
    :pswitch_0
    if-eqz p3, :cond_0

    .line 1323
    const-string v1, "media-item-path"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1324
    const-string v2, "photo-index"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1325
    if-eqz v1, :cond_0

    .line 1326
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 1305
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1308
    :pswitch_2
    if-ne p2, v2, :cond_0

    .line 1309
    invoke-direct {p0, p3}, Lcom/android/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1313
    :pswitch_3
    if-ne p2, v2, :cond_0

    .line 1314
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 1315
    const v2, 0x7f0b01e8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0b022f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1317
    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onUndoBarVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1545
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1546
    return-void
.end method

.method public onUndoDeleteImage()V
    .locals 2

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    if-nez v0, :cond_0

    .line 1251
    :goto_0
    return-void

    .line 1248
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->setFocusHintPath(Lcom/android/gallery3d/data/Path;)V

    .line 1249
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->removeDeletion(Lcom/android/gallery3d/data/Path;)V

    .line 1250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method public playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1262
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "treat-up-as-back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1266
    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    :goto_0
    return-void

    .line 1267
    :catch_0
    move-exception v0

    .line 1268
    const v0, 0x7f0b01d8

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public refreshBottomControlsWhenReady()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1507
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    if-nez v1, :cond_0

    .line 1516
    :goto_0
    return-void

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 1511
    .local v0, "currentPhoto":Lcom/android/gallery3d/data/MediaObject;
    if-nez v0, :cond_1

    .line 1512
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1514
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRefreshBottomControlsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaItem;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    goto :goto_0
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setSwipingEnabled(Z)V

    .line 970
    return-void
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->switchWithCaptureAnimation(I)Z

    move-result v0

    return v0
.end method
