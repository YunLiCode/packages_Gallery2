.class public Lcom/android/dreams/phototable/PhotoTable;
.super Landroid/widget/FrameLayout;
.source "PhotoTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;,
        Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;,
        Lcom/android/dreams/phototable/PhotoTable$SelectionReaper;,
        Lcom/android/dreams/phototable/PhotoTable$FocusReaper;,
        Lcom/android/dreams/phototable/PhotoTable$Launcher;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sRNG:Ljava/util/Random;


# instance fields
.field private final mAnimating:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBackground:Landroid/view/ViewGroup;

.field private final mDragGestureDetector:Lcom/android/dreams/phototable/DragGestureDetector;

.field private mDream:Landroid/service/dreams/DreamService;

.field private final mDropInterpolator:Landroid/view/animation/Interpolator;

.field private final mDropPeriod:I

.field private final mEdgeSwipeDetector:Lcom/android/dreams/phototable/EdgeSwipeDetector;

.field private final mFastDropPeriod:I

.field private mFocus:Landroid/view/View;

.field private final mFocusReaper:Lcom/android/dreams/phototable/PhotoTable$FocusReaper;

.field private mHeight:I

.field private mHighlightColor:I

.field private final mImageRatio:F

.field private final mImageRotationLimit:F

.field private final mInset:I

.field private mIsLandscape:Z

.field private final mKeyboardInterpreter:Lcom/android/dreams/phototable/KeyboardInterpreter;

.field private final mLauncher:Lcom/android/dreams/phototable/PhotoTable$Launcher;

