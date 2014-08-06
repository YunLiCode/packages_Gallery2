.class public final Lcom/google/android/pano/widget/TrackpadNavigation;
.super Ljava/lang/Object;
.source "TrackpadNavigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;,
        Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;,
        Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;
    }
.end annotation


# static fields
.field private static final sFinishEvent:Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;

.field private static sInverseX:Z

.field private static sInverseY:Z

.field private static final sStartEvent:Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;

.field private static sTempRect:Landroid/graphics/Rect;

.field private static sVelocitySensitivityEnabled:Z

.field private static sVisualIndicator:Z


# instance fields
.field private mAlwaysInTapRegion:Z

.field private mBlockMovementKeyUpTime:J

.field private mBlockMovementOnKeyDown:Z

.field private mBoxCenterX:F

.field private mBoxCenterY:F

.field private mCurrentX:F

.field private mCurrentY:F

.field private mDynamicSensitivityX:F

.field private mDynamicSensitivityY:F

.field private mFirstTrackingTs:J

.field private mFlingMinimalDistance:F

.field private mGenerateFling:Z

.field private mInBlockMovementOnKeyDown:Z

.field private mInitialBoxCenterX:F

.field private mInitialBoxCenterY:F

.field private mLastDeviceId:I

.field private mLockAxis:Z

.field private mLockAxisBias:F

.field private mLockedAxis:I

.field private mLockedAxisTime:J

.field private mMaximumFlingVelocity:F

.field private mMinimumFlingVelocity:F

.field private mOvershootProtection:F

.field private mSensitivityX:F

.field private mSensitivityY:F

.field private mThreshold:F

.field private mThresholdSquared:F

.field private mTmpRectF:Landroid/graphics/RectF;

.field private mTotalSwipes:I

.field private mTouchSlop:F

.field private mTouchSlopSquared:F

.field private mTracking:Z

.field private mTrackingPointerId:I

.field private mTranslateDpadCenter:Z

.field private mVelocitySensitivity:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mView:Landroid/view/View;

.field private mVisualFlingDirection:I

.field private mVisualFlingType:I

.field private mVisualPaint:Landroid/graphics/Paint;

.field private mVisualScale:F

.field private mXSwipes:I

.field private mXSwipesLastDirection:I

.field private mYSwipes:I

.field private mYSwipesLastDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;

    invoke-direct {v0, v3}, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;-><init>(I)V

    sput-object v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sStartEvent:Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;

    .line 73
    new-instance v0, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;-><init>(I)V

    sput-object v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sFinishEvent:Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;

    .line 182
    sput-boolean v3, Lcom/google/android/pano/widget/TrackpadNavigation;->sVelocitySensitivityEnabled:Z

    .line 188
    sput-boolean v2, Lcom/google/android/pano/widget/TrackpadNavigation;->sInverseX:Z

    .line 189
    sput-boolean v2, Lcom/google/android/pano/widget/TrackpadNavigation;->sInverseY:Z

    .line 215
    sput-boolean v2, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    .line 255
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    .line 257
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/high16 v2, 0x3e800000

    iput v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    .line 219
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTmpRectF:Landroid/graphics/RectF;

    .line 221
    iput v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    .line 249
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    .line 258
    iput-object p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 260
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 261
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    const/high16 v2, 0x42c80000

    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/TrackpadNavigation;->setThreshold(F)V

    .line 262
    iput v4, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityX:F

    .line 263
    iput v4, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityY:F

    .line 264
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->resetBiasValues()V

    .line 265
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->resetVelocityValues()V

    .line 266
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->calculateDynamicSensitivityValues()V

    .line 269
    iput v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastDeviceId:I

    .line 270
    iput-boolean v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    .line 271
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sInverseX:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sInverseY:Z

    return v0
.end method

