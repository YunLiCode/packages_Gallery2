.class public final Lcom/google/android/pano/widget/InputDeviceProfile;
.super Ljava/lang/Object;
.source "InputDeviceProfile.java"


# instance fields
.field protected mBlockMovementOnKeyDown:Z

.field protected mGenerateDpadCenter:Z

.field protected mGenerateFling:Z

.field protected mOverShootProtection:F

.field protected mThreshold:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getProfile(Landroid/view/InputDevice;)Lcom/google/android/pano/widget/InputDeviceProfile;
    .locals 6
    .param p0, "device"    # Landroid/view/InputDevice;

    .prologue
    const v5, 0x3e99999a

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/google/android/pano/widget/InputDeviceProfile;

    invoke-direct {v0}, Lcom/google/android/pano/widget/InputDeviceProfile;-><init>()V

    .line 49
    .local v0, "profile":Lcom/google/android/pano/widget/InputDeviceProfile;
    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "athome_remote"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v1

    const/high16 v2, 0x40a00000

    div-float/2addr v1, v2

    iput v1, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mThreshold:F

    .line 52
    iput v5, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mOverShootProtection:F

    .line 57
    iput-boolean v3, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mGenerateDpadCenter:Z

    .line 58
    iput-boolean v4, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mGenerateFling:Z

    .line 59
    iput-boolean v4, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mBlockMovementOnKeyDown:Z

    .line 68
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v1

    const v2, 0x40c66666

    div-float/2addr v1, v2

    iput v1, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mThreshold:F

    .line 63
    iput v5, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mOverShootProtection:F

    .line 64
    iput-boolean v4, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mGenerateDpadCenter:Z

    .line 65
    iput-boolean v4, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mGenerateFling:Z

    .line 66
    iput-boolean v3, v0, Lcom/google/android/pano/widget/InputDeviceProfile;->mBlockMovementOnKeyDown:Z

    goto :goto_0
.end method


# virtual methods
.method public getBlockMovementOnKeyDown()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/android/pano/widget/InputDeviceProfile;->mBlockMovementOnKeyDown:Z

    return v0
.end method

.method public getGenerateDpadCenter()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/pano/widget/InputDeviceProfile;->mGenerateDpadCenter:Z

    return v0
.end method

.method public getGenerateFling()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/pano/widget/InputDeviceProfile;->mGenerateFling:Z

    return v0
.end method

.method public getOvershootProtection()F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/pano/widget/InputDeviceProfile;->mOverShootProtection:F

    return v0
.end method

.method public getThreshold()F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/android/pano/widget/InputDeviceProfile;->mThreshold:F

    return v0
.end method
