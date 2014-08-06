.class public Lcom/android/gallery3d/app/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"

# interfaces
.implements Lcom/android/gallery3d/ui/OrientationSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mOrientationListener:Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;

.field private mOrientationLocked:Z

.field private mRotationLockedSetting:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mRotationLockedSetting:Z

    .line 47
    iput-object p1, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    .line 48
    new-instance v0, Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;-><init>(Lcom/android/gallery3d/app/OrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationListener:Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;

    .line 49
    return-void
.end method

.method static synthetic access$000(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/android/gallery3d/app/OrientationManager;->roundOrientation(II)I

    move-result v0

    return v0
.end method

.method private calculateCurrentScreenOrientation()I
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/android/gallery3d/app/OrientationManager;->getDisplayRotation()I

    move-result v0

    .line 94
    .local v0, "displayRotation":I
    const/16 v4, 0xb4

    if-ge v0, v4, :cond_0

    move v1, v2

    .line 95
    .local v1, "standard":Z
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 97
    if-eqz v1, :cond_1

    .line 108
    :goto_1
    return v3

    .end local v1    # "standard":Z
    :cond_0
    move v1, v3

    .line 94
    goto :goto_0

    .line 97
    .restart local v1    # "standard":Z
    :cond_1
    const/16 v3, 0x8

    goto :goto_1

    .line 101
    :cond_2
    const/16 v4, 0x5a

    if-eq v0, v4, :cond_3

    const/16 v4, 0x10e

    if-ne v0, v4, :cond_4

    .line 106
    :cond_3
    if-nez v1, :cond_5

    move v1, v2

    .line 108
    :cond_4
    :goto_2
    if-eqz v1, :cond_6

    :goto_3
    move v3, v2

    goto :goto_1

    :cond_5
    move v1, v3

    .line 106
    goto :goto_2

    .line 108
    :cond_6
    const/16 v2, 0x9

    goto :goto_3
.end method

.method private static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 158
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_0
    :pswitch_0
    return v1

    .line 160
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 161
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 162
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static roundOrientation(II)I
    .locals 3
    .param p0, "orientation"    # I
    .param p1, "orientationHistory"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "changeOrientation":Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 143
    const/4 v0, 0x1

    .line 149
    :goto_0
    if-eqz v0, :cond_0

    .line 150
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    .line 152
    .end local p1    # "orientationHistory":I
    :cond_0
    return p1

    .line 145
    .restart local p1    # "orientationHistory":I
    :cond_1
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 146
    .local v1, "dist":I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 147
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCompensation()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/gallery3d/app/OrientationManager;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public lockOrientation()V
    .locals 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    .line 75
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ORIENTATION_LOCK:Z

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/gallery3d/app/OrientationManager;->calculateCurrentScreenOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationListener:Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;->disable()V

    .line 60
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    iget-object v3, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mRotationLockedSetting:Z

    .line 55
    iget-object v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationListener:Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;->enable()V

    .line 56
    return-void

    :cond_0
    move v1, v2

    .line 53
    goto :goto_0
.end method

.method public unlockOrientation()V
    .locals 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    .line 87
    const-string v0, "OrientationManager"

    const-string v1, "unlock orientation"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
