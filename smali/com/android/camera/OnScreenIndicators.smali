.class public Lcom/android/camera/OnScreenIndicators;
.super Ljava/lang/Object;
.source "OnScreenIndicators.java"


# instance fields
.field private final mExposureIndicator:Landroid/widget/ImageView;

.field private final mFlashIndicator:Landroid/widget/ImageView;

.field private final mLocationIndicator:Landroid/widget/ImageView;

.field private final mOnScreenIndicators:Landroid/view/View;

.field private final mSceneIndicator:Landroid/widget/ImageView;

.field private final mTimerIndicator:Landroid/widget/ImageView;

.field private final mWBArray:[I

.field private final mWBIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "onScreenIndicatorsView"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 45
    .local v1, "iconIds":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 46
    .local v2, "n":I
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/camera/OnScreenIndicators;->mWBArray:[I

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 48
    iget-object v3, p0, Lcom/android/camera/OnScreenIndicators;->mWBArray:[I

    const v4, 0x7f020101

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iput-object p2, p0, Lcom/android/camera/OnScreenIndicators;->mOnScreenIndicators:Landroid/view/View;

    .line 51
    const v3, 0x7f0a012d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/OnScreenIndicators;->mExposureIndicator:Landroid/widget/ImageView;

    .line 53
    const v3, 0x7f0a012c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    .line 55
    const v3, 0x7f0a012a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/OnScreenIndicators;->mSceneIndicator:Landroid/widget/ImageView;

    .line 57
    const v3, 0x7f0a012e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/OnScreenIndicators;->mLocationIndicator:Landroid/widget/ImageView;

    .line 59
    const v3, 0x7f0a012b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/OnScreenIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    .line 61
    const v3, 0x7f0a012f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/OnScreenIndicators;->mWBIndicator:Landroid/widget/ImageView;

    .line 63
    return-void
.end method


# virtual methods
.method public resetToDefault()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenIndicators;->updateExposureOnScreenIndicator(I)V

    .line 70
    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/android/camera/OnScreenIndicators;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 71
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Lcom/android/camera/OnScreenIndicators;->updateSceneOnScreenIndicator(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/OnScreenIndicators;->updateWBIndicator(I)V

    .line 73
    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenIndicators;->updateTimerIndicator(Z)V

    .line 74
    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenIndicators;->updateLocationIndicator(Z)V

    .line 75
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mOnScreenIndicators:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    return-void
.end method

.method public updateExposureOnScreenIndicator(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "id":I
    packed-switch p1, :pswitch_data_0

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/android/camera/OnScreenIndicators;->mExposureIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    return-void

    .line 99
    :pswitch_0
    const v0, 0x7f0200f0

    .line 100
    goto :goto_0

    .line 102
    :pswitch_1
    const v0, 0x7f0200ef

    .line 103
    goto :goto_0

    .line 105
    :pswitch_2
    const v0, 0x7f0200ee

    .line 106
    goto :goto_0

    .line 108
    :pswitch_3
    const v0, 0x7f0200ed

    .line 109
    goto :goto_0

    .line 111
    :pswitch_4
    const v0, 0x7f0200f1

    .line 112
    goto :goto_0

    .line 114
    :pswitch_5
    const v0, 0x7f0200f2

    .line 115
    goto :goto_0

    .line 117
    :pswitch_6
    const v0, 0x7f0200f3

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public updateExposureOnScreenIndicator(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # I

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/camera/OnScreenIndicators;->mExposureIndicator:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    .line 85
    .local v0, "step":F
    int-to-float v1, p2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 86
    invoke-virtual {p0, p2}, Lcom/android/camera/OnScreenIndicators;->updateExposureOnScreenIndicator(I)V

    goto :goto_0
.end method

.method public updateFlashOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f0200f5

    .line 147
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 150
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 153
    :cond_2
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 155
    :cond_3
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "torch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateLocationIndicator(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mLocationIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/android/camera/OnScreenIndicators;->mLocationIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v0, 0x7f0200f8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0200f7

    goto :goto_1
.end method

.method public updateSceneOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mSceneIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 173
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mSceneIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 175
    :cond_2
    const-string v0, "hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mSceneIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mSceneIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateTimerIndicator(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/camera/OnScreenIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v0, 0x7f0200fd

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0200fc

    goto :goto_1
.end method

.method public updateWBIndicator(I)V
    .locals 2
    .param p1, "wbIndex"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mWBIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mWBIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/OnScreenIndicators;->mWBArray:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
