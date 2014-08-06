.class public Lcom/android/camera/FocusOverlayManager;
.super Ljava/lang/Object;
.source "FocusOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusOverlayManager$MainHandler;,
        Lcom/android/camera/FocusOverlayManager$Listener;,
        Lcom/android/camera/FocusOverlayManager$FocusUI;
    }
.end annotation


# instance fields
.field private mAeAwbLock:Z

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mDisplayOrientation:I

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusDefault:Z

.field private mFocusMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field mListener:Lcom/android/camera/FocusOverlayManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mPreviousMoving:Z

.field private mState:I

.field private mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/FocusOverlayManager$FocusUI;)V
    .locals 1
    .param p1, "preferences"    # Lcom/android/camera/ComboPreferences;
    .param p2, "defaultFocusModes"    # [Ljava/lang/String;
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p4, "listener"    # Lcom/android/camera/FocusOverlayManager$Listener;
    .param p5, "mirror"    # Z
    .param p6, "looper"    # Landroid/os/Looper;
    .param p7, "ui"    # Lcom/android/camera/FocusOverlayManager$FocusUI;

    .prologue
    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 136
    new-instance v0, Lcom/android/camera/FocusOverlayManager$MainHandler;

    invoke-direct {v0, p0, p6}, Lcom/android/camera/FocusOverlayManager$MainHandler;-><init>(Lcom/android/camera/FocusOverlayManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    .line 138
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 139
    iput-object p2, p0, Lcom/android/camera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 140
    invoke-virtual {p0, p3}, Lcom/android/camera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 141
    iput-object p4, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    .line 142
    invoke-virtual {p0, p5}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusDefault:Z

    .line 144
    iput-object p7, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/FocusOverlayManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/FocusOverlayManager;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    return-void
.end method

.method private autoFocus()V
    .locals 2

    .prologue
    .line 395
    const-string v0, "CAM_FocusManager"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->autoFocus()V

    .line 397
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 400
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$FocusUI;->pauseFaceDetection()V

    .line 401
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 402
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 403
    return-void
.end method

.method private calculateTapArea(IIFLandroid/graphics/Rect;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "areaMultiple"    # F
    .param p4, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 515
    iget v4, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    iget v5, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    const/high16 v5, 0x41a00000

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 516
    .local v0, "areaSize":I
    sub-int v4, p1, v0

    iget v5, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    mul-int/lit8 v6, v0, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v7, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v1

    .line 517
    .local v1, "left":I
    sub-int v4, p2, v0

    iget v5, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    mul-int/lit8 v6, v0, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v7, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v3

    .line 519
    .local v3, "top":I
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, v3

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v1

    int-to-float v6, v6

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v3

    int-to-float v7, v7

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 520
    .local v2, "rectF":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 521
    invoke-static {v2, p4}, Lcom/android/camera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 522
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    const-string v0, "CAM_FocusManager"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 412
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 413
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$FocusUI;->resumeFaceDetection()V

    .line 414
    iput v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 415
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 416
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iput v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 422
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    :cond_0
    return-void
.end method

.method private initializeFocusAreas(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    .line 322
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_0
    const/high16 v1, 0x3f800000

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/camera/FocusOverlayManager;->calculateTapArea(IIFLandroid/graphics/Rect;)V

    .line 327
    return-void
.end method

.method private initializeMeteringAreas(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    .line 333
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_0
    const/high16 v1, 0x3fc00000

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/camera/FocusOverlayManager;->calculateTapArea(IIFLandroid/graphics/Rect;)V

    .line 340
    return-void
.end method

.method private lockAeAwbIfNeeded()V
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 194
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 196
    :cond_0
    return-void
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "focusMode":Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMatrix()V
    .locals 5

    .prologue
    .line 179
    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    if-eqz v1, :cond_0

    .line 180
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 181
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mMirror:Z

    iget v2, p0, Lcom/android/camera/FocusOverlayManager;->mDisplayOrientation:I

    iget v3, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 186
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 187
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    .line 189
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method private unlockAeAwbIfNeeded()V
    .locals 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 201
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method public doSnap()V
    .locals 2

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 243
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    goto :goto_0

    .line 244
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 248
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    goto :goto_0

    .line 249
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    goto :goto_0
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 427
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 460
    :goto_0
    return-object v3

    .line 428
    :cond_0
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v3, :cond_1

    const-string v3, "auto"

    goto :goto_0

    .line 429
    :cond_1
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 431
    .local v2, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusDefault:Z

    if-nez v3, :cond_4

    .line 433
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 450
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 453
    const-string v3, "auto"

    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 455
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 460
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 436
    :cond_4
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_focusmode_key"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 440
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 442
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 443
    .local v1, "mode":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 444
    iput-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 441
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 457
    .end local v0    # "i":I
    .end local v1    # "mode":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method getFocusState()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    return v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 529
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 533
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(ZZ)V
    .locals 4
    .param p1, "focused"    # Z
    .param p2, "shutterButtonPressed"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 259
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 263
    if-eqz p1, :cond_1

    .line 264
    iput v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 268
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 269
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    .line 293
    :cond_0
    :goto_1
    return-void

    .line 266
    :cond_1
    iput v3, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    goto :goto_0

    .line 270
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 274
    if-eqz p1, :cond_4

    .line 275
    iput v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 279
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 282
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusDefault:Z

    if-nez v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 285
    :cond_3
    if-eqz p2, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->lockAeAwbIfNeeded()V

    goto :goto_1

    .line 277
    :cond_4
    iput v3, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    goto :goto_2

    .line 289
    :cond_5
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onAutoFocusMoving(Z)V
    .locals 2
    .param p1, "moving"    # Z

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$FocusUI;->hasFaces()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$FocusUI;->clearFocus()V

    goto :goto_0

    .line 307
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_0

    .line 310
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviousMoving:Z

    if-nez v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$FocusUI;->onFocusStarted()V

    .line 315
    :cond_3
    :goto_1
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviousMoving:Z

    goto :goto_0

    .line 312
    :cond_4
    if-nez p1, :cond_3

    .line 313
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/FocusOverlayManager$FocusUI;->onFocusSucceeded(Z)V

    goto :goto_1
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 392
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 381
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 386
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 387
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 388
    return-void
.end method

.method public onShutterDown()V
    .locals 3

    .prologue
    .line 206
    iget-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const/4 v0, 0x0

    .line 209
    .local v0, "autoFocusCalled":Z
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 212
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->autoFocus()V

    .line 213
    const/4 v0, 0x1

    .line 217
    :cond_2
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->lockAeAwbIfNeeded()V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 227
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 233
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->unlockAeAwbIfNeeded()V

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 343
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusDefault:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 348
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 350
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    if-eqz v0, :cond_0

    .line 351
    iput-boolean v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusDefault:Z

    .line 353
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_4

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/android/camera/FocusOverlayManager;->initializeFocusAreas(II)V

    .line 357
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_5

    .line 358
    invoke-direct {p0, p1, p2}, Lcom/android/camera/FocusOverlayManager;->initializeMeteringAreas(II)V

    .line 362
    :cond_5
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/FocusOverlayManager$FocusUI;->setFocusPosition(II)V

    .line 365
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->stopFaceDetection()V

    .line 368
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 369
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_6

    .line 370
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->autoFocus()V

    goto :goto_0

    .line 372
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 374
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "focusMode"    # Ljava/lang/String;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 538
    return-void
.end method

.method public resetTouchFocus()V
    .locals 2

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 512
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$FocusUI;->clearFocus()V

    .line 504
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    .line 505
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/FocusOverlayManager;->initializeFocusAreas(II)V

    .line 508
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_2

    .line 509
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/FocusOverlayManager;->initializeMeteringAreas(II)V

    .line 511
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusDefault:Z

    goto :goto_0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 545
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 546
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .param p1, "displayOrientation"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/android/camera/FocusOverlayManager;->mDisplayOrientation:I

    .line 175
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->setMatrix()V

    .line 176
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mMirror:Z

    .line 170
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->setMatrix()V

    .line 171
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 154
    invoke-static {p1}, Lcom/android/camera/Util;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    .line 155
    invoke-static {p1}, Lcom/android/camera/Util;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringAreaSupported:Z

    .line 156
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setPreviewSize(II)V
    .locals 1
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    .prologue
    .line 161
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 162
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    .line 163
    iput p2, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    .line 164
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->setMatrix()V

    .line 166
    :cond_1
    return-void
.end method

.method public updateFocusUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 472
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_3

    .line 476
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusDefault:Z

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$FocusUI;->clearFocus()V

    goto :goto_0

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$FocusUI;->onFocusStarted()V

    goto :goto_0

    .line 484
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 485
    :cond_4
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$FocusUI;->onFocusStarted()V

    goto :goto_0

    .line 487
    :cond_5
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 489
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0, v2}, Lcom/android/camera/FocusOverlayManager$FocusUI;->onFocusSucceeded(Z)V

    goto :goto_0

    .line 490
    :cond_6
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 491
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0, v2}, Lcom/android/camera/FocusOverlayManager$FocusUI;->onFocusSucceeded(Z)V

    goto :goto_0

    .line 492
    :cond_7
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0, v2}, Lcom/android/camera/FocusOverlayManager$FocusUI;->onFocusFailed(Z)V

    goto :goto_0
.end method
