.class public Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source "ImageTinyPlanet.java"


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mCurrentX:F

.field private mCurrentY:F

.field mDestRect:Landroid/graphics/RectF;

.field private mEditorTinyPlanet:Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;

.field mInScale:Z

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mStartAngle:F

.field private mTinyPlanetRep:Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

.field private mTouchCenterX:F

.field private mTouchCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    .line 35
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterX:F

    .line 36
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterY:F

    .line 37
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentX:F

    .line 38
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentY:F

    .line 39
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterX:F

    .line 40
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterY:F

    .line 41
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mStartAngle:F

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mInScale:Z

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mDestRect:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;-><init>(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 79
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterX:F

    .line 36
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterY:F

    .line 37
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentX:F

    .line 38
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentY:F

    .line 39
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterX:F

    .line 40
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterY:F

    .line 41
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mStartAngle:F

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mInScale:Z

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mDestRect:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;-><init>(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 84
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTinyPlanetRep:Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mEditorTinyPlanet:Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;

    return-object v0
.end method

.method protected static angleFor(FF)F
    .locals 4
    .param p0, "dx"    # F
    .param p1, "dy"    # F

    .prologue
    .line 88
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private display(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v8, 0x40000000

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v5, v6

    .line 155
    .local v5, "sw":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v4, v6

    .line 156
    .local v4, "sh":F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v1, v6

    .line 157
    .local v1, "iw":F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v0, v6

    .line 158
    .local v0, "ih":F
    move v3, v5

    .line 159
    .local v3, "nsw":F
    move v2, v4

    .line 161
    .local v2, "nsh":F
    mul-float v6, v5, v0

    mul-float v7, v4, v1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 162
    mul-float v6, v4, v1

    div-float v3, v6, v0

    .line 167
    :goto_0
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mDestRect:Landroid/graphics/RectF;

    sub-float v7, v5, v3

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 168
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mDestRect:Landroid/graphics/RectF;

    sub-float v7, v4, v2

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 169
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mDestRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mDestRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float v7, v5, v7

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 170
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mDestRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mDestRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float v7, v4, v7

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 172
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mDestRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 173
    return-void

    .line 164
    :cond_0
    mul-float v6, v5, v0

    div-float v2, v6, v1

    goto :goto_0
.end method


# virtual methods
.method protected getCurrentTouchAngle()F
    .locals 10

    .prologue
    .line 92
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterX:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterY:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 93
    const/4 v6, 0x0

    .line 102
    :goto_0
    return v6

    .line 95
    :cond_0
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterX:F

    sub-float v2, v6, v7

    .line 96
    .local v2, "dX1":F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterY:F

    sub-float v4, v6, v7

    .line 97
    .local v4, "dY1":F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterX:F

    sub-float v3, v6, v7

    .line 98
    .local v3, "dX2":F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterY:F

    sub-float v5, v6, v7

    .line 100
    .local v5, "dY2":F
    invoke-static {v2, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->angleFor(FF)F

    move-result v0

    .line 101
    .local v0, "angleA":F
    invoke-static {v3, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->angleFor(FF)F

    move-result v1

    .line 102
    .local v1, "angleB":F
    sub-float v6, v1, v0

    const/high16 v7, 0x43b40000

    rem-float/2addr v6, v7

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L

    div-double/2addr v6, v8

    double-to-float v6, v6

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 143
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getHighresImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 145
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    :cond_0
    if-eqz v0, :cond_1

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->display(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 151
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 108
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 109
    .local v1, "y":F
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentX:F

    .line 110
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentY:F

    .line 111
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterX:F

    .line 112
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterY:F

    .line 113
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 114
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mInScale:Z

    if-eqz v2, :cond_0

    .line 130
    :goto_0
    return v5

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 128
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->invalidate()V

    .line 129
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mEditorTinyPlanet:Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;->commitLocalRepresentation()V

    goto :goto_0

    .line 119
    :pswitch_1
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterX:F

    .line 120
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterY:F

    .line 121
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTinyPlanetRep:Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->getAngle()F

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mStartAngle:F

    goto :goto_1

    .line 125
    :pswitch_2
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTinyPlanetRep:Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mStartAngle:F

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->getCurrentTouchAngle()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->setAngle(F)V

    goto :goto_1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/BasicEditor;)V
    .locals 0
    .param p1, "editorTinyPlanet"    # Lcom/android/gallery3d/filtershow/editors/BasicEditor;

    .prologue
    .line 138
    check-cast p1, Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;

    .end local p1    # "editorTinyPlanet":Lcom/android/gallery3d/filtershow/editors/BasicEditor;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mEditorTinyPlanet:Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;

    .line 139
    return-void
.end method

.method public setRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;)V
    .locals 0
    .param p1, "tinyPlanetRep"    # Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTinyPlanetRep:Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    .line 135
    return-void
.end method
