.class public Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.super Landroid/view/View;
.source "ImageShow.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;
    }
.end annotation


# static fields
.field private static UNVEIL_HORIZONTAL:I

.field private static UNVEIL_VERTICAL:I

.field private static mBackgroundColor:I

.field private static mOriginalText:Ljava/lang/String;

.field private static mOriginalTextMargin:I

.field private static mOriginalTextSize:I

.field protected static mTextPadding:I

.field protected static mTextSize:I


# instance fields
.field private final USE_BACKGROUND_IMAGE:Z

.field private mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field private mBackgroundImage:Landroid/graphics/Bitmap;

.field private mDirtyGeometry:Z

.field private mFinishedScalingOperation:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field protected mImageBounds:Landroid/graphics/Rect;

.field protected mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field private mImportantToast:Z

.field mInteractionMode:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

.field private mOriginalDisabled:Z

.field mOriginalScale:F

.field mOriginalTranslation:Landroid/graphics/Point;

.field protected mPaint:Landroid/graphics/Paint;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mShowOriginalDirection:I

.field private mShowToast:Z

.field mStartFocusX:F

.field mStartFocusY:F

.field private mToast:Ljava/lang/String;

.field private mTouch:Landroid/graphics/Point;

.field private mTouchDown:Landroid/graphics/Point;

.field private mTouchShowOriginal:Z

.field private mTouchShowOriginalDate:J

.field private final mTouchShowOriginalDelayMax:J

.field private final mTouchShowOriginalDelayMin:J

