.class public Lcom/android/camera/ui/FaceView;
.super Landroid/view/View;
.source "FaceView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final LOGV:Z

.field private volatile mBlocked:Z

.field private mColor:I

.field private mDisplayOrientation:I

.field private mFaces:[Landroid/hardware/Camera$Face;

.field private final mFailColor:I

.field private final mFocusedColor:I

.field private final mFocusingColor:I

.field private mHandler:Landroid/os/Handler;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPause:Z

.field private mPendingFaces:[Landroid/hardware/Camera$Face;

.field private mRect:Landroid/graphics/RectF;

.field private mStateSwitchPending:Z

.field private mUncroppedHeight:I

.field private mUncroppedWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v2, p0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    .line 53
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 71
    iput-boolean v2, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    .line 72
    new-instance v1, Lcom/android/camera/ui/FaceView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FaceView$1;-><init>(Lcom/android/camera/ui/FaceView;)V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    .line 87
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mFocusingColor:I

    .line 89
    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mFocusedColor:I

    .line 90
    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mFailColor:I

    .line 91
    iget v1, p0, Lcom/android/camera/ui/FaceView;->mFocusingColor:I

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x7f0e00af

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/FaceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/ui/FaceView;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FaceView;
    .param p1, "x1"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FaceView;)[Landroid/hardware/Camera$Face;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FaceView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPendingFaces:[Landroid/hardware/Camera$Face;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mFocusingColor:I

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 166
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 167
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 183
    iget-boolean v7, p0, Lcom/android/camera/ui/FaceView;->mBlocked:Z

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v7, v7

    if-lez v7, :cond_6

    .line 185
    iget v7, p0, Lcom/android/camera/ui/FaceView;->mUncroppedWidth:I

    if-nez v7, :cond_3

    .line 188
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v5

    .line 189
    .local v5, "sn":Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v5}, Lcom/android/camera/CameraScreenNail;->getUncroppedRenderWidth()I

    move-result v4

    .line 190
    .local v4, "rw":I
    invoke-virtual {v5}, Lcom/android/camera/CameraScreenNail;->getUncroppedRenderHeight()I

    move-result v3

    .line 196
    .end local v5    # "sn":Lcom/android/camera/CameraScreenNail;
    .local v3, "rh":I
    :goto_0
    if-le v3, v4, :cond_0

    iget v7, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    const/16 v8, 0xb4

    if-eq v7, v8, :cond_1

    :cond_0
    if-le v4, v3, :cond_2

    iget v7, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_2

    .line 198
    :cond_1
    move v6, v4

    .line 199
    .local v6, "temp":I
    move v4, v3

    .line 200
    move v3, v6

    .line 202
    .end local v6    # "temp":I
    :cond_2
    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v8, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v9, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    invoke-static {v7, v8, v9, v4, v3}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 203
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/lit8 v0, v7, 0x2

    .line 204
    .local v0, "dx":I
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v3

    div-int/lit8 v1, v7, 0x2

    .line 208
    .local v1, "dy":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 209
    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 210
    iget v7, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 211
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v7, v7

    if-ge v2, v7, :cond_5

    .line 213
    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v7, v7, v2

    iget v7, v7, Landroid/hardware/Camera$Face;->score:I

    const/16 v8, 0x32

    if-ge v7, v8, :cond_4

    .line 211
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 192
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "i":I
    .end local v3    # "rh":I
    .end local v4    # "rw":I
    :cond_3
    iget v4, p0, Lcom/android/camera/ui/FaceView;->mUncroppedWidth:I

    .line 193
    .restart local v4    # "rw":I
    iget v3, p0, Lcom/android/camera/ui/FaceView;->mUncroppedHeight:I

    .restart local v3    # "rh":I
    goto :goto_0

    .line 216
    .restart local v0    # "dx":I
    .restart local v1    # "dy":I
    .restart local v2    # "i":I
    :cond_4
    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v8, v8, v2

    iget-object v8, v8, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 218
    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 220
    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v8, v0

    int-to-float v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 222
    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 224
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 226
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "i":I
    .end local v3    # "rh":I
    .end local v4    # "rw":I
    :cond_6
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 227
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 171
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 175
    return-void
.end method

.method public setBlockDraw(Z)V
    .locals 0
    .param p1, "block"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mBlocked:Z

    .line 179
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    .line 123
    return-void
.end method

.method public setFaces([Landroid/hardware/Camera$Face;)V
    .locals 4
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    const/4 v3, 0x1

    .line 100
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_4

    .line 102
    array-length v0, p1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-eqz v0, :cond_3

    :cond_2
    array-length v0, p1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 104
    :cond_3
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mPendingFaces:[Landroid/hardware/Camera$Face;

    .line 105
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    if-nez v0, :cond_0

    .line 106
    iput-boolean v3, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x46

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 112
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    if-eqz v0, :cond_5

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    :cond_5
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 117
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    .line 134
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 127
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    .line 128
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 129
    return-void
.end method

.method public showFail(Z)V
    .locals 1
    .param p1, "timeout"    # Z

    .prologue
    .line 156
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mFailColor:I

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 157
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 158
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mFocusingColor:I

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 144
    return-void
.end method

.method public showSuccess(Z)V
    .locals 1
    .param p1, "timeout"    # Z

    .prologue
    .line 149
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mFocusedColor:I

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 150
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 151
    return-void
.end method