.field private mLoadOnDeckTasks:[Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;

.field private mLongSide:I

.field private final mMaxFocusTime:I

.field private final mMaxSelectionTime:I

.field private final mNowDropDelay:I

.field private mOnDeck:[Landroid/view/View;

.field private final mOnTable:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoLaunchTask:Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;

.field private final mPhotoSource:Lcom/android/dreams/phototable/PhotoSource;

.field private final mPickUpDuration:J

.field private final mRedealCount:I

.field private final mResources:Landroid/content/res/Resources;

.field private mSelection:Landroid/view/View;

.field private final mSelectionReaper:Lcom/android/dreams/phototable/PhotoTable$SelectionReaper;

.field private mShortSide:I

.field private mStageLeft:Landroid/view/ViewGroup;

.field private mStarted:Z

.field private final mStoryModeEnabled:Z

.field private final mTableCapacity:I

.field private final mTableRatio:F

.field private final mTapToExit:Z

.field private final mThrowInterpolator:Landroid/view/animation/Interpolator;

.field private final mThrowRotation:F

.field private final mThrowSpeed:F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/dreams/phototable/PhotoTable;->$assertionsDisabled:Z

    .line 82
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/dreams/phototable/PhotoTable;->sRNG:Ljava/util/Random;

    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "as"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const v4, 0x49742400

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    .line 132
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mInset:I

    .line 133
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mDropPeriod:I

    .line 134
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mFastDropPeriod:I

    .line 135
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mNowDropDelay:I

    .line 136
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mImageRatio:F

    .line 137
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mTableRatio:F

    .line 138
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mImageRotationLimit:F

    .line 139
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mThrowSpeed:F

    .line 140
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mPickUpDuration:J

    .line 141
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mThrowRotation:F

    .line 142
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mTableCapacity:I

    .line 143
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mRedealCount:I

    .line 144
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mTapToExit:Z

    .line 145
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mStoryModeEnabled:Z

    .line 146
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mHighlightColor:I

    .line 147
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mMaxSelectionTime:I

    .line 148
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mMaxFocusTime:I

    .line 149
    new-instance v0, Lcom/android/dreams/phototable/SoftLandingInterpolator;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0d0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/dreams/phototable/SoftLandingInterpolator;-><init>(FF)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mThrowInterpolator:Landroid/view/animation/Interpolator;

    .line 152
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0d0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mDropInterpolator:Landroid/view/animation/Interpolator;

    .line 154
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;

    .line 155
    new-instance v0, Lcom/android/dreams/phototable/PhotoSourcePlexor;

    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "PhotoTableDream"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/dreams/phototable/PhotoSourcePlexor;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSource;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mAnimating:Ljava/util/List;

    .line 158
    new-instance v0, Lcom/android/dreams/phototable/PhotoTable$Launcher;

    invoke-direct {v0, p0}, Lcom/android/dreams/phototable/PhotoTable$Launcher;-><init>(Lcom/android/dreams/phototable/PhotoTable;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mLauncher:Lcom/android/dreams/phototable/PhotoTable$Launcher;

    .line 159
    new-instance v0, Lcom/android/dreams/phototable/PhotoTable$FocusReaper;

    invoke-direct {v0, p0}, Lcom/android/dreams/phototable/PhotoTable$FocusReaper;-><init>(Lcom/android/dreams/phototable/PhotoTable;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mFocusReaper:Lcom/android/dreams/phototable/PhotoTable$FocusReaper;

    .line 160
    new-instance v0, Lcom/android/dreams/phototable/PhotoTable$SelectionReaper;

    invoke-direct {v0, p0}, Lcom/android/dreams/phototable/PhotoTable$SelectionReaper;-><init>(Lcom/android/dreams/phototable/PhotoTable;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelectionReaper:Lcom/android/dreams/phototable/PhotoTable$SelectionReaper;

    .line 161
    new-instance v0, Lcom/android/dreams/phototable/DragGestureDetector;

    invoke-direct {v0, p1, p0}, Lcom/android/dreams/phototable/DragGestureDetector;-><init>(Landroid/content/Context;Lcom/android/dreams/phototable/PhotoTable;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mDragGestureDetector:Lcom/android/dreams/phototable/DragGestureDetector;

    .line 162
    new-instance v0, Lcom/android/dreams/phototable/EdgeSwipeDetector;

    invoke-direct {v0, p1, p0}, Lcom/android/dreams/phototable/EdgeSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/dreams/phototable/PhotoTable;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mEdgeSwipeDetector:Lcom/android/dreams/phototable/EdgeSwipeDetector;

    .line 163
    new-instance v0, Lcom/android/dreams/phototable/KeyboardInterpreter;

    invoke-direct {v0, p0}, Lcom/android/dreams/phototable/KeyboardInterpreter;-><init>(Lcom/android/dreams/phototable/PhotoTable;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mKeyboardInterpreter:Lcom/android/dreams/phototable/KeyboardInterpreter;

    .line 164
    new-array v0, v6, [Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mLoadOnDeckTasks:[Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;

    .line 165
    new-array v0, v6, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    .line 166
    iput-boolean v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mStarted:Z

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/dreams/phototable/PhotoTable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mDropPeriod:I

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/dreams/phototable/PhotoTable;->placeOnDeck(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->recycle(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->throwOnTable(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/dreams/phototable/PhotoTable;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/dreams/phototable/PhotoTable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mTableCapacity:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/dreams/phototable/PhotoTable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mRedealCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/dreams/phototable/PhotoTable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mFastDropPeriod:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/dreams/phototable/PhotoTable;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mAnimating:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->moveToBackground(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->getBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/dreams/phototable/PhotoTable;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mStageLeft:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/dreams/phototable/PhotoTable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mNowDropDelay:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/dreams/phototable/PhotoTable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mLongSide:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/dreams/phototable/PhotoTable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mShortSide:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/dreams/phototable/PhotoTable;)Lcom/android/dreams/phototable/PhotoSource;
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSource;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dreams/phototable/PhotoTable;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;
    .param p1, "x1"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/android/dreams/phototable/PhotoTable;->applyFrame(Lcom/android/dreams/phototable/PhotoTable;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/dreams/phototable/PhotoTable;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/dreams/phototable/PhotoTable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/dreams/phototable/PhotoTable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mHeight:I

    return v0
.end method

.method private static applyFrame(Lcom/android/dreams/phototable/PhotoTable;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)Landroid/view/View;
    .locals 12
    .param p0, "table"    # Lcom/android/dreams/phototable/PhotoTable;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "decodedPhoto"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 456
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 458
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04005e

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .local v9, "photo":Landroid/view/View;
    move-object v6, v9

    .line 459
    check-cast v6, Landroid/widget/ImageView;

    .line 460
    .local v6, "image":Landroid/widget/ImageView;
    const/4 v2, 0x2

    new-array v8, v2, [Landroid/graphics/drawable/Drawable;

    .line 461
    .local v8, "layers":[Landroid/graphics/drawable/Drawable;
    iget v11, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 462
    .local v11, "photoWidth":I
    iget v10, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 463
    .local v10, "photoHeight":I
    if-eqz p2, :cond_0

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_0

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v2, :cond_1

    .line 464
    :cond_0
    const/4 v9, 0x0

    .line 480
    :goto_0
    return-object v9

    .line 466
    :cond_1
    invoke-virtual {p2, v4}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    .line 467
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v2, v8, v1

    .line 468
    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0200b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v8, v4

    .line 469
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 470
    .local v0, "layerList":Landroid/graphics/drawable/LayerDrawable;
    iget v2, p0, Lcom/android/dreams/phototable/PhotoTable;->mInset:I

    iget v3, p0, Lcom/android/dreams/phototable/PhotoTable;->mInset:I

    iget v4, p0, Lcom/android/dreams/phototable/PhotoTable;->mInset:I

    iget v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mInset:I

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 472
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    const v1, 0x7f0a001c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 475
    const v1, 0x7f0a001b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 477
    new-instance v1, Lcom/android/dreams/phototable/PhotoTouchListener;

    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/dreams/phototable/PhotoTouchListener;-><init>(Landroid/content/Context;Lcom/android/dreams/phototable/PhotoTable;)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private cross([D[D)D
    .locals 6
    .param p1, "a"    # [D
    .param p2, "b"    # [D

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 335
    aget-wide v0, p1, v4

    aget-wide v2, p2, v5

    mul-double/2addr v0, v2

    aget-wide v2, p1, v5

    aget-wide v4, p2, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private exitStageLeft(Landroid/view/View;)V
    .locals 3
    .param p1, "photo"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x2

    .line 857
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->isInBackground(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 862
    :goto_0
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mStageLeft:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 864
    return-void

    .line 860
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private getBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "photo"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 923
    if-nez p1, :cond_1

    .line 935
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    move-object v1, p1

    .line 926
    check-cast v1, Landroid/widget/ImageView;

    .line 927
    .local v1, "image":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 928
    .local v2, "layers":Landroid/graphics/drawable/LayerDrawable;
    if-eqz v2, :cond_0

    .line 931
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 932
    .local v0, "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private getCenter(Landroid/view/View;)[D
    .locals 7
    .param p1, "photo"    # Landroid/view/View;

    .prologue
    const/high16 v6, 0x40000000

    .line 343
    const v3, 0x7f0a001c

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v2, v3

    .line 344
    .local v2, "width":F
    const v3, 0x7f0a001b

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v1, v3

    .line 345
    .local v1, "height":F
    const/4 v3, 0x2

    new-array v0, v3, [D

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    div-float v5, v2, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    aput-wide v4, v0, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    div-float v5, v1, v6

    add-float/2addr v4, v5

    neg-float v4, v4

    float-to-double v4, v4

    aput-wide v4, v0, v3

    .line 347
    .local v0, "center":[D
    return-object v0
.end method

.method private isInBackground(Landroid/view/View;)Z
    .locals 2
    .param p1, "photo"    # Landroid/view/View;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "f"    # F

    .prologue
    .line 299
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 993
    return-void
.end method

.method private moveToBackground(Landroid/view/View;)V
    .locals 3
    .param p1, "photo"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x2

    .line 849
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->isInBackground(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->removeView(Landroid/view/View;)V

    .line 851
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mBackground:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 854
    :cond_0
    return-void
.end method

.method private moveToForeground(Landroid/view/View;)V
    .locals 2
    .param p1, "photo"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x2

    .line 867
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->isInBackground(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 869
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/dreams/phototable/PhotoTable;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 872
    :cond_0
    return-void
.end method

.method private norm([D)D
    .locals 4
    .param p1, "a"    # [D

    .prologue
    .line 339
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private pickUp(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x40000000

    .line 888
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 889
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 891
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 893
    const-string v3, "scale is %f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 894
    const-string v3, "target it"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v0, v3, v0

    div-float/2addr v0, v6

    .line 896
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v3, v1

    div-float/2addr v1, v6

    .line 898
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/dreams/phototable/PhotoTable;->wrapAngle(F)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setRotation(F)V

    .line 900
    const-string v3, "animate it"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 902
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->moveToForeground(Landroid/view/View;)V

    .line 903
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mPickUpDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/dreams/phototable/PhotoTable$5;

    invoke-direct {v1, p0, p1}, Lcom/android/dreams/phototable/PhotoTable$5;-><init>(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 920
    return-void
.end method

.method private placeOnDeck(Landroid/view/View;I)V
    .locals 10
    .param p1, "photo"    # Landroid/view/View;
    .param p2, "slot"    # I

    .prologue
    const/4 v8, 0x0

    const/high16 v9, 0x40000000

    .line 672
    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    array-length v6, v6

    if-ge p2, v6, :cond_1

    .line 673
    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    aget-object v6, v6, p2

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    aget-object v6, v6, p2

    if-eq v6, p1, :cond_0

    .line 674
    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    aget-object v6, v6, p2

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/dreams/phototable/PhotoTable;->fadeAway(Landroid/view/View;Z)V

    .line 676
    :cond_0
    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    aput-object p1, v6, p2

    .line 677
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v2, v6

    .line 678
    .local v2, "photoWidth":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v1, v6

    .line 679
    .local v1, "photoHeight":F
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 681
    .local v3, "scale":F
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    div-float v4, v6, v9

    .line 682
    .local v4, "x":F
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v1

    div-float v5, v6, v9

    .line 684
    .local v5, "y":F
    iget v6, p0, Lcom/android/dreams/phototable/PhotoTable;->mWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/dreams/phototable/PhotoTable;->mInset:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    sub-float v7, v2, v7

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    div-float v0, v6, v9

    .line 685
    .local v0, "offset":F
    const/4 v6, 0x1

    if-ne p2, v6, :cond_2

    const/high16 v6, 0x3f800000

    :goto_0
    mul-float/2addr v6, v0

    add-float/2addr v4, v6

    .line 687
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/dreams/phototable/PhotoTable;->mPickUpDuration:J

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 698
    .end local v0    # "offset":F
    .end local v1    # "photoHeight":F
    .end local v2    # "photoWidth":F
    .end local v3    # "scale":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_1
    return-void

    .line 685
    .restart local v0    # "offset":F
    .restart local v1    # "photoHeight":F
    .restart local v2    # "photoWidth":F
    .restart local v3    # "scale":F
    .restart local v4    # "x":F
    .restart local v5    # "y":F
    :cond_2
    const/high16 v6, -0x40800000

    goto :goto_0
.end method

.method private promoteSelection()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 249
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    iget v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mMaxSelectionTime:I

    invoke-virtual {p0, v1}, Lcom/android/dreams/phototable/PhotoTable;->scheduleSelectionReaper(I)V

    .line 251
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelection:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 252
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelection:Landroid/view/View;

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 253
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelection:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/dreams/phototable/PhotoTable;->moveToTopOfPile(Landroid/view/View;)V

    .line 254
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelection:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/dreams/phototable/PhotoTable;->pickUp(Landroid/view/View;)V

    .line 255
    iget-boolean v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mStoryModeEnabled:Z

    if-eqz v1, :cond_2

    .line 256
    const/4 v0, 0x0

    .local v0, "slot":I
    :goto_0
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mLoadOnDeckTasks:[Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mLoadOnDeckTasks:[Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mLoadOnDeckTasks:[Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->cancel(Z)Z

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mLoadOnDeckTasks:[Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;

    new-instance v2, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;

    invoke-direct {v2, p0, v0}, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;-><init>(Lcom/android/dreams/phototable/PhotoTable;I)V

    aput-object v2, v1, v0

    .line 263
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mLoadOnDeckTasks:[Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;

    aget-object v1, v1, v0

    new-array v2, v5, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelection:Landroid/view/View;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 256
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "slot":I
    :cond_2
    return-void
.end method

.method private static randMultiDrop(IFFII)Landroid/graphics/PointF;
    .locals 9
    .param p0, "n"    # I
    .param p1, "i"    # F
    .param p2, "j"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 321
    const-string v5, "randMultiDrop (%d, %f, %f, %d, %d)"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    const/4 v5, 0x5

    new-array v0, v5, [F

    fill-array-data v0, :array_0

    .line 323
    .local v0, "cx":[F
    const/4 v5, 0x5

    new-array v1, v5, [F

    fill-array-data v1, :array_1

    .line 324
    .local v1, "cy":[F
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 325
    array-length v5, v0

    rem-int v5, p0, v5

    aget v3, v0, v5

    .line 326
    .local v3, "x":F
    array-length v5, v0

    rem-int v5, p0, v5

    aget v4, v1, v5

    .line 327
    .local v4, "y":F
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 328
    .local v2, "p":Landroid/graphics/PointF;
    int-to-float v5, p3

    mul-float/2addr v5, v3

    const v6, 0x3d4ccccd

    int-to-float v7, p3

    mul-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/PointF;->x:F

    .line 329
    int-to-float v5, p4

    mul-float/2addr v5, v4

    const v6, 0x3d4ccccd

    int-to-float v7, p4

    mul-float/2addr v6, v7

    mul-float/2addr v6, p2

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/PointF;->y:F

    .line 330
    const-string v5, "randInCenter returning %f, %f"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    return-object v2

    .line 322
    nop

    :array_0
    .array-data 4
        0x3e99999a
        0x3e99999a
        0x3f000000
        0x3f333333
        0x3f333333
    .end array-data

    .line 323
    :array_1
    .array-data 4
        0x3e99999a
        0x3f333333
        0x3f000000
        0x3e99999a
        0x3f333333
    .end array-data
.end method

.method static randfrange(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 303
    sget-object v0, Lcom/android/dreams/phototable/PhotoTable;->sRNG:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/dreams/phototable/PhotoTable;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private recycle(Landroid/view/View;)V
    .locals 2
    .param p1, "photo"    # Landroid/view/View;

    .prologue
    .line 939
    if-eqz p1, :cond_0

    .line 940
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->removeView(Landroid/view/View;)V

    .line 941
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSource;

    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->getBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/PhotoSource;->recycle(Landroid/graphics/Bitmap;)V

    .line 943
    :cond_0
    return-void
.end method

.method private throwOnTable(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 712
    const-string v0, "start offscreen"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 713
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mThrowRotation:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 714
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mLongSide:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 715
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mLongSide:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    .line 717
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mThrowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, v0}, Lcom/android/dreams/phototable/PhotoTable;->dropOnTable(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    .line 718
    return-void
.end method

.method private wrapAngle(F)F
    .locals 3

    .prologue
    const/high16 v2, 0x43340000

    const/high16 v1, 0x43b40000

    .line 880
    add-float v0, p1, v2

    .line 881
    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    .line 882
    sub-float/2addr v0, v2

    .line 883
    return v0
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->setHighlight(Landroid/view/View;Z)V

    .line 282
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mFocus:Landroid/view/View;

    .line 283
    return-void
.end method

.method public clearSelection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelection:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/dreams/phototable/PhotoTable;->dropOnTable(Landroid/view/View;)V

    .line 190
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSource;

    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelection:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/dreams/phototable/PhotoTable;->getBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dreams/phototable/PhotoSource;->donePaging(Landroid/graphics/Bitmap;)V

    .line 191
    iget-boolean v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mStoryModeEnabled:Z

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelection:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/dreams/phototable/PhotoTable;->fadeInBackground(Landroid/view/View;)V

    .line 194
    :cond_0
    iput-object v3, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelection:Landroid/view/View;

    .line 196
    :cond_1
    const/4 v0, 0x0

    .local v0, "slot":I
    :goto_0
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 197
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/dreams/phototable/PhotoTable;->fadeAway(Landroid/view/View;Z)V

    .line 199
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    aput-object v3, v1, v0

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mLoadOnDeckTasks:[Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mLoadOnDeckTasks:[Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_3

    .line 203
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mLoadOnDeckTasks:[Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->cancel(Z)Z

    .line 204
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mLoadOnDeckTasks:[Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;

    aput-object v3, v1, v0

    .line 196
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_4
    return-void
.end method

.method public dropOnTable(Landroid/view/View;)V
    .locals 1
    .param p1, "photo"    # Landroid/view/View;

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mDropInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, v0}, Lcom/android/dreams/phototable/PhotoTable;->dropOnTable(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    .line 798
    return-void
.end method

.method public dropOnTable(Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/high16 v6, 0x40000000

    const/4 v8, 0x0

    .line 802
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mImageRotationLimit:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mImageRotationLimit:F

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->randfrange(FF)F

    move-result v0

    .line 803
    sget-object v1, Lcom/android/dreams/phototable/PhotoTable;->sRNG:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    sget-object v2, Lcom/android/dreams/phototable/PhotoTable;->sRNG:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v2

    double-to-float v2, v2

    sget-object v3, Lcom/android/dreams/phototable/PhotoTable;->sRNG:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, Lcom/android/dreams/phototable/PhotoTable;->mWidth:I

    iget v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mHeight:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/dreams/phototable/PhotoTable;->randMultiDrop(IFFII)Landroid/graphics/PointF;

    move-result-object v1

    .line 806
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 807
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 809
    const-string v3, "drop it at %f, %f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    .line 812
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    .line 814
    iget v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mLongSide:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float/2addr v2, v5

    .line 815
    iget v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mShortSide:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float/2addr v1, v5

    .line 816
    const-string v5, "fixed offset is %f, %f "

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 818
    sub-float v3, v2, v3

    .line 819
    sub-float v4, v1, v4

    .line 821
    float-to-double v5, v3

    float-to-double v3, v4

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 822
    const/high16 v4, 0x447a0000

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/dreams/phototable/PhotoTable;->mThrowSpeed:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 823
    const/16 v4, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 825
    const-string v4, "animate it"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoTable;->mAnimating:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mTableRatio:F

    iget v6, p0, Lcom/android/dreams/phototable/PhotoTable;->mImageRatio:F

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mTableRatio:F

    iget v6, p0, Lcom/android/dreams/phototable/PhotoTable;->mImageRatio:F

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/dreams/phototable/PhotoTable$4;

    invoke-direct {v1, p0, p1}, Lcom/android/dreams/phototable/PhotoTable$4;-><init>(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 846
    return-void
.end method

.method public fadeAway(Landroid/view/View;Z)V
    .locals 3
    .param p1, "photo"    # Landroid/view/View;
    .param p2, "replace"    # Z

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 635
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->exitStageLeft(Landroid/view/View;)V

    .line 636
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 637
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 638
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mPickUpDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/dreams/phototable/PhotoTable$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/dreams/phototable/PhotoTable$2;-><init>(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 655
    return-void
.end method

.method public fadeInBackground(Landroid/view/View;)V
    .locals 3
    .param p1, "photo"    # Landroid/view/View;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mAnimating:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mPickUpDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/dreams/phototable/PhotoTable$1;

    invoke-direct {v1, p0, p1}, Lcom/android/dreams/phototable/PhotoTable$1;-><init>(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 629
    return-void
.end method

.method public fadeOutBackground(Landroid/view/View;)V
    .locals 3
    .param p1, "photo"    # Landroid/view/View;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mPickUpDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 610
    return-void
.end method

.method public fling(Landroid/view/View;)V
    .locals 13

    .prologue
    const/high16 v3, 0x40000000

    const/4 v7, 0x2

    const/4 v12, 0x0

    const/4 v5, 0x1

    .line 735
    new-array v0, v7, [F

    iget v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/dreams/phototable/PhotoTable;->mLongSide:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v12

    iget v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/dreams/phototable/PhotoTable;->mLongSide:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 737
    new-array v1, v7, [F

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    aput v2, v1, v12

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    aput v2, v1, v5

    .line 738
    new-array v2, v7, [F

    aget v3, v0, v12

    aput v3, v2, v12

    aget v3, v1, v5

    aget v4, v0, v12

    add-float/2addr v3, v4

    aget v4, v1, v12

    sub-float/2addr v3, v4

    aput v3, v2, v5

    .line 739
    new-array v3, v7, [F

    aget v4, v1, v12

    aget v6, v0, v5

    add-float/2addr v4, v6

    aget v6, v1, v5

    sub-float/2addr v4, v6

    aput v4, v3, v12

    aget v0, v0, v5

    aput v0, v3, v5

    .line 740
    new-array v0, v7, [F

    fill-array-data v0, :array_0

    .line 741
    aget v4, v2, v12

    aget v6, v1, v12

    sub-float/2addr v4, v6

    float-to-double v6, v4

    aget v4, v2, v5

    aget v8, v1, v5

    sub-float/2addr v4, v8

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    aget v4, v3, v12

    aget v8, v1, v12

    sub-float/2addr v4, v8

    float-to-double v8, v4

    aget v4, v3, v5

    aget v10, v1, v5

    sub-float/2addr v4, v10

    float-to-double v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    cmpg-double v4, v6, v8

    if-gez v4, :cond_0

    .line 742
    aget v3, v2, v12

    aget v4, v1, v12

    sub-float/2addr v3, v4

    aput v3, v0, v12

    .line 743
    aget v2, v2, v5

    aget v1, v1, v5

    sub-float v1, v2, v1

    aput v1, v0, v5

    .line 749
    :goto_0
    aget v1, v0, v12

    float-to-double v1, v1

    aget v3, v0, v5

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 750
    const/high16 v2, 0x447a0000

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/dreams/phototable/PhotoTable;->mThrowSpeed:F

    div-float/2addr v1, v2

    float-to-int v4, v1

    .line 751
    aget v2, v0, v12

    aget v3, v0, v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/dreams/phototable/PhotoTable;->fling(Landroid/view/View;FFIZ)V

    .line 752
    return-void

    .line 745
    :cond_0
    aget v2, v3, v12

    aget v4, v1, v12

    sub-float/2addr v2, v4

    aput v2, v0, v12

    .line 746
    aget v2, v3, v5

    aget v1, v1, v5

    sub-float v1, v2, v1

    aput v1, v0, v5

    goto :goto_0

    .line 740
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public fling(Landroid/view/View;FFIZ)V
    .locals 3

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getFocus()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 757
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/dreams/phototable/PhotoTable;->moveFocus(Landroid/view/View;F)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 758
    const/high16 v0, 0x43340000

    invoke-virtual {p0, p1, v0}, Lcom/android/dreams/phototable/PhotoTable;->moveFocus(Landroid/view/View;F)Landroid/view/View;

    .line 761
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->moveToForeground(Landroid/view/View;)V

    .line 762
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 769
    if-eqz p5, :cond_1

    .line 770
    iget v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mThrowRotation:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 773
    :cond_1
    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/dreams/phototable/PhotoTable;->photoOffTable(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 774
    const-string v1, "fling away"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    new-instance v1, Lcom/android/dreams/phototable/PhotoTable$3;

    invoke-direct {v1, p0, p1}, Lcom/android/dreams/phototable/PhotoTable$3;-><init>(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 782
    :cond_2
    return-void
.end method

.method public getFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mFocus:Landroid/view/View;

    return-object v0
.end method

.method public getSelection()Landroid/view/View;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelection:Landroid/view/View;

    return-object v0
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mFocus:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSelection()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelection:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method public launch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 592
    const-string v0, "launching"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/PhotoTable;->setSystemUiVisibility(I)V

    .line 594
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    const-string v0, "inflate it"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mPhotoLaunchTask:Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mPhotoLaunchTask:Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;

    invoke-virtual {v0}, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 598
    :cond_0
    new-instance v0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;

    invoke-direct {v0, p0}, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;-><init>(Lcom/android/dreams/phototable/PhotoTable;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mPhotoLaunchTask:Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;

    .line 599
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mPhotoLaunchTask:Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 602
    :cond_1
    return-void
.end method

.method public move(Landroid/view/View;FFF)V
    .locals 1
    .param p1, "photo"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "a"    # F

    .prologue
    .line 702
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 703
    const/high16 v0, 0x3f800000

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 704
    float-to-int v0, p2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 705
    float-to-int v0, p3

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    .line 706
    float-to-int v0, p4

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 707
    return-void
.end method

.method public move(Landroid/view/View;FFZ)V
    .locals 3

    .prologue
    .line 721
    if-eqz p1, :cond_0

    .line 722
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr v0, p2

    .line 723
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v1, p3

    .line 724
    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 725
    invoke-virtual {p1, v1}, Landroid/view/View;->setY(F)V

    .line 726
    const-string v0, "PhotoTable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] + ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    if-eqz p4, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->photoOffTable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/dreams/phototable/PhotoTable;->fadeAway(Landroid/view/View;Z)V

    .line 731
    :cond_0
    return-void
.end method

.method public moveFocus(Landroid/view/View;F)Landroid/view/View;
    .locals 1
    .param p1, "focus"    # Landroid/view/View;
    .param p2, "direction"    # F

    .prologue
    .line 351
    const/high16 v0, 0x42b40000

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/dreams/phototable/PhotoTable;->moveFocus(Landroid/view/View;FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public moveFocus(Landroid/view/View;FF)Landroid/view/View;
    .locals 25
    .param p1, "focus"    # Landroid/view/View;
    .param p2, "direction"    # F
    .param p3, "angle"    # F

    .prologue
    .line 355
    if-nez p1, :cond_1

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->setFocus(Landroid/view/View;)V

    .line 389
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/dreams/phototable/PhotoTable;->getFocus()Landroid/view/View;

    move-result-object v20

    :goto_1
    return-object v20

    .line 358
    :cond_1
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 359
    .local v5, "alpha":D
    const/high16 v20, 0x43340000

    move/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v20

    const/high16 v21, 0x40000000

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 360
    .local v11, "beta":D
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [D

    move-object/from16 v18, v0

    const/16 v20, 0x0

    sub-double v21, v5, v11

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    aput-wide v21, v18, v20

    const/16 v20, 0x1

    sub-double v21, v5, v11

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    aput-wide v21, v18, v20

    .line 362
    .local v18, "left":[D
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [D

    move-object/from16 v19, v0

    const/16 v20, 0x0

    add-double v21, v5, v11

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    aput-wide v21, v19, v20

    const/16 v20, 0x1

    add-double v21, v5, v11

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    aput-wide v21, v19, v20

    .line 364
    .local v19, "right":[D
    invoke-direct/range {p0 .. p1}, Lcom/android/dreams/phototable/PhotoTable;->getCenter(Landroid/view/View;)[D

    move-result-object v4

    .line 365
    .local v4, "a":[D
    const/4 v10, 0x0

    .line 366
    .local v10, "bestFocus":Landroid/view/View;
    const-wide v8, 0x7fefffffffffffffL

    .line 367
    .local v8, "bestDistance":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 368
    .local v13, "candidate":Landroid/view/View;
    move-object/from16 v0, p1

    if-eq v13, v0, :cond_2

    .line 369
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/dreams/phototable/PhotoTable;->getCenter(Landroid/view/View;)[D

    move-result-object v7

    .line 370
    .local v7, "b":[D
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v14, v0, [D

    const/16 v20, 0x0

    const/16 v21, 0x0

    aget-wide v21, v7, v21

    const/16 v23, 0x0

    aget-wide v23, v4, v23

    sub-double v21, v21, v23

    aput-wide v21, v14, v20

    const/16 v20, 0x1

    const/16 v21, 0x1

    aget-wide v21, v7, v21

    const/16 v23, 0x1

    aget-wide v23, v4, v23

    sub-double v21, v21, v23

    aput-wide v21, v14, v20

    .line 372
    .local v14, "delta":[D
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lcom/android/dreams/phototable/PhotoTable;->cross([D[D)D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/android/dreams/phototable/PhotoTable;->cross([D[D)D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_2

    .line 373
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/dreams/phototable/PhotoTable;->norm([D)D

    move-result-wide v15

    .line 374
    .local v15, "distance":D
    cmpl-double v20, v8, v15

    if-lez v20, :cond_2

    .line 375
    move-wide v8, v15

    .line 376
    move-object v10, v13

    goto :goto_2

    .line 381
    .end local v7    # "b":[D
    .end local v13    # "candidate":Landroid/view/View;
    .end local v14    # "delta":[D
    .end local v15    # "distance":D
    :cond_3
    if-nez v10, :cond_4

    .line 382
    const/high16 v20, 0x43340000

    cmpg-float v20, p3, v20

    if-gez v20, :cond_0

    .line 383
    const/high16 v20, 0x43340000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dreams/phototable/PhotoTable;->moveFocus(Landroid/view/View;FF)Landroid/view/View;

    move-result-object v20

    goto/16 :goto_1

    .line 386
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/dreams/phototable/PhotoTable;->setFocus(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public moveToTopOfPile(Landroid/view/View;)V
    .locals 1
    .param p1, "photo"    # Landroid/view/View;

    .prologue
    .line 660
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->isInBackground(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 665
    :goto_0
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->invalidate()V

    .line 666
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 667
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 668
    return-void

    .line 663
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 171
    const v0, 0x7f0a0187

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/PhotoTable;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mBackground:Landroid/view/ViewGroup;

    .line 172
    const v0, 0x7f0a0186

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/PhotoTable;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mStageLeft:Landroid/view/ViewGroup;

    .line 173
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mEdgeSwipeDetector:Lcom/android/dreams/phototable/EdgeSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/dreams/phototable/EdgeSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mDragGestureDetector:Lcom/android/dreams/phototable/DragGestureDetector;

    invoke-virtual {v0, p1}, Lcom/android/dreams/phototable/DragGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mKeyboardInterpreter:Lcom/android/dreams/phototable/KeyboardInterpreter;

    invoke-virtual {v0, p1, p2}, Lcom/android/dreams/phototable/KeyboardInterpreter;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 419
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 420
    const-string v5, "onLayout (%d, %d, %d, %d)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    sub-int v5, p5, p3

    iput v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mHeight:I

    .line 423
    sub-int v5, p4, p2

    iput v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mWidth:I

    .line 425
    iget v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mImageRatio:F

    iget v6, p0, Lcom/android/dreams/phototable/PhotoTable;->mWidth:I

    iget v7, p0, Lcom/android/dreams/phototable/PhotoTable;->mHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mLongSide:I

    .line 426
    iget v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mImageRatio:F

    iget v6, p0, Lcom/android/dreams/phototable/PhotoTable;->mWidth:I

    iget v7, p0, Lcom/android/dreams/phototable/PhotoTable;->mHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mShortSide:I

    .line 428
    iget v5, p0, Lcom/android/dreams/phototable/PhotoTable;->mWidth:I

    iget v6, p0, Lcom/android/dreams/phototable/PhotoTable;->mHeight:I

    if-le v5, v6, :cond_1

    .line 429
    .local v1, "isLandscape":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/dreams/phototable/PhotoTable;->mIsLandscape:Z

    if-eq v4, v1, :cond_5

    .line 430
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 431
    .local v2, "photo":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getSelection()Landroid/view/View;

    move-result-object v4

    if-eq v2, v4, :cond_0

    .line 432
    invoke-virtual {p0, v2}, Lcom/android/dreams/phototable/PhotoTable;->dropOnTable(Landroid/view/View;)V

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "isLandscape":Z
    .end local v2    # "photo":Landroid/view/View;
    :cond_1
    move v1, v4

    .line 428
    goto :goto_0

    .line 435
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "isLandscape":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->hasSelection()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 436
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getSelection()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/dreams/phototable/PhotoTable;->pickUp(Landroid/view/View;)V

    .line 437
    const/4 v3, 0x0

    .local v3, "slot":I
    :goto_2
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 438
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    aget-object v4, v4, v3

    if-eqz v4, :cond_3

    .line 439
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-direct {p0, v4, v3}, Lcom/android/dreams/phototable/PhotoTable;->placeOnDeck(Landroid/view/View;I)V

    .line 437
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 443
    .end local v3    # "slot":I
    :cond_4
    iput-boolean v1, p0, Lcom/android/dreams/phototable/PhotoTable;->mIsLandscape:Z

    .line 445
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->start()V

    .line 446
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 405
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->clearSelection()V

    .line 412
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 414
    :goto_1
    return v0

    .line 408
    :cond_1
    iget-boolean v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mTapToExit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mDream:Landroid/service/dreams/DreamService;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mDream:Landroid/service/dreams/DreamService;

    invoke-virtual {v0}, Landroid/service/dreams/DreamService;->finish()V

    goto :goto_0

    .line 414
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public photoOffTable(Landroid/view/View;)Z
    .locals 1
    .param p1, "photo"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 784
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/dreams/phototable/PhotoTable;->photoOffTable(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public photoOffTable(Landroid/view/View;II)Z
    .locals 4
    .param p1, "photo"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const/4 v3, 0x0

    .line 788
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 789
    .local v0, "hit":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 790
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 791
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public refreshFocus()V
    .locals 1

    .prologue
    .line 974
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mMaxFocusTime:I

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/PhotoTable;->scheduleFocusReaper(I)V

    .line 975
    return-void
.end method

.method public refreshSelection()V
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mMaxFocusTime:I

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/PhotoTable;->scheduleSelectionReaper(I)V

    .line 966
    return-void
.end method

.method public scheduleFocusReaper(I)V
    .locals 3
    .param p1, "delay"    # I

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mFocusReaper:Lcom/android/dreams/phototable/PhotoTable$FocusReaper;

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/PhotoTable;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 979
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mFocusReaper:Lcom/android/dreams/phototable/PhotoTable$FocusReaper;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/dreams/phototable/PhotoTable;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 980
    return-void
.end method

.method public scheduleNext(I)V
    .locals 3
    .param p1, "delay"    # I

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mLauncher:Lcom/android/dreams/phototable/PhotoTable$Launcher;

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/PhotoTable;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 984
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mLauncher:Lcom/android/dreams/phototable/PhotoTable$Launcher;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/dreams/phototable/PhotoTable;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 985
    return-void
.end method

.method public scheduleSelectionReaper(I)V
    .locals 3
    .param p1, "delay"    # I

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelectionReaper:Lcom/android/dreams/phototable/PhotoTable$SelectionReaper;

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/PhotoTable;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 970
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelectionReaper:Lcom/android/dreams/phototable/PhotoTable$SelectionReaper;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/dreams/phototable/PhotoTable;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 971
    return-void
.end method

.method public selectNext()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 221
    iget-boolean v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mStoryModeEnabled:Z

    if-eqz v0, :cond_1

    .line 222
    const-string v0, "selectNext"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelection:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/dreams/phototable/PhotoTable;->placeOnDeck(Landroid/view/View;I)V

    .line 225
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelection:Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 227
    invoke-direct {p0}, Lcom/android/dreams/phototable/PhotoTable;->promoteSelection()V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->clearSelection()V

    goto :goto_0
.end method

.method public selectPrevious()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-boolean v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mStoryModeEnabled:Z

    if-eqz v0, :cond_1

    .line 236
    const-string v0, "selectPrevious"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelection:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->placeOnDeck(Landroid/view/View;I)V

    .line 239
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelection:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 241
    invoke-direct {p0}, Lcom/android/dreams/phototable/PhotoTable;->promoteSelection()V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->clearSelection()V

    goto :goto_0
.end method

.method public setDefaultFocus()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/PhotoTable;->setFocus(Landroid/view/View;)V

    .line 287
    return-void
.end method

.method public setDream(Landroid/service/dreams/DreamService;)V
    .locals 0
    .param p1, "dream"    # Landroid/service/dreams/DreamService;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable;->mDream:Landroid/service/dreams/DreamService;

    .line 177
    return-void
.end method

.method public setFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "focus"    # Landroid/view/View;

    .prologue
    .line 290
    sget-boolean v0, Lcom/android/dreams/phototable/PhotoTable;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->clearFocus()V

    .line 292
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable;->mFocus:Landroid/view/View;

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/PhotoTable;->moveToTopOfPile(Landroid/view/View;)V

    .line 294
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/dreams/phototable/PhotoTable;->setHighlight(Landroid/view/View;Z)V

    .line 295
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mMaxFocusTime:I

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/PhotoTable;->scheduleFocusReaper(I)V

    .line 296
    return-void
.end method

.method public setHighlight(Landroid/view/View;Z)V
    .locals 5
    .param p1, "photo"    # Landroid/view/View;
    .param p2, "highlighted"    # Z

    .prologue
    const/4 v2, 0x1

    .line 946
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 947
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 948
    .local v1, "layers":Landroid/graphics/drawable/LayerDrawable;
    if-eqz p2, :cond_0

    .line 949
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/dreams/phototable/PhotoTable;->mHighlightColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 953
    :goto_0
    return-void

    .line 951
    :cond_0
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public setSelection(Landroid/view/View;)V
    .locals 1
    .param p1, "selected"    # Landroid/view/View;

    .prologue
    .line 210
    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTable;->clearSelection()V

    .line 212
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelection:Landroid/view/View;

    .line 213
    invoke-direct {p0}, Lcom/android/dreams/phototable/PhotoTable;->promoteSelection()V

    .line 214
    iget-boolean v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mStoryModeEnabled:Z

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mSelection:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/PhotoTable;->fadeOutBackground(Landroid/view/View;)V

    .line 218
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 957
    iget-boolean v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mStarted:Z

    if-nez v0, :cond_0

    .line 958
    const-string v0, "kick it"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dreams/phototable/PhotoTable;->mStarted:Z

    .line 960
    invoke-virtual {p0, v2}, Lcom/android/dreams/phototable/PhotoTable;->scheduleNext(I)V

    .line 962
    :cond_0
    return-void
.end method
