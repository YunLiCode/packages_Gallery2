.class public Lcom/android/gallery3d/ui/PhotoView;
.super Lcom/android/gallery3d/ui/GLView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;,
        Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;,
        Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;,
        Lcom/android/gallery3d/ui/PhotoView$FullPicture;,
        Lcom/android/gallery3d/ui/PhotoView$Picture;,
        Lcom/android/gallery3d/ui/PhotoView$MyHandler;,
        Lcom/android/gallery3d/ui/PhotoView$Listener;,
        Lcom/android/gallery3d/ui/PhotoView$Model;,
        Lcom/android/gallery3d/ui/PhotoView$Size;
    }
.end annotation


# static fields
.field private static TRANSITION_SCALE_FACTOR:F


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mCameraRect:Landroid/graphics/Rect;

.field private mCameraRelativeFrame:Landroid/graphics/Rect;

.field private mCancelExtraScalingPending:Z

.field private mCompensation:I

.field private mContext:Landroid/content/Context;

.field private mDisplayRotation:I

.field private mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

.field private mFilmMode:Z

.field private mFirst:Z

.field private mFullScreenCamera:Z

.field private final mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

.field private final mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

.field private mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mHolding:I

.field private mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

.field private mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

.field private mNextBound:I

.field private mNoThumbnailText:Lcom/android/gallery3d/glrenderer/StringTexture;

.field private final mPictures:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PhotoView$Picture;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaceholderColor:I

.field private final mPositionController:Lcom/android/gallery3d/ui/PositionController;

.field private mPrevBound:I

.field private mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

.field private mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

.field private mTileView:Lcom/android/gallery3d/ui/TileImageView;

.field private mTouchBoxDeletable:Z

.field private mTouchBoxIndex:I

.field private mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

.field private mUndoBarState:I

.field private mUndoIndexHint:I

.field private mVideoPlayIcon:Lcom/android/gallery3d/glrenderer/Texture;