.method private calculateDynamicSensitivityValues()V
    .locals 2

    .prologue
    .line 670
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityX:F

    mul-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    .line 672
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityY:F

    mul-float/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    .line 674
    sget-boolean v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sVelocitySensitivityEnabled:Z

    if-eqz v0, :cond_0

    .line 675
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocitySensitivity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    .line 676
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocitySensitivity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    .line 678
    :cond_0
    return-void

    .line 670
    :cond_1
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityX:F

    goto :goto_0

    .line 672
    :cond_2
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityY:F

    goto :goto_1
.end method

.method private configureDeviceMetrics(Landroid/view/InputDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/view/InputDevice;

    .prologue
    .line 382
    invoke-static {p1}, Lcom/google/android/pano/widget/InputDeviceProfile;->getProfile(Landroid/view/InputDevice;)Lcom/google/android/pano/widget/InputDeviceProfile;

    move-result-object v0

    .line 386
    .local v0, "profile":Lcom/google/android/pano/widget/InputDeviceProfile;
    invoke-virtual {v0}, Lcom/google/android/pano/widget/InputDeviceProfile;->getGenerateDpadCenter()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTranslateDpadCenter:Z

    .line 387
    invoke-virtual {v0}, Lcom/google/android/pano/widget/InputDeviceProfile;->getThreshold()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/TrackpadNavigation;->setThreshold(F)V

    .line 388
    invoke-virtual {v0}, Lcom/google/android/pano/widget/InputDeviceProfile;->getOvershootProtection()F

    move-result v2

    iput v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mOvershootProtection:F

    .line 389
    invoke-virtual {v0}, Lcom/google/android/pano/widget/InputDeviceProfile;->getGenerateFling()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mGenerateFling:Z

    .line 390
    invoke-virtual {v0}, Lcom/google/android/pano/widget/InputDeviceProfile;->getBlockMovementOnKeyDown()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBlockMovementOnKeyDown:Z

    .line 391
    sget-boolean v2, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-eqz v2, :cond_0

    .line 392
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 393
    .local v1, "size":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 394
    const/high16 v2, 0x3e800000

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    .line 397
    .end local v1    # "size":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method private static dispatchEvent(Landroid/view/View;Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "event"    # Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;

    .prologue
    .line 442
    :goto_0
    if-eqz p0, :cond_1

    .line 443
    instance-of v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 444
    check-cast v0, Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;

    invoke-interface {v0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;->onNavigationEvent(Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const/4 v0, 0x1

    .line 454
    :goto_1
    return v0

    .line 448
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 449
    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p0

    .restart local p0    # "view":Landroid/view/View;
    goto :goto_0

    .line 454
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private dispatchKeyEvent(JIIII)V
    .locals 15
    .param p1, "time"    # J
    .param p3, "key"    # I
    .param p4, "metaState"    # I
    .param p5, "source"    # I
    .param p6, "deviceId"    # I

    .prologue
    .line 682
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x400

    move-wide/from16 v1, p1

    move-wide/from16 v3, p1

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p6

    move/from16 v12, p5

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 685
    .local v0, "kv":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    .line 686
    .local v14, "rootView":Landroid/view/View;
    invoke-virtual {v14, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v13

    .line 687
    .local v13, "dpadKeyEventHandled":Z
    if-nez v13, :cond_0

    .line 688
    invoke-static/range {p3 .. p3}, Lcom/google/android/pano/widget/TrackpadNavigation;->getDirection(I)I

    move-result v1

    invoke-static {v14, v1}, Lcom/google/android/pano/widget/TrackpadNavigation;->requestAutoFocus(Landroid/view/View;I)V

    .line 690
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0    # "kv":Landroid/view/KeyEvent;
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x400

    move-wide/from16 v1, p1

    move-wide/from16 v3, p1

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p6

    move/from16 v12, p5

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 693
    .restart local v0    # "kv":Landroid/view/KeyEvent;
    invoke-virtual {v14, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 694
    return-void
.end method

.method private finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 410
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    .line 411
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    .line 412
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTotalSwipes:I

    .line 413
    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    .line 414
    iget-object v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 418
    :cond_0
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->resetVelocityValues()V

    .line 419
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->calculateDynamicSensitivityValues()V

    .line 420
    return-void
.end method

.method private static getAxis(I)I
    .locals 1
    .param p0, "dpadKey"    # I

    .prologue
    .line 799
    packed-switch p0, :pswitch_data_0

    .line 807
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 802
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 805
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDirection(I)I
    .locals 1
    .param p0, "dpadKey"    # I

    .prologue
    .line 815
    packed-switch p0, :pswitch_data_0

    .line 825
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 817
    :pswitch_0
    const/16 v0, 0x11

    goto :goto_0

    .line 819
    :pswitch_1
    const/16 v0, 0x42

    goto :goto_0

    .line 821
    :pswitch_2
    const/16 v0, 0x21

    goto :goto_0

    .line 823
    :pswitch_3
    const/16 v0, 0x82

    goto :goto_0

    .line 815
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getKey(FF)I
    .locals 7
    .param p0, "deltaX"    # F
    .param p1, "deltaY"    # F

    .prologue
    const/16 v1, 0x16

    const/16 v0, 0x15

    const/16 v3, 0x14

    const/16 v2, 0x13

    const/4 v6, 0x0

    .line 782
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 783
    cmpl-float v2, p0, v6

    if-lez v2, :cond_1

    .line 784
    sget-boolean v2, Lcom/google/android/pano/widget/TrackpadNavigation;->sInverseX:Z

    if-eqz v2, :cond_0

    .line 795
    .local v0, "key":I
    :goto_0
    return v0

    .end local v0    # "key":I
    :cond_0
    move v0, v1

    .line 784
    goto :goto_0

    .line 786
    :cond_1
    sget-boolean v2, Lcom/google/android/pano/widget/TrackpadNavigation;->sInverseX:Z

    if-eqz v2, :cond_2

    move v0, v1

    .restart local v0    # "key":I
    :cond_2
    goto :goto_0

    .line 789
    .end local v0    # "key":I
    :cond_3
    cmpl-float v1, p1, v6

    if-lez v1, :cond_5

    .line 790
    sget-boolean v1, Lcom/google/android/pano/widget/TrackpadNavigation;->sInverseY:Z

    if-eqz v1, :cond_4

    move v0, v2

    .restart local v0    # "key":I
    :goto_1
    goto :goto_0

    .end local v0    # "key":I
    :cond_4
    move v0, v3

    goto :goto_1

    .line 792
    :cond_5
    sget-boolean v1, Lcom/google/android/pano/widget/TrackpadNavigation;->sInverseY:Z

    if-eqz v1, :cond_6

    move v0, v3

    .restart local v0    # "key":I
    :goto_2
    goto :goto_0

    .end local v0    # "key":I
    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method public static getVisualIndicator()Z
    .locals 1

    .prologue
    .line 994
    sget-boolean v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    return v0
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 423
    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    .line 424
    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterX:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterY:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    .line 427
    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 428
    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 429
    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    .line 430
    sget-boolean v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 436
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTrackingPointerId:I

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFirstTrackingTs:J

    .line 438
    iget-object v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    sget-object v1, Lcom/google/android/pano/widget/TrackpadNavigation;->sStartEvent:Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;

    invoke-static {v0, v1}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchEvent(Landroid/view/View;Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z

    .line 439
    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    if-nez v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTrackingPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 529
    .local v7, "index":I
    if-ltz v7, :cond_0

    .line 532
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 533
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleSingleMove(JFFLandroid/view/MotionEvent;)V

    .line 532
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 536
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleSingleMove(JFFLandroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private handlePointerUp(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 458
    iget-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    if-nez v0, :cond_0

    .line 482
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 462
    .local v7, "upPointerIndex":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTrackingPointerId:I

    if-ne v0, v1, :cond_3

    .line 464
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 465
    if-eq v6, v7, :cond_1

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterX:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterY:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    .line 469
    iput v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 470
    iput v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 471
    iput v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    .line 472
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTrackingPointerId:I

    .line 473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFirstTrackingTs:J

    .line 474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleSingleMove(JFFLandroid/view/MotionEvent;)V

    goto :goto_0

    .line 464
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 478
    :cond_2
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->finish()V

    goto :goto_0

    .line 481
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleSingleMove(JFFLandroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private handleSingleMove(JFFLandroid/view/MotionEvent;)V
    .locals 17
    .param p1, "eventTime"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 540
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    .line 541
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    .line 542
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    if-eqz v3, :cond_2

    .line 543
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBlockMovementKeyUpTime:J

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBlockMovementKeyUpTime:J

    sub-long v3, p1, v3

    const-wide/16 v7, 0x12c

    cmp-long v3, v3, v7

    if-lez v3, :cond_0

    .line 545
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    .line 547
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    if-eqz v3, :cond_2

    .line 548
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    .line 549
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    .line 641
    :cond_1
    :goto_0
    return-void

    .line 553
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxis:Z

    if-eqz v3, :cond_3

    .line 554
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 555
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxisTime:J

    sub-long v3, p1, v3

    const-wide/16 v7, 0x320

    cmp-long v3, v3, v7

    if-lez v3, :cond_3

    .line 556
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->resetBiasValues()V

    .line 557
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->calculateDynamicSensitivityValues()V

    .line 561
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    mul-float v13, v3, v4

    .line 562
    .local v13, "deltaX":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    mul-float v14, v3, v4

    .line 564
    .local v14, "deltaY":F
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFirstTrackingTs:J

    sub-long v3, p1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/pano/widget/TrackpadNavigation;->updateVelocitySensitivity(J)V

    .line 565
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->calculateDynamicSensitivityValues()V

    .line 566
    mul-float v3, v13, v13

    mul-float v4, v14, v14

    add-float v12, v3, v4

    .line 567
    .local v12, "deltaSquared":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTouchSlopSquared:F

    cmpl-float v3, v12, v3

    if-lez v3, :cond_4

    .line 568
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    .line 570
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThresholdSquared:F

    cmpl-float v3, v12, v3

    if-lez v3, :cond_7

    .line 571
    const/4 v15, 0x0

    .line 572
    .local v15, "dpadKeyEventHandled":Z
    invoke-static {v13, v14}, Lcom/google/android/pano/widget/TrackpadNavigation;->getKey(FF)I

    move-result v6

    .line 576
    .local v6, "key":I
    packed-switch v6, :pswitch_data_0

    .line 614
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTotalSwipes:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTotalSwipes:I

    .line 615
    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getSource()I

    move-result v8

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v9

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchKeyEvent(JIIII)V

    .line 618
    float-to-double v3, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v11, v3

    .line 619
    .local v11, "delta":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    mul-float/2addr v4, v13

    div-float/2addr v4, v11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mOvershootProtection:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    .line 621
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    mul-float/2addr v4, v14

    div-float/2addr v4, v11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mOvershootProtection:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    .line 623
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxis:Z

    if-eqz v3, :cond_7

    .line 624
    invoke-static {v6}, Lcom/google/android/pano/widget/TrackpadNavigation;->getAxis(I)I

    move-result v16

    .line 625
    .local v16, "lockAxis":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    move/from16 v0, v16

    if-eq v3, v0, :cond_c

    .line 626
    :cond_5
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    .line 627
    const v3, 0x3f4ccccd

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/pano/widget/TrackpadNavigation;->setBiasedValue(F)V

    .line 635
    :cond_6
    :goto_2
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxisTime:J

    .line 638
    .end local v6    # "key":I
    .end local v11    # "delta":F
    .end local v15    # "dpadKeyEventHandled":Z
    .end local v16    # "lockAxis":I
    :cond_7
    sget-boolean v3, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-eqz v3, :cond_1

    .line 639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 578
    .restart local v6    # "key":I
    .restart local v15    # "dpadKeyEventHandled":Z
    :pswitch_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    if-ltz v3, :cond_8

    .line 579
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 583
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 584
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    goto/16 :goto_1

    .line 581
    :cond_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    goto :goto_3

    .line 587
    :pswitch_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    if-gtz v3, :cond_9

    .line 588
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 592
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 593
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    goto/16 :goto_1

    .line 590
    :cond_9
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    goto :goto_4

    .line 596
    :pswitch_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    if-ltz v3, :cond_a

    .line 597
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 601
    :goto_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 602
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    goto/16 :goto_1

    .line 599
    :cond_a
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    goto :goto_5

    .line 605
    :pswitch_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    if-gtz v3, :cond_b

    .line 606
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 610
    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 611
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    goto/16 :goto_1

    .line 608
    :cond_b
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    goto :goto_6

    .line 629
    .restart local v11    # "delta":F
    .restart local v16    # "lockAxis":I
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    const v4, 0x3e4ccccd

    sub-float v10, v3, v4

    .line 630
    .local v10, "biasValue":F
    const v3, 0x3ecccccd

    cmpl-float v3, v10, v3

    if-ltz v3, :cond_6

    .line 631
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/pano/widget/TrackpadNavigation;->setBiasedValue(F)V

    .line 632
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->calculateDynamicSensitivityValues()V

    goto/16 :goto_2

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 697
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    if-nez v3, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 701
    .local v5, "eventTime":J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTranslateDpadCenter:Z

    if-eqz v3, :cond_3

    .line 703
    new-instance v2, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFirstTrackingTs:J

    const/4 v7, 0x0

    const/16 v8, 0x17

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x400

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v14

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 706
    .local v2, "kv":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 707
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2    # "kv":Landroid/view/KeyEvent;
    const/4 v7, 0x1

    const/16 v8, 0x17

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x400

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v14

    move-wide v3, v5

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 710
    .restart local v2    # "kv":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 752
    .end local v2    # "kv":Landroid/view/KeyEvent;
    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->finish()V

    .line 753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    sget-object v4, Lcom/google/android/pano/widget/TrackpadNavigation;->sFinishEvent:Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;

    invoke-static {v3, v4}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchEvent(Landroid/view/View;Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z

    .line 754
    sget-boolean v3, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-eqz v3, :cond_0

    .line 755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 711
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mGenerateFling:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    if-nez v3, :cond_2

    .line 712
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTrackingPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v19

    .line 713
    .local v19, "index":I
    if-ltz v19, :cond_0

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    .line 718
    .local v20, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mMaximumFlingVelocity:F

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 719
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v9

    .line 720
    .local v9, "velocityY":F
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    .line 721
    .local v8, "velocityX":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterX:F

    sub-float/2addr v4, v10

    mul-float v17, v3, v4

    .line 722
    .local v17, "deltax":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterY:F

    sub-float/2addr v4, v10

    mul-float v18, v3, v4

    .line 727
    .local v18, "deltay":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mMinimumFlingVelocity:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingMinimalDistance:F

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_5

    :cond_4
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mMinimumFlingVelocity:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_6

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingMinimalDistance:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 734
    :cond_5
    new-instance v7, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    invoke-direct/range {v7 .. v15}, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;-><init>(FFIIFFII)V

    .line 737
    .local v7, "evt":Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingType:I

    .line 738
    iget v3, v7, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->direction:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    .line 739
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-static {v3, v7}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchEvent(Landroid/view/View;Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z

    goto/16 :goto_1

    .line 740
    .end local v7    # "evt":Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTotalSwipes:I

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFirstTrackingTs:J

    sub-long v3, v5, v3

    const-wide/16 v10, 0xc8

    cmp-long v3, v3, v10

    if-gez v3, :cond_2

    .line 742
    invoke-static/range {v17 .. v18}, Lcom/google/android/pano/widget/TrackpadNavigation;->getKey(FF)I

    move-result v13

    .line 746
    .local v13, "key":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingType:I

    .line 747
    invoke-static {v13}, Lcom/google/android/pano/widget/TrackpadNavigation;->getDirection(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    .line 748
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    move-object/from16 v10, p0

    move-wide v11, v5

    invoke-direct/range {v10 .. v16}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchKeyEvent(JIIII)V

    goto/16 :goto_1
.end method

.method public static requestAutoFocus(Landroid/view/View;I)V
    .locals 4
    .param p0, "rootView"    # Landroid/view/View;
    .param p1, "direction"    # I

    .prologue
    .line 830
    if-nez p0, :cond_1

    .line 854
    .end local p0    # "rootView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 834
    .restart local p0    # "rootView":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 835
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0, p1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 837
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_3

    .line 841
    sget-object v2, Lcom/google/android/pano/widget/TrackpadNavigation;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 842
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v2, p0

    .line 843
    check-cast v2, Landroid/view/ViewGroup;

    sget-object v3, Lcom/google/android/pano/widget/TrackpadNavigation;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 845
    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "rootView":Landroid/view/View;
    sget-object v2, Lcom/google/android/pano/widget/TrackpadNavigation;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 848
    :cond_2
    sget-object v2, Lcom/google/android/pano/widget/TrackpadNavigation;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    goto :goto_0

    .line 852
    .restart local p0    # "rootView":Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method private resetBiasValues()V
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    .line 401
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    .line 402
    const/high16 v0, 0x3f800000

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/TrackpadNavigation;->setBiasedValue(F)V

    .line 403
    return-void
.end method

.method private resetVelocityValues()V
    .locals 1

    .prologue
    .line 406
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocitySensitivity:F

    .line 407
    return-void
.end method

.method private setBiasedValue(F)V
    .locals 0
    .param p1, "biasedValue"    # F

    .prologue
    .line 644
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    .line 645
    return-void
.end method

.method private updateVelocitySensitivity(J)V
    .locals 9
    .param p1, "elapsedTime"    # J

    .prologue
    const/high16 v8, 0x3f800000

    .line 648
    sget-boolean v4, Lcom/google/android/pano/widget/TrackpadNavigation;->sVelocitySensitivityEnabled:Z

    if-eqz v4, :cond_0

    const-wide/16 v4, 0xc8

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iget-object v4, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 652
    .local v2, "xv":F
    iget-object v4, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 653
    .local v3, "yv":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget v6, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    float-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 654
    .local v1, "v":F
    const v4, 0x3eaaaaab

    mul-float v0, v1, v4

    .line 655
    .local v0, "s":F
    cmpg-float v4, v0, v8

    if-gez v4, :cond_3

    .line 656
    const/high16 v0, 0x3f800000

    .line 660
    :cond_2
    :goto_1
    iget v4, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocitySensitivity:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_4

    .line 661
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocitySensitivity:F

    goto :goto_0

    .line 657
    :cond_3
    const/high16 v4, 0x40400000

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    .line 658
    const/high16 v0, 0x40400000

    goto :goto_1

    .line 663
    :cond_4
    iget v4, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocitySensitivity:F

    const v5, 0x3e19999a

    iget v6, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocitySensitivity:F

    sub-float v6, v0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocitySensitivity:F

    goto :goto_0
.end method


# virtual methods
.method public deliverGenericMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->finish()V

    .line 379
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-nez v1, :cond_1

    .line 346
    const-string v1, "TrackpadNavigation"

    const-string v2, "cannot handle event without device"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    .line 350
    .local v0, "deviceId":I
    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastDeviceId:I

    if-eq v0, v1, :cond_2

    .line 351
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->finish()V

    .line 352
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastDeviceId:I

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/TrackpadNavigation;->configureDeviceMetrics(Landroid/view/InputDevice;)V

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_3

    .line 359
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 361
    :cond_3
    iget-object v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 362
    sget-boolean v1, Lcom/google/android/pano/widget/TrackpadNavigation;->sVelocitySensitivityEnabled:Z

    if-eqz v1, :cond_4

    .line 363
    iget-object v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mMaximumFlingVelocity:F

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 365
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 367
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 370
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 373
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 376
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x42

    const/16 v3, 0x17

    .line 760
    iget-boolean v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBlockMovementOnKeyDown:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    iget v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastDeviceId:I

    if-ne v1, v2, :cond_0

    .line 761
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 762
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 778
    .end local v0    # "keyCode":I
    :cond_0
    :goto_0
    return-void

    .line 764
    .restart local v0    # "keyCode":I
    :pswitch_0
    if-eq v0, v3, :cond_1

    if-ne v0, v4, :cond_0

    .line 766
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    .line 767
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBlockMovementKeyUpTime:J

    goto :goto_0

    .line 771
    :pswitch_1
    if-eq v0, v3, :cond_2

    if-ne v0, v4, :cond_0

    .line 773
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBlockMovementKeyUpTime:J

    goto :goto_0

    .line 762
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public drawVisualIndicator(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 857
    sget-boolean v1, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-nez v1, :cond_0

    .line 940
    :goto_0
    return-void

    .line 860
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 862
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    .line 863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42b00000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 865
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    add-int v10, v1, v2

    .line 866
    .local v10, "centerX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int v11, v1, v2

    .line 867
    .local v11, "centerY":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    if-eqz v1, :cond_2

    .line 868
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 869
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 870
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->getThreshold()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    mul-float v9, v1, v2

    .line 871
    .local v9, "boxRadius":F
    int-to-float v1, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->getBoxMovedX()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    mul-float/2addr v2, v3

    add-float v7, v1, v2

    .line 872
    .local v7, "boxCenterX":F
    int-to-float v1, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->getBoxMovedY()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    mul-float/2addr v2, v3

    add-float v8, v1, v2

    .line 873
    .local v8, "boxCenterY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v2, v9, v2

    sub-float v2, v7, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v3, v9, v3

    sub-float v3, v8, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v4, v9, v4

    add-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v5, v9, v5

    add-float/2addr v5, v8

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 877
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 879
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v2, v9, v2

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    sub-float v2, v7, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v3, v9, v3

    const v4, 0x3e4ccccd

    mul-float/2addr v3, v4

    sub-float v3, v8, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v4, v9, v4

    const v5, 0x3e4ccccd

    mul-float/2addr v4, v5

    add-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v5, v9, v5

    const v6, 0x3e4ccccd

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 884
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 886
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 887
    float-to-double v1, v9

    const-wide/high16 v3, 0x4000000000000000L

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-float v9, v1

    .line 888
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v1, v9, v1

    sub-float v2, v7, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v1, v9, v1

    sub-float v3, v8, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v1, v9, v1

    add-float v4, v7, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v1, v9, v1

    add-float v5, v8, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 892
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v1, v9, v1

    add-float v2, v7, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v1, v9, v1

    sub-float v3, v8, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v1, v9, v1

    sub-float v4, v7, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v1, v9, v1

    add-float v5, v8, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 896
    int-to-float v1, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->getPositionMovedX()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v2, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->getPositionMovedY()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40800000

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 899
    .end local v7    # "boxCenterX":F
    .end local v8    # "boxCenterY":F
    .end local v9    # "boxRadius":F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    if-eqz v1, :cond_5

    .line 900
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 901
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 902
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    if-eqz v1, :cond_4

    .line 903
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v12, v1, 0x8

    .line 904
    .local v12, "offset":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    if-lez v1, :cond_7

    add-int v1, v10, v12

    int-to-float v14, v1

    .line 905
    .local v14, "x":F
    :goto_1
    int-to-float v15, v11

    .line 906
    .local v15, "y":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 909
    .end local v12    # "offset":I
    .end local v14    # "x":F
    .end local v15    # "y":F
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    if-eqz v1, :cond_5

    .line 910
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v12, v1, 0x8

    .line 911
    .restart local v12    # "offset":I
    int-to-float v14, v10

    .line 912
    .restart local v14    # "x":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    if-lez v1, :cond_8

    add-int v1, v11, v12

    int-to-float v15, v1

    .line 913
    .restart local v15    # "y":F
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 917
    .end local v12    # "offset":I
    .end local v14    # "x":F
    .end local v15    # "y":F
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    if-eqz v1, :cond_6

    .line 918
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 919
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 920
    const-string v13, "unknown direction"

    .line 921
    .local v13, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    sparse-switch v1, :sswitch_data_0

    .line 935
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingType:I

    if-nez v1, :cond_9

    const-string v1, "short swipe "

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit16 v2, v10, -0xc8

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v11

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 939
    .end local v13    # "text":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 904
    .restart local v12    # "offset":I
    :cond_7
    sub-int v1, v10, v12

    int-to-float v14, v1

    goto/16 :goto_1

    .line 912
    .restart local v14    # "x":F
    :cond_8
    sub-int v1, v11, v12

    int-to-float v15, v1

    goto :goto_2

    .line 923
    .end local v12    # "offset":I
    .end local v14    # "x":F
    .restart local v13    # "text":Ljava/lang/String;
    :sswitch_0
    const-string v13, "left"

    .line 924
    goto :goto_3

    .line 926
    :sswitch_1
    const-string v13, "right"

    .line 927
    goto :goto_3

    .line 929
    :sswitch_2
    const-string v13, "up"

    .line 930
    goto :goto_3

    .line 932
    :sswitch_3
    const-string v13, "down"

    goto :goto_3

    .line 935
    :cond_9
    const-string v1, "long swipe "

    goto :goto_4

    .line 921
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public getBoxMovedX()F
    .locals 2

    .prologue
    .line 493
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getBoxMovedY()F
    .locals 2

    .prologue
    .line 497
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getPositionMovedX()F
    .locals 2

    .prologue
    .line 509
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getPositionMovedY()F
    .locals 2

    .prologue
    .line 513
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getThreshold()F
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    return v0
.end method

.method public setLockAxis(Z)V
    .locals 0
    .param p1, "lockAxis"    # Z

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxis:Z

    .line 324
    return-void
.end method

.method public setOvershootProtection(F)V
    .locals 1
    .param p1, "overshootProtection"    # F

    .prologue
    .line 299
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 302
    :cond_0
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mOvershootProtection:F

    .line 303
    return-void
.end method

.method public setSensitivityX(F)V
    .locals 1
    .param p1, "sensitivity"    # F

    .prologue
    .line 277
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 280
    :cond_0
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityX:F

    .line 281
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/TrackpadNavigation;->setBiasedValue(F)V

    .line 282
    return-void
.end method

.method public setSensitivityY(F)V
    .locals 1
    .param p1, "sensitivity"    # F

    .prologue
    .line 288
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 291
    :cond_0
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityY:F

    .line 292
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/TrackpadNavigation;->setBiasedValue(F)V

    .line 293
    return-void
.end method

.method public setThreshold(F)V
    .locals 2
    .param p1, "threshold"    # F

    .prologue
    .line 306
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    .line 307
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThresholdSquared:F

    .line 308
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    const/high16 v1, 0x40000000

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingMinimalDistance:F

    .line 309
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    const/high16 v1, 0x40a00000

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mMinimumFlingVelocity:F

    .line 310
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    const/high16 v1, 0x42c80000

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mMaximumFlingVelocity:F

    .line 311
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    const v1, 0x3e4ccccd

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTouchSlop:F

    .line 312
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTouchSlop:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTouchSlop:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTouchSlopSquared:F

    .line 313
    return-void
.end method