.field private mZoomIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x18

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextSize:I

    .line 55
    const/16 v0, 0x14

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextPadding:I

    .line 62
    const/high16 v0, -0x10000

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundColor:I

    .line 74
    const/4 v0, 0x1

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_HORIZONTAL:I

    .line 75
    const/4 v0, 0x2

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    .line 81
    const/16 v0, 0x8

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    .line 82
    const/16 v0, 0x1a

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextSize:I

    .line 83
    const-string v0, "Original"

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 173
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    .line 57
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 58
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    .line 60
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 61
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->USE_BACKGROUND_IMAGE:Z

    .line 64
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 65
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    .line 68
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalDisabled:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    .line 71
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMin:J

    .line 72
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMax:J

    .line 73
    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 77
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    .line 78
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    .line 79
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFinishedScalingOperation:Z

    .line 84
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mZoomIn:Z

    .line 85
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTranslation:Landroid/graphics/Point;

    .line 93
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    .line 94
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowToast:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImportantToast:Z

    .line 96
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mInteractionMode:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    .line 102
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setupGestureDetector(Landroid/content/Context;)V

    .line 176
    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 177
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->addObserver(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 165
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    .line 57
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 58
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    .line 60
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 61
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->USE_BACKGROUND_IMAGE:Z

    .line 64
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 65
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    .line 68
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalDisabled:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    .line 71
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMin:J

    .line 72
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMax:J

    .line 73
    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 77
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    .line 78
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    .line 79
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFinishedScalingOperation:Z

    .line 84
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mZoomIn:Z

    .line 85
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTranslation:Landroid/graphics/Point;

    .line 93
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    .line 94
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowToast:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImportantToast:Z

    .line 96
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mInteractionMode:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    .line 102
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setupGestureDetector(Landroid/content/Context;)V

    .line 168
    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 169
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->addObserver(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 170
    return-void
.end method

.method static synthetic access$002(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowToast:Z

    return p1
.end method

.method private imageSizeChanged(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 503
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v5

    if-nez v5, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v4, v5

    .line 506
    .local v4, "w":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v1, v5

    .line 507
    .local v1, "h":F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v5

    iget-object v0, v5, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 508
    .local v0, "geo":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 509
    .local v2, "pb":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v5, v4, v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    .line 512
    :cond_2
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v6, v6, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 513
    .local v3, "r":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v5

    iget-object v5, v5, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setPhotoBounds(Landroid/graphics/RectF;)V

    .line 514
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v5

    iget-object v5, v5, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setCropBounds(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public static setDefaultBackgroundColor(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 105
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundColor:I

    .line 106
    return-void
.end method

.method public static setOriginalText(Ljava/lang/String;)V
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 133
    sput-object p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public static setOriginalTextMargin(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 125
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    .line 126
    return-void
.end method

.method public static setOriginalTextSize(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 129
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextSize:I

    .line 130
    return-void
.end method

.method public static setTextPadding(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 121
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextPadding:I

    .line 122
    return-void
.end method

.method public static setTextSize(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 117
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextSize:I

    .line 118
    return-void
.end method


# virtual methods
.method protected clearDirtyGeometryFlag()V
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    .line 496
    return-void
.end method

.method public didFinishScalingOperation()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 762
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFinishedScalingOperation:Z

    if-eqz v1, :cond_0

    .line 763
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFinishedScalingOperation:Z

    .line 764
    const/4 v0, 0x1

    .line 766
    :cond_0
    return v0
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v0, 0x0

    .line 474
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 476
    return-void
.end method

.method public drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Z)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "image"    # Landroid/graphics/Bitmap;
    .param p3, "updateBounds"    # Z

    .prologue
    const/4 v9, 0x0

    const/high16 v11, 0x40000000

    .line 380
    if-eqz p2, :cond_1

    .line 381
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v2, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 384
    .local v2, "s":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v7, v8, v9, v10}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v3

    .line 387
    .local v3, "scale":F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v7, v3

    .line 388
    .local v6, "w":F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v1, v7, v3

    .line 389
    .local v1, "h":F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v1

    div-float v5, v7, v11

    .line 390
    .local v5, "ty":F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    div-float v4, v7, v11

    .line 392
    .local v4, "tx":F
    new-instance v0, Landroid/graphics/Rect;

    float-to-int v7, v4

    float-to-int v8, v5

    add-float v9, v6, v4

    float-to-int v9, v9

    add-float v10, v1, v5

    float-to-int v10, v10

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 394
    .local v0, "d":Landroid/graphics/Rect;
    if-eqz p3, :cond_0

    .line 395
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    .line 397
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 399
    .end local v0    # "d":Landroid/graphics/Rect;
    .end local v1    # "h":F
    .end local v2    # "s":Landroid/graphics/Rect;
    .end local v3    # "scale":F
    .end local v4    # "tx":F
    .end local v5    # "ty":F
    .end local v6    # "w":F
    :cond_1
    return-void
.end method

.method public drawPartialImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 402
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->showsOriginal()Z

    move-result v10

    .line 403
    .local v10, "showsOriginal":Z
    if-nez v10, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 406
    if-eqz p2, :cond_3

    .line 407
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_4

    .line 409
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 415
    :cond_1
    :goto_1
    const/4 v8, 0x0

    .line 416
    .local v8, "px":I
    const/4 v9, 0x0

    .line 417
    .local v9, "py":I
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    if-ne v0, v1, :cond_5

    .line 418
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 419
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v9, v0, v1

    .line 428
    :cond_2
    :goto_2
    new-instance v7, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v8

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v9

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 430
    .local v7, "d":Landroid/graphics/Rect;
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Z)V

    .line 432
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 433
    .local v5, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x1000000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    const/high16 v0, 0x40400000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 436
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    if-ne v0, v1, :cond_6

    .line 437
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 444
    :goto_3
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 445
    .local v6, "bounds":Landroid/graphics/Rect;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 446
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextSize:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 447
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5, v0, v1, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 448
    const/high16 v0, -0x1000000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 450
    const/high16 v0, 0x40400000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 451
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 453
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 454
    const/high16 v0, 0x3f800000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 455
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 456
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 459
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "d":Landroid/graphics/Rect;
    .end local v8    # "px":I
    .end local v9    # "py":I
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 411
    :cond_4
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_HORIZONTAL:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    goto/16 :goto_1

    .line 421
    .restart local v8    # "px":I
    .restart local v9    # "py":I
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v8, v0, v1

    .line 422
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 423
    if-eqz v10, :cond_2

    .line 424
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    goto/16 :goto_2

    .line 440
    .restart local v5    # "paint":Landroid/graphics/Paint;
    .restart local v7    # "d":Landroid/graphics/Rect;
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method public drawToast(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xff

    .line 270
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowToast:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 271
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 272
    .local v0, "paint":Landroid/graphics/Paint;
    const/high16 v4, 0x43000000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 273
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 274
    .local v1, "textWidth":F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    float-to-int v2, v4

    .line 275
    .local v2, "toastX":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40400000

    div-float/2addr v4, v5

    float-to-int v3, v4

    .line 277
    .local v3, "toastY":I
    invoke-virtual {v0, v7, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 278
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    add-int/lit8 v6, v3, -0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 279
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 280
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    int-to-float v5, v2

    add-int/lit8 v6, v3, -0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 281
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    add-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 282
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 283
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    int-to-float v5, v2

    add-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 284
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImportantToast:Z

    if-eqz v4, :cond_1

    .line 285
    const/16 v4, 0xc8

    invoke-virtual {v0, v7, v4, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 289
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 291
    .end local v0    # "paint":Landroid/graphics/Paint;
    .end local v1    # "textWidth":F
    .end local v2    # "toastX":I
    .end local v3    # "toastY":I
    :cond_0
    return-void

    .line 287
    .restart local v0    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "textWidth":F
    .restart local v2    # "toastX":I
    .restart local v3    # "toastY":I
    :cond_1
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_0
.end method

.method protected enableComparison()Z
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x1

    return v0
.end method

.method public getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-object v0
.end method

.method public getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBackgroundColor()I
    .locals 1

    .prologue
    .line 113
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundColor:I

    return v0
.end method

.method protected getDirtyGeometryFlag()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    return v0
.end method

.method public getFilteredImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 376
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFiltersOnlyImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 368
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getFiltersOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getGeometry()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    iget-object v1, v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;-><init>(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    return-object v0
.end method

.method public getGeometryOnlyImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 372
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getGeometryOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImageCropBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPreviewCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->roundNearest(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getPreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    return-object v0
.end method

.method protected getImageToScreenMatrix(Z)Landroid/graphics/Matrix;
    .locals 10
    .param p1, "reflectRotation"    # Z

    .prologue
    const/high16 v9, 0x40000000

    .line 233
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    iget-object v0, v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 234
    .local v0, "geo":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_1

    .line 236
    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 245
    :goto_0
    return-object v6

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v2, v1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getOriginalToScreen(ZFFFF)Landroid/graphics/Matrix;

    move-result-object v6

    .line 241
    .local v6, "m":Landroid/graphics/Matrix;
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v8

    .line 242
    .local v8, "translate":Landroid/graphics/Point;
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v7

    .line 243
    .local v7, "scaleFactor":F
    iget v1, v8, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v8, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 244
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-virtual {v6, v7, v7, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0
.end method

.method protected getScreenToImageMatrix(Z)Landroid/graphics/Matrix;
    .locals 2
    .param p1, "reflectRotation"    # Z

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImageToScreenMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v1

    .line 256
    .local v1, "m":Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 257
    .local v0, "invert":Landroid/graphics/Matrix;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 258
    return-object v0
.end method

.method public hasModifications()Z
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->hasModifications()Z

    move-result v0

    goto :goto_0
.end method

.method public imageLoaded()V
    .locals 0

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImage()V

    .line 535
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 536
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 640
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mZoomIn:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mZoomIn:Z

    .line 641
    const/high16 v0, 0x3f800000

    .line 642
    .local v0, "scale":F
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mZoomIn:Z

    if-eqz v1, :cond_0

    .line 643
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getMaxScaleFactor()F

    move-result v0

    .line 645
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 646
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setScaleFactor(F)V

    .line 647
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 649
    :cond_1
    return v2

    .line 640
    .end local v0    # "scale":F
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 295
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setImageShowSize(II)V

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000

    div-float v5, v17, v18

    .line 298
    .local v5, "cx":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000

    div-float v6, v17, v18

    .line 299
    .local v6, "cy":F
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v11

    .line 300
    .local v11, "scaleFactor":F
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v15

    .line 302
    .local v15, "translation":Landroid/graphics/Point;
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 303
    .local v12, "scalingMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v12, v11, v11, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 304
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 306
    new-instance v16, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 307
    .local v16, "unscaledClipRect":Landroid/graphics/RectF;
    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 311
    const/4 v8, 0x0

    .line 315
    .local v8, "enablePartialRendering":Z
    if-eqz v8, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    .line 316
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 319
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 321
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v11, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 322
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 323
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->drawBackground(Landroid/graphics/Canvas;)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Z)V

    .line 325
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getHighresImage()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 326
    .local v9, "highresPreview":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_1

    .line 327
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Z)V

    .line 329
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showTitle()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0xc8

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget v18, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextSize:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 335
    new-instance v14, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v19

    sget v20, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextSize:I

    sget v21, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextPadding:I

    add-int v20, v20, v21

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 336
    .local v14, "textRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0xff

    const/16 v19, 0xc8

    const/16 v20, 0xc8

    const/16 v21, 0xc8

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->name()Ljava/lang/String;

    move-result-object v17

    sget v18, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextPadding:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3fc00000

    sget v20, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextPadding:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 342
    .end local v14    # "textRect":Landroid/graphics/Rect;
    :cond_2
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getPartialImage()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 343
    .local v10, "partialPreview":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_3

    .line 344
    new-instance v13, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 345
    .local v13, "src":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 346
    .local v7, "dest":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v10, v13, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 349
    .end local v7    # "dest":Landroid/graphics/Rect;
    .end local v13    # "src":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 350
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v11, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 351
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getGeometryOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->drawPartialImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 357
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->drawToast(Landroid/graphics/Canvas;)V

    .line 358
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "startEvent"    # Landroid/view/MotionEvent;
    .param p2, "endEvent"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    const/4 v0, 0x0

    .line 672
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-nez v1, :cond_1

    .line 678
    :cond_0
    :goto_0
    return v0

    .line 675
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 678
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 684
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 187
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 188
    .local v1, "parentWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 189
    .local v0, "parentHeight":I
    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setMeasuredDimension(II)V

    .line 190
    return-void
.end method

.method public onNewValue(I)V
    .locals 2
    .param p1, "parameter"    # I

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->hasModifications()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->enableSave(Z)V

    .line 158
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 12
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 713
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v2

    .line 714
    .local v2, "img":Lcom/android/gallery3d/filtershow/imageshow/MasterImage;
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v4

    .line 715
    .local v4, "scaleFactor":F
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v3

    .line 717
    .local v3, "pos":Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v8

    mul-float/2addr v4, v8

    .line 718
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getMaxScaleFactor()F

    move-result v8

    cmpl-float v8, v4, v8

    if-lez v8, :cond_0

    .line 719
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getMaxScaleFactor()F

    move-result v4

    .line 721
    :cond_0
    float-to-double v8, v4

    const-wide/high16 v10, 0x3fe0000000000000L

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    .line 722
    const/high16 v4, 0x3f000000

    .line 724
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setScaleFactor(F)V

    .line 725
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v4

    .line 726
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v3

    .line 727
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    .line 728
    .local v0, "focusx":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    .line 729
    .local v1, "focusy":F
    iget v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mStartFocusX:F

    sub-float v8, v0, v8

    div-float v5, v8, v4

    .line 730
    .local v5, "translateX":F
    iget v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mStartFocusY:F

    sub-float v8, v1, v8

    div-float v6, v8, v4

    .line 731
    .local v6, "translateY":F
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v7

    .line 732
    .local v7, "translation":Landroid/graphics/Point;
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTranslation:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    add-float/2addr v8, v5

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 733
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTranslation:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    add-float/2addr v8, v6

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 734
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setTranslation(Landroid/graphics/Point;)V

    .line 736
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 737
    const/4 v8, 0x1

    return v8
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 742
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v0

    .line 743
    .local v0, "pos":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTranslation:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 744
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTranslation:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 745
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalScale:F

    .line 746
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mStartFocusX:F

    .line 747
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mStartFocusY:F

    .line 748
    sget-object v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;->SCALE:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mInteractionMode:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    .line 749
    const/4 v1, 0x1

    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/high16 v1, 0x3f800000

    .line 754
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mInteractionMode:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    .line 755
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 756
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setScaleFactor(F)V

    .line 757
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 759
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    .line 689
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 695
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 700
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 564
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 566
    .local v0, "action":I
    and-int/lit16 v0, v0, 0xff

    .line 568
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 569
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->scaleInProgress()Z

    move-result v5

    .line 570
    .local v5, "scaleInProgress":Z
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 571
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mInteractionMode:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    sget-object v10, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;->SCALE:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    if-ne v9, v10, :cond_0

    .line 572
    const/4 v9, 0x1

    .line 626
    :goto_0
    return v9

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->scaleInProgress()Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v5, :cond_1

    .line 577
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFinishedScalingOperation:Z

    .line 580
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v1, v9

    .line 581
    .local v1, "ex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v2, v9

    .line 582
    .local v2, "ey":I
    if-nez v0, :cond_2

    .line 583
    sget-object v9, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;->MOVE:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    iput-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mInteractionMode:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    .line 584
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    iput v1, v9, Landroid/graphics/Point;->x:I

    .line 585
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    iput v2, v9, Landroid/graphics/Point;->y:I

    .line 586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    .line 587
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 588
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v9

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setOriginalTranslation(Landroid/graphics/Point;)V

    .line 591
    :cond_2
    const/4 v9, 0x2

    if-ne v0, v9, :cond_3

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mInteractionMode:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    sget-object v10, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;->MOVE:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    if-ne v9, v10, :cond_3

    .line 592
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iput v1, v9, Landroid/graphics/Point;->x:I

    .line 593
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iput v2, v9, Landroid/graphics/Point;->y:I

    .line 595
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v4

    .line 596
    .local v4, "scaleFactor":F
    const/high16 v9, 0x3f800000

    cmpl-float v9, v4, v9

    if-lez v9, :cond_5

    .line 597
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v6, v9, v4

    .line 598
    .local v6, "translateX":F
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v7, v9, v4

    .line 599
    .local v7, "translateY":F
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getOriginalTranslation()Landroid/graphics/Point;

    move-result-object v3

    .line 600
    .local v3, "originalTranslation":Landroid/graphics/Point;
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v8

    .line 601
    .local v8, "translation":Landroid/graphics/Point;
    iget v9, v3, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    add-float/2addr v9, v6

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Point;->x:I

    .line 602
    iget v9, v3, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    add-float/2addr v9, v7

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Point;->y:I

    .line 603
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setTranslation(Landroid/graphics/Point;)V

    .line 604
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 613
    .end local v3    # "originalTranslation":Landroid/graphics/Point;
    .end local v4    # "scaleFactor":F
    .end local v6    # "translateX":F
    .end local v7    # "translateY":F
    .end local v8    # "translation":Landroid/graphics/Point;
    :cond_3
    :goto_1
    const/4 v9, 0x1

    if-ne v0, v9, :cond_4

    .line 614
    sget-object v9, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    iput-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mInteractionMode:Lcom/android/gallery3d/filtershow/imageshow/ImageShow$InteractionMode;

    .line 615
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 616
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    const/4 v10, 0x0

    iput v10, v9, Landroid/graphics/Point;->x:I

    .line 617
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    const/4 v10, 0x0

    iput v10, v9, Landroid/graphics/Point;->y:I

    .line 618
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    const/4 v10, 0x0

    iput v10, v9, Landroid/graphics/Point;->x:I

    .line 619
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    const/4 v10, 0x0

    iput v10, v9, Landroid/graphics/Point;->y:I

    .line 620
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v9

    const/high16 v10, 0x3f800000

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_4

    .line 621
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v9

    const/high16 v10, 0x3f800000

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setScaleFactor(F)V

    .line 622
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->resetTranslation()V

    .line 625
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 626
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 605
    .restart local v4    # "scaleFactor":F
    :cond_5
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->enableComparison()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalDisabled:Z

    if-nez v9, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0xc8

    cmp-long v9, v9, v11

    if-lez v9, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 609
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    goto :goto_1
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 709
    return-void
.end method

.method public resetImageCaches(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 2
    .param p1, "caller"    # Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->updatePresets(Z)V

    goto :goto_0
.end method

.method public resetParameter()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public returnFilteredResult(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 2
    .param p1, "filterShowActivity"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->returnFilteredResult(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 548
    return-void
.end method

.method public saveImage(Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V
    .locals 2
    .param p1, "filterShowActivity"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->saveImage(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V

    .line 540
    return-void
.end method

.method public saveToUri(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/String;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 1
    .param p1, "f"    # Landroid/graphics/Bitmap;
    .param p2, "u"    # Landroid/net/Uri;
    .param p3, "m"    # Ljava/lang/String;
    .param p4, "filterShowActivity"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->saveToUri(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/String;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 544
    return-void
.end method

.method public scaleInProgress()Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public select()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V
    .locals 2
    .param p1, "loader"    # Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 484
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->addListener(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 486
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 488
    :cond_0
    return-void
.end method

.method protected setOriginalDisabled(Z)V
    .locals 0
    .param p1, "originalDisabled"    # Z

    .prologue
    .line 559
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalDisabled:Z

    .line 560
    return-void
.end method

.method public setupGestureDetector(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 182
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 183
    return-void
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showToast(Ljava/lang/String;Z)V

    .line 198
    return-void
.end method

.method public showToast(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "important"    # Z

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowToast:Z

    .line 203
    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImportantToast:Z

    .line 204
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$1;-><init>(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    return-void
.end method

.method public unselect()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public updateGeometryFlags()Z
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x1

    return v0
.end method

.method public updateImage()V
    .locals 2

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 524
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateGeometryFlags()Z

    move-result v1

    if-nez v1, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 528
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 529
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->imageSizeChanged(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