.field private mWantPictureCenterCallbacks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const v0, 0x3f3d70a4

    sput v0, Lcom/android/gallery3d/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 7
    .param p1, "activity"    # Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .prologue
    const v6, 0x7fffffff

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 246
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 173
    new-instance v1, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    const/high16 v2, 0x3f000000

    invoke-direct {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    .line 176
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f666666

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 189
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, -0x3

    invoke-direct {v1, v2, v5}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    .line 191
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/android/gallery3d/ui/PhotoView$Size;

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    .line 208
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 209
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    .line 210
    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 211
    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    .line 213
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    .line 214
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    .line 215
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mFirst:Z

    .line 235
    iput v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 242
    iput v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    .line 247
    new-instance v1, Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {v1, p1}, Lcom/android/gallery3d/ui/TileImageView;-><init>(Lcom/android/gallery3d/app/GalleryContext;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    .line 248
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/PhotoView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 249
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    .line 250
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPlaceholderColor:I

    .line 252
    new-instance v1, Lcom/android/gallery3d/ui/EdgeView;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/ui/EdgeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    .line 253
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/PhotoView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 254
    new-instance v1, Lcom/android/gallery3d/ui/UndoBarView;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/ui/UndoBarView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    .line 255
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/PhotoView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 256
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/ui/UndoBarView;->setVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/PhotoView$1;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/UndoBarView;->setOnClickListener(Lcom/android/gallery3d/ui/GLView$OnClickListener;)V

    .line 264
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b01ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41a00000

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/glrenderer/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/android/gallery3d/glrenderer/StringTexture;

    .line 268
    new-instance v1, Lcom/android/gallery3d/ui/PhotoView$MyHandler;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/PhotoView$MyHandler;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 270
    new-instance v1, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    .line 271
    new-instance v1, Lcom/android/gallery3d/ui/GestureRecognizer;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    .line 273
    new-instance v1, Lcom/android/gallery3d/ui/PositionController;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$2;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/PhotoView$2;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/PositionController;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/PositionController$Listener;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    .line 306
    new-instance v1, Lcom/android/gallery3d/glrenderer/ResourceTexture;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v3, 0x7f0200d7

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/glrenderer/Texture;

    .line 307
    const/4 v0, -0x3

    .local v0, "i":I
    :goto_0
    if-gt v0, v5, :cond_1

    .line 308
    if-nez v0, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$FullPicture;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 307
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;-><init>(Lcom/android/gallery3d/ui/PhotoView;I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 314
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/PhotoView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->showUndoBar(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapback()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/PhotoView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->getPanoramaRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->getCameraRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(III)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    return-object v0
.end method

.method static synthetic access$2300(III)F
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->calculateMoveOutProgress(III)F

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;
    .param p1, "x1"    # F

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getScrollScale(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;
    .param p1, "x1"    # F

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getScrollAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2600(FFF)F
    .locals 1
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;
    .param p1, "x1"    # F

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getOffsetAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/glrenderer/GLCanvas;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawVideoPlayIcon(Lcom/android/gallery3d/glrenderer/GLCanvas;I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->drawLoadingFailMessage(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawPlaceHolder(Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/ui/PhotoView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->switchToHitPicture(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/ui/PhotoView;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->swipeImages(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3602(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$372(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$376(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/EdgeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/GestureRecognizer;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchFocus()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/PhotoView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/PhotoView;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->captureAnimationDone(I)V

    return-void
.end method

.method private static calculateMoveOutProgress(III)F
    .locals 4
    .param p0, "left"    # I
    .param p1, "right"    # I
    .param p2, "viewWidth"    # I

    .prologue
    .line 1722
    sub-int v0, p1, p0

    .line 1729
    .local v0, "w":I
    if-ge v0, p2, :cond_1

    .line 1730
    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int v1, v2, v3

    .line 1731
    .local v1, "zx":I
    if-le p0, v1, :cond_0

    .line 1732
    sub-int v2, p0, v1

    neg-int v2, v2

    int-to-float v2, v2

    sub-int v3, p2, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1752
    .end local v1    # "zx":I
    :goto_0
    return v2

    .line 1734
    .restart local v1    # "zx":I
    :cond_0
    sub-int v2, p0, v1

    int-to-float v2, v2

    neg-int v3, v0

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    .line 1744
    .end local v1    # "zx":I
    :cond_1
    if-lez p0, :cond_2

    .line 1745
    neg-int v2, p0

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 1748
    :cond_2
    if-ge p1, p2, :cond_3

    .line 1749
    sub-int v2, p2, p1

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 1752
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private captureAnimationDone(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    const/4 v1, 0x1

    .line 1696
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    .line 1697
    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1700
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarWanted()V

    .line 1702
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapback()V

    .line 1703
    return-void
.end method

.method private checkFocusSwitching()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1479
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_1

    .line 1484
    :cond_0
    :goto_0
    return-void

    .line 1480
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1481
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private checkHideUndoBar(I)V
    .locals 7
    .param p1, "addition"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1405
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    or-int/2addr v6, p1

    iput v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1406
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    .line 1414
    :cond_0
    :goto_0
    return-void

    .line 1407
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    move v2, v4

    .line 1408
    .local v2, "timeout":Z
    :goto_1
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_5

    move v3, v4

    .line 1409
    .local v3, "touched":Z
    :goto_2
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_6

    move v1, v4

    .line 1410
    .local v1, "fullCamera":Z
    :goto_3
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_7

    move v0, v4

    .line 1411
    .local v0, "deleteLast":Z
    :goto_4
    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    if-nez v1, :cond_3

    if-eqz v3, :cond_0

    .line 1412
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    goto :goto_0

    .end local v0    # "deleteLast":Z
    .end local v1    # "fullCamera":Z
    .end local v2    # "timeout":Z
    .end local v3    # "touched":Z
    :cond_4
    move v2, v5

    .line 1407
    goto :goto_1

    .restart local v2    # "timeout":Z
    :cond_5
    move v3, v5

    .line 1408
    goto :goto_2

    .restart local v3    # "touched":Z
    :cond_6
    move v1, v5

    .line 1409
    goto :goto_3

    .restart local v1    # "fullCamera":Z
    :cond_7
    move v0, v5

    .line 1410
    goto :goto_4
.end method

.method private drawLoadingFailMessage(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 3
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/android/gallery3d/glrenderer/StringTexture;

    .line 929
    .local v0, "m":Lcom/android/gallery3d/glrenderer/StringTexture;
    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/StringTexture;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/glrenderer/StringTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    .line 930
    return-void
.end method

.method private drawPlaceHolder(Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 916
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 917
    return-void
.end method

.method private drawVideoPlayIcon(Lcom/android/gallery3d/glrenderer/GLCanvas;I)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "side"    # I

    .prologue
    .line 921
    div-int/lit8 v4, p2, 0x6

    .line 923
    .local v4, "s":I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/glrenderer/Texture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/Texture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 924
    return-void
.end method

.method private static gapToSide(II)I
    .locals 2
    .param p0, "imageWidth"    # I
    .param p1, "viewWidth"    # I

    .prologue
    .line 1617
    const/4 v0, 0x0

    sub-int v1, p1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 557
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getOffsetAlpha(F)F
    .locals 3
    .param p1, "offset"    # F

    .prologue
    const/high16 v2, 0x3f800000

    .line 1800
    const/high16 v1, 0x3f000000

    div-float/2addr p1, v1

    .line 1801
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    sub-float v0, v2, p1

    .line 1802
    .local v0, "alpha":F
    :goto_0
    const v1, 0x3cf5c28f

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1

    .line 1801
    .end local v0    # "alpha":F
    :cond_0
    add-float v0, v2, p1

    goto :goto_0
.end method

.method private getPanoramaRotation()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 568
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 569
    .local v2, "orientation":I
    if-ne v2, v3, :cond_1

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_1

    :cond_0
    move v1, v3

    .line 571
    .local v1, "invertPortrait":Z
    :goto_0
    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0xb4

    if-lt v5, v6, :cond_2

    move v0, v3

    .line 572
    .local v0, "invert":Z
    :goto_1
    if-eq v0, v1, :cond_3

    .line 573
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    add-int/lit16 v3, v3, 0xb4

    rem-int/lit16 v3, v3, 0x168

    .line 575
    :goto_2
    return v3

    .end local v0    # "invert":Z
    .end local v1    # "invertPortrait":Z
    :cond_1
    move v1, v4

    .line 569
    goto :goto_0

    .restart local v1    # "invertPortrait":Z
    :cond_2
    move v0, v4

    .line 571
    goto :goto_1

    .line 575
    .restart local v0    # "invert":Z
    :cond_3
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    goto :goto_2
.end method

.method private static getRotated(III)I
    .locals 1
    .param p0, "degree"    # I
    .param p1, "original"    # I
    .param p2, "theother"    # I

    .prologue
    .line 933
    rem-int/lit16 v0, p0, 0xb4

    if-nez v0, :cond_0

    .end local p1    # "original":I
    :goto_0
    return p1

    .restart local p1    # "original":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private getScrollAlpha(F)F
    .locals 3
    .param p1, "scrollProgress"    # F

    .prologue
    const/high16 v0, 0x3f800000

    .line 1758
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    :cond_0
    return v0
.end method

.method private getScrollScale(F)F
    .locals 4
    .param p1, "scrollProgress"    # F

    .prologue
    .line 1765
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1767
    .local v0, "interpolatedProgress":F
    const/high16 v2, 0x3f800000

    sub-float/2addr v2, v0

    sget v3, Lcom/android/gallery3d/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    .line 1769
    .local v1, "scale":F
    return v1
.end method

.method private hideUndoBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1388
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 1389
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onCommitDeleteImage()V

    .line 1390
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/UndoBarView;->animateVisibility(I)V

    .line 1391
    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1392
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    .line 1393
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onUndoBarVisibilityChanged(Z)V

    .line 1394
    return-void
.end method

.method private static interpolate(FFF)F
    .locals 1
    .param p0, "ratio"    # F
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    .line 1794
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private setPictureSize(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 474
    .local v0, "p":Lcom/android/gallery3d/ui/PhotoView$Picture;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v3

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v2, p1, v3, v1}, Lcom/android/gallery3d/ui/PositionController;->setImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V

    .line 476
    return-void

    .line 474
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showUndoBar(Z)V
    .locals 5
    .param p1, "deleteLast"    # Z

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    .line 1379
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 1380
    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1381
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/UndoBarView;->animateVisibility(I)V

    .line 1383
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1384
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onUndoBarVisibilityChanged(Z)V

    .line 1385
    :cond_1
    return-void
.end method

.method private slideToNextPicture()Z
    .locals 1

    .prologue
    .line 1603
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 1606
    :goto_0
    return v0

    .line 1604
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 1605
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->startHorizontalSlide()V

    .line 1606
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private slideToPrevPicture()Z
    .locals 1

    .prologue
    .line 1610
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 1613
    :goto_0
    return v0

    .line 1611
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToPrevImage()V

    .line 1612
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->startHorizontalSlide()V

    .line 1613
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private snapToNeighborImage()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1586
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1587
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v3

    .line 1589
    .local v3, "viewW":I
    div-int/lit8 v0, v3, 0x5

    .line 1590
    .local v0, "moveThreshold":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5, v3}, Lcom/android/gallery3d/ui/PhotoView;->gapToSide(II)I

    move-result v5

    add-int v2, v0, v5

    .line 1593
    .local v2, "threshold":I
    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int v5, v3, v5

    if-le v5, v2, :cond_1

    .line 1594
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v4

    .line 1599
    :cond_0
    :goto_0
    return v4

    .line 1595
    :cond_1
    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-le v5, v2, :cond_0

    .line 1596
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v4

    goto :goto_0
.end method

.method private snapback()V
    .locals 1

    .prologue
    .line 1579
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x5

    if-eqz v0, :cond_1

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1580
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1581
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->snapback()V

    goto :goto_0
.end method

.method private swipeImages(FF)Z
    .locals 6
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v3, 0x0

    .line 1553
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v4, :cond_1

    .line 1575
    :cond_0
    :goto_0
    return v3

    .line 1557
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    .line 1558
    .local v0, "controller":Lcom/android/gallery3d/ui/PositionController;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    .line 1559
    .local v2, "isMinimal":Z
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v1

    .line 1560
    .local v1, "edges":I
    if-nez v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1561
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_0

    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_0

    .line 1567
    :cond_2
    const/high16 v4, -0x3c6a0000

    cmpg-float v4, p1, v4

    if-gez v4, :cond_4

    if-nez v2, :cond_3

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_4

    .line 1569
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v3

    goto :goto_0

    .line 1570
    :cond_4
    const/high16 v4, 0x43960000

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    if-nez v2, :cond_5

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 1572
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v3

    goto :goto_0
.end method

.method private switchFocus()V
    .locals 1

    .prologue
    .line 1488
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v0, :cond_0

    .line 1497
    :goto_0
    return-void

    .line 1489
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1491
    :pswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToPrevImage()V

    goto :goto_0

    .line 1494
    :pswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    goto :goto_0

    .line 1489
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private switchPosition()I
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 1502
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v10, v9}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1503
    .local v1, "curr":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v10

    div-int/lit8 v0, v10, 0x2

    .line 1505
    .local v0, "center":I
    iget v10, v1, Landroid/graphics/Rect;->left:I

    if-le v10, v0, :cond_0

    iget v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v10, :cond_0

    .line 1506
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v8, v7}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 1507
    .local v5, "prev":Landroid/graphics/Rect;
    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int v2, v8, v0

    .line 1508
    .local v2, "currDist":I
    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int v6, v0, v8

    .line 1509
    .local v6, "prevDist":I
    if-ge v6, v2, :cond_1

    .line 1521
    .end local v2    # "currDist":I
    .end local v5    # "prev":Landroid/graphics/Rect;
    .end local v6    # "prevDist":I
    :goto_0
    return v7

    .line 1512
    :cond_0
    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-ge v7, v0, :cond_1

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v7, :cond_1

    .line 1513
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 1514
    .local v3, "next":Landroid/graphics/Rect;
    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v7

    .line 1515
    .restart local v2    # "currDist":I
    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v0

    .line 1516
    .local v4, "nextDist":I
    if-ge v4, v2, :cond_1

    move v7, v8

    .line 1517
    goto :goto_0

    .end local v2    # "currDist":I
    .end local v3    # "next":Landroid/graphics/Rect;
    .end local v4    # "nextDist":I
    :cond_1
    move v7, v9

    .line 1521
    goto :goto_0
.end method

.method private switchToFirstImage()V
    .locals 2

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1638
    return-void
.end method

.method private switchToHitPicture(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1527
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v1, :cond_1

    .line 1528
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1529
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-lt v1, p1, :cond_1

    .line 1530
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    .line 1542
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 1535
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v1, :cond_0

    .line 1536
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1537
    .restart local v0    # "r":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-gt v1, p1, :cond_0

    .line 1538
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    goto :goto_0
.end method

.method private switchToNextImage()V
    .locals 2

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1630
    return-void
.end method

.method private switchToPrevImage()V
    .locals 2

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1634
    return-void
.end method

.method private switchWithCaptureAnimationLocked(I)Z
    .locals 5
    .param p1, "offset"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1664
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v3, :cond_0

    .line 1692
    :goto_0
    return v1

    .line 1665
    :cond_0
    if-ne p1, v1, :cond_3

    .line 1666
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 1668
    :cond_1
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v3, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1669
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 1670
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/PositionController;->startCaptureAnimationSlide(I)V

    .line 1689
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    .line 1690
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p1, v2}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1691
    .local v0, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1671
    .end local v0    # "m":Landroid/os/Message;
    :cond_3
    if-ne p1, v4, :cond_7

    .line 1672
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 1673
    :cond_4
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1678
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_6

    .line 1679
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    .line 1680
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    goto :goto_0

    .line 1684
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    .line 1685
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/PositionController;->startCaptureAnimationSlide(I)V

    goto :goto_1

    :cond_7
    move v1, v2

    .line 1687
    goto :goto_0
.end method

.method private updateActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1316
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    .line 1317
    .local v0, "isCamera":Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v1, :cond_1

    .line 1319
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1324
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1322
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarWanted()V

    goto :goto_0
.end method

.method private updateCameraRect()V
    .locals 12

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v6

    .line 520
    .local v6, "w":I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v1

    .line 521
    .local v1, "h":I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_0

    .line 522
    move v5, v6

    .line 523
    .local v5, "tmp":I
    move v6, v1

    .line 524
    move v1, v5

    .line 526
    .end local v5    # "tmp":I
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->left:I

    .line 527
    .local v2, "l":I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 528
    .local v4, "t":I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 529
    .local v3, "r":I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 532
    .local v0, "b":I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    sparse-switch v7, :sswitch_data_0

    .line 539
    :goto_0
    const-string v7, "PhotoView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "compensation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CameraRelativeFrame = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mCameraRect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void

    .line 533
    :sswitch_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 534
    :sswitch_1
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v1, v0

    sub-int v9, v1, v4

    invoke-virtual {v7, v8, v2, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 535
    :sswitch_2
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v1, v0

    sub-int v10, v6, v2

    sub-int v11, v1, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 536
    :sswitch_3
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v6, v2

    invoke-virtual {v7, v4, v8, v0, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 532
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public canUndo()Z
    .locals 1

    .prologue
    .line 1417
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilmMode()Z
    .locals 1

    .prologue
    .line 1338
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method public notifyDataChange([III)V
    .locals 12
    .param p1, "fromIndex"    # [I
    .param p2, "prevBound"    # I
    .param p3, "nextBound"    # I

    .prologue
    .line 405
    iput p2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    .line 406
    iput p3, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    .line 409
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 410
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 411
    .local v8, "k":I
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 412
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v0, 0x7

    if-ge v6, v0, :cond_0

    .line 413
    aget v0, p1, v6

    if-ne v0, v8, :cond_2

    .line 414
    add-int/lit8 v0, v6, -0x3

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 421
    .end local v6    # "i":I
    .end local v8    # "k":I
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 422
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 423
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 428
    :cond_1
    const/4 v6, -0x3

    .restart local v6    # "i":I
    :goto_1
    const/4 v0, 0x3

    if-gt v6, v0, :cond_3

    .line 429
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 430
    .local v10, "p":Lcom/android/gallery3d/ui/PhotoView$Picture;
    invoke-interface {v10}, Lcom/android/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 431
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    add-int/lit8 v1, v6, 0x3

    invoke-interface {v10}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v2

    aput-object v2, v0, v1

    .line 428
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 412
    .end local v10    # "p":Lcom/android/gallery3d/ui/PhotoView$Picture;
    .restart local v8    # "k":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 434
    .end local v8    # "k":I
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v11

    .line 437
    .local v11, "wasDeleting":Z
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v1, :cond_4

    const/4 v2, 0x1

    :goto_2
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v1, :cond_5

    const/4 v3, 0x1

    :goto_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/PositionController;->moveBox([IZZZ[Lcom/android/gallery3d/ui/PhotoView$Size;)V

    .line 440
    const/4 v6, -0x3

    :goto_4
    const/4 v0, 0x3

    if-gt v6, v0, :cond_6

    .line 441
    invoke-direct {p0, v6}, Lcom/android/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 440
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 437
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 444
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v7

    .line 448
    .local v7, "isDeleting":Z
    if-eqz v11, :cond_7

    if-nez v7, :cond_7

    .line 449
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 450
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 451
    .local v9, "m":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 455
    .end local v9    # "m":Landroid/os/Message;
    :cond_7
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 456
    return-void
.end method

.method public notifyImageChange(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onCurrentImageUpdated()V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 468
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 469
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 470
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changeSize"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v9, 0x0

    .line 481
    sub-int v6, p4, p2

    .line 482
    .local v6, "w":I
    sub-int v2, p5, p3

    .line 483
    .local v2, "h":I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v7, v9, v9, v6, v2}, Lcom/android/gallery3d/ui/TileImageView;->layout(IIII)V

    .line 484
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    invoke-virtual {v7, v9, v9, v6, v2}, Lcom/android/gallery3d/ui/EdgeView;->layout(IIII)V

    .line 485
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {v7, v9, v9}, Lcom/android/gallery3d/ui/UndoBarView;->measure(II)V

    .line 486
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/UndoBarView;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual {v7, v9, v8, v6, v2}, Lcom/android/gallery3d/ui/UndoBarView;->layout(IIII)V

    .line 488
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v5

    .line 489
    .local v5, "root":Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v5}, Lcom/android/gallery3d/ui/GLRoot;->getDisplayRotation()I

    move-result v1

    .line 490
    .local v1, "displayRotation":I
    invoke-interface {v5}, Lcom/android/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    .line 491
    .local v0, "compensation":I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    if-ne v7, v1, :cond_0

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    if-eq v7, v0, :cond_2

    .line 493
    :cond_0
    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 494
    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    .line 499
    const/4 v3, -0x3

    .local v3, "i":I
    :goto_0
    const/4 v7, 0x3

    if-gt v3, v7, :cond_2

    .line 500
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v7, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 501
    .local v4, "p":Lcom/android/gallery3d/ui/PhotoView$Picture;
    invoke-interface {v4}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 502
    invoke-interface {v4}, Lcom/android/gallery3d/ui/PhotoView$Picture;->forceSize()V

    .line 499
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 507
    .end local v3    # "i":I
    .end local v4    # "p":Lcom/android/gallery3d/ui/PhotoView$Picture;
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateCameraRect()V

    .line 508
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/ui/PositionController;->setConstrainedFrame(Landroid/graphics/Rect;)V

    .line 509
    if-eqz p1, :cond_3

    .line 510
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/ui/PositionController;->setViewSize(II)V

    .line 512
    :cond_3
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 943
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1346
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController;->skipAnimation()V

    .line 1347
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageView;->freeTextures()V

    .line 1348
    const/4 v0, -0x3

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 1349
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PhotoView$Picture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Picture;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1351
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 1352
    return-void
.end method

.method protected render(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 10
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1426
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mFirst:Z

    if-eqz v6, :cond_0

    .line 1429
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v6}, Lcom/android/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 1432
    :cond_0
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v6}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/PositionController;->isCenter()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v7

    .line 1435
    .local v0, "full":Z
    :goto_0
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mFirst:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eq v0, v6, :cond_2

    .line 1436
    :cond_1
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    .line 1437
    iput-boolean v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mFirst:Z

    .line 1438
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v6, v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onFullScreenChanged(Z)V

    .line 1439
    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    .line 1445
    :cond_2
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eqz v6, :cond_4

    .line 1446
    const/4 v4, 0x0

    .line 1461
    .local v4, "neighbors":I
    :goto_1
    move v1, v4

    .local v1, "i":I
    :goto_2
    neg-int v6, v4

    if-lt v1, v6, :cond_8

    .line 1462
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v6, v1}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 1463
    .local v5, "r":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v6, p1, v5}, Lcom/android/gallery3d/ui/PhotoView$Picture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    .line 1461
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v0    # "full":Z
    .end local v1    # "i":I
    .end local v4    # "neighbors":I
    .end local v5    # "r":Landroid/graphics/Rect;
    :cond_3
    move v0, v8

    .line 1432
    goto :goto_0

    .line 1450
    .restart local v0    # "full":Z
    :cond_4
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v6

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-nez v6, :cond_5

    move v3, v7

    .line 1451
    .local v3, "inPageMode":Z
    :goto_3
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_6

    move v2, v7

    .line 1453
    .local v2, "inCaptureAnimation":Z
    :goto_4
    if-eqz v3, :cond_7

    if-nez v2, :cond_7

    .line 1454
    const/4 v4, 0x1

    .restart local v4    # "neighbors":I
    goto :goto_1

    .end local v2    # "inCaptureAnimation":Z
    .end local v3    # "inPageMode":Z
    .end local v4    # "neighbors":I
    :cond_5
    move v3, v8

    .line 1450
    goto :goto_3

    .restart local v3    # "inPageMode":Z
    :cond_6
    move v2, v8

    .line 1451
    goto :goto_4

    .line 1456
    .restart local v2    # "inCaptureAnimation":Z
    :cond_7
    const/4 v4, 0x3

    .restart local v4    # "neighbors":I
    goto :goto_1

    .line 1466
    .end local v2    # "inCaptureAnimation":Z
    .end local v3    # "inPageMode":Z
    .restart local v1    # "i":I
    :cond_8
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    invoke-virtual {p0, p1, v6}, Lcom/android/gallery3d/ui/PhotoView;->renderChild(Lcom/android/gallery3d/glrenderer/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 1467
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {p0, p1, v6}, Lcom/android/gallery3d/ui/PhotoView;->renderChild(Lcom/android/gallery3d/glrenderer/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 1469
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/PositionController;->advanceAnimation()V

    .line 1470
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->checkFocusSwitching()V

    .line 1471
    return-void
.end method

.method public resetToFirstPicture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1361
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1362
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1363
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->prepareTextures()V

    .line 1356
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    .line 1357
    return-void
.end method

.method public setFilmMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1327
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-ne v0, p1, :cond_0

    .line 1335
    :goto_0
    return-void

    .line 1328
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 1329
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->setFilmMode(Z)V

    .line 1330
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->setNeedFullImage(Z)V

    .line 1331
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->setFocusHintDirection(I)V

    .line 1333
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateActionBar()V

    .line 1334
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onFilmModeChanged(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1330
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1331
    goto :goto_2
.end method

.method public setListener(Lcom/android/gallery3d/ui/PhotoView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/gallery3d/ui/PhotoView$Listener;

    .prologue
    .line 1810
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    .line 1811
    return-void
.end method

.method public setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V
    .locals 2
    .param p1, "model"    # Lcom/android/gallery3d/ui/PhotoView$Model;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    .line 322
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/TileImageView;->setModel(Lcom/android/gallery3d/ui/TileImageView$TileSource;)V

    .line 323
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->setSwipingEnabled(Z)V

    .line 1313
    return-void
.end method

.method public setWantPictureCenterCallbacks(Z)V
    .locals 0
    .param p1, "wanted"    # Z

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    .line 398
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->stopScrolling()V

    .line 318
    return-void
.end method

.method public switchToImage(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1626
    return-void
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 1653
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1654
    .local v0, "root":Lcom/android/gallery3d/ui/GLRoot;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1659
    :goto_0
    return v1

    .line 1655
    :cond_0
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1657
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->switchWithCaptureAnimationLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1659
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method
