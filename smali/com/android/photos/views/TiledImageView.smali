.class public Lcom/android/photos/views/TiledImageView;
.super Landroid/widget/FrameLayout;
.source "TiledImageView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/photos/views/TiledImageView$1;,
        Lcom/android/photos/views/TiledImageView$ColoredTiles;,
        Lcom/android/photos/views/TiledImageView$TileRenderer;,
        Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    }
.end annotation


# instance fields
.field private mFocusedRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

.field private mLastX:F

.field private mLastY:F

.field private mLock:Ljava/lang/Object;

.field private mRenderers:[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mTextureView:Lcom/android/photos/views/BlockingGLTextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/photos/views/TiledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iput-object v0, p0, Lcom/android/photos/views/TiledImageView;->mRenderers:[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Lcom/android/photos/views/BlockingGLTextureView;

    invoke-direct {v0, p1}, Lcom/android/photos/views/BlockingGLTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageView;->mTextureView:Lcom/android/photos/views/BlockingGLTextureView;

    .line 71
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mTextureView:Lcom/android/photos/views/BlockingGLTextureView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/photos/views/TiledImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mTextureView:Lcom/android/photos/views/BlockingGLTextureView;

    new-instance v1, Lcom/android/photos/views/TiledImageView$TileRenderer;

    invoke-direct {v1, p0, v3}, Lcom/android/photos/views/TiledImageView$TileRenderer;-><init>(Lcom/android/photos/views/TiledImageView;Lcom/android/photos/views/TiledImageView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/photos/views/BlockingGLTextureView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 74
    new-instance v0, Lcom/android/photos/views/TiledImageView$ColoredTiles;

    invoke-direct {v0, v3}, Lcom/android/photos/views/TiledImageView$ColoredTiles;-><init>(Lcom/android/photos/views/TiledImageView$1;)V

    invoke-virtual {p0, v0}, Lcom/android/photos/views/TiledImageView;->setTileSource(Lcom/android/photos/views/TiledImageRenderer$TileSource;)V

    .line 75
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 76
    return-void
.end method

.method static synthetic access$300(Lcom/android/photos/views/TiledImageView;)[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/views/TiledImageView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mRenderers:[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/photos/views/TiledImageView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/views/TiledImageView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private updateScaleIfNecessaryLocked(Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;)V
    .locals 3
    .param p1, "renderer"    # Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    .prologue
    .line 165
    iget v0, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v1}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v2}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mTextureView:Lcom/android/photos/views/BlockingGLTextureView;

    invoke-virtual {v0}, Lcom/android/photos/views/BlockingGLTextureView;->destroy()V

    .line 80
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mTextureView:Lcom/android/photos/views/BlockingGLTextureView;

    invoke-virtual {v0}, Lcom/android/photos/views/BlockingGLTextureView;->render()V

    .line 174
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 175
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 180
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mTextureView:Lcom/android/photos/views/BlockingGLTextureView;

    invoke-virtual {v0}, Lcom/android/photos/views/BlockingGLTextureView;->invalidate()V

    .line 181
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 156
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 157
    iget-object v5, p0, Lcom/android/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mRenderers:[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    .local v0, "arr$":[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 159
    .local v3, "renderer":Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    invoke-direct {p0, v3}, Lcom/android/photos/views/TiledImageView;->updateScaleIfNecessaryLocked(Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;)V

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v3    # "renderer":Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    :cond_0
    monitor-exit v5

    .line 162
    return-void

    .line 161
    .end local v0    # "arr$":[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mFocusedRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 111
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageView;->invalidate()V

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 117
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 122
    .local v1, "action":I
    const/4 v11, 0x6

    if-ne v1, v11, :cond_0

    const/4 v5, 0x1

    .line 123
    .local v5, "pointerUp":Z
    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 126
    .local v6, "skipIndex":I
    :goto_1
    const/4 v7, 0x0

    .local v7, "sumX":F
    const/4 v8, 0x0

    .line 127
    .local v8, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 128
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_3

    .line 129
    if-ne v6, v4, :cond_2

    .line 128
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 122
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v5    # "pointerUp":Z
    .end local v6    # "skipIndex":I
    .end local v7    # "sumX":F
    .end local v8    # "sumY":F
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 123
    .restart local v5    # "pointerUp":Z
    :cond_1
    const/4 v6, -0x1

    goto :goto_1

    .line 130
    .restart local v2    # "count":I
    .restart local v4    # "i":I
    .restart local v6    # "skipIndex":I
    .restart local v7    # "sumX":F
    .restart local v8    # "sumY":F
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float/2addr v7, v11

    .line 131
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v8, v11

    goto :goto_3

    .line 133
    :cond_3
    if-eqz v5, :cond_4

    add-int/lit8 v3, v2, -0x1

    .line 134
    .local v3, "div":I
    :goto_4
    int-to-float v11, v3

    div-float v9, v7, v11

    .line 135
    .local v9, "x":F
    int-to-float v11, v3

    div-float v10, v8, v11

    .line 137
    .local v10, "y":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 138
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/views/TiledImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 139
    packed-switch v1, :pswitch_data_0

    .line 146
    :goto_5
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/photos/views/TiledImageView;->mLastX:F

    .line 149
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/photos/views/TiledImageView;->mLastY:F

    .line 150
    const/4 v11, 0x1

    return v11

    .end local v3    # "div":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_4
    move v3, v2

    .line 133
    goto :goto_4

    .line 141
    .restart local v3    # "div":I
    .restart local v9    # "x":F
    .restart local v10    # "y":F
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/views/TiledImageView;->mFocusedRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v13, v11, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/photos/views/TiledImageView;->mLastX:F

    sub-float/2addr v14, v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/photos/views/TiledImageView;->mFocusedRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v15, v15, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v11, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    .line 142
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/views/TiledImageView;->mFocusedRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v13, v11, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/photos/views/TiledImageView;->mLastY:F

    sub-float/2addr v14, v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/photos/views/TiledImageView;->mFocusedRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v15, v15, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v11, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/photos/views/TiledImageView;->invalidate()V

    goto :goto_5

    .line 146
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 139
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setTileSource(Lcom/android/photos/views/TiledImageRenderer$TileSource;)V
    .locals 6
    .param p1, "source"    # Lcom/android/photos/views/TiledImageRenderer$TileSource;

    .prologue
    const/4 v5, 0x0

    .line 83
    iget-object v3, p0, Lcom/android/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/photos/views/TiledImageView;->mRenderers:[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/photos/views/TiledImageView;->mRenderers:[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    aget-object v1, v2, v0

    .line 86
    .local v1, "renderer":Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    if-nez v1, :cond_0

    .line 87
    iget-object v2, p0, Lcom/android/photos/views/TiledImageView;->mRenderers:[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    new-instance v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    .end local v1    # "renderer":Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;-><init>(Lcom/android/photos/views/TiledImageView$1;)V

    aput-object v1, v2, v0

    .line 89
    .restart local v1    # "renderer":Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    :cond_0
    iput-object p1, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    .line 90
    iget-object v2, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v2}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    .line 91
    iget-object v2, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v2}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    .line 92
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    .line 93
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 94
    new-instance v2, Lcom/android/photos/views/TiledImageRenderer;

    invoke-direct {v2, p0}, Lcom/android/photos/views/TiledImageRenderer;-><init>(Landroid/view/View;)V

    iput-object v2, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    .line 95
    invoke-direct {p0, v1}, Lcom/android/photos/views/TiledImageView;->updateScaleIfNecessaryLocked(Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "renderer":Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v2, p0, Lcom/android/photos/views/TiledImageView;->mRenderers:[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    aget-object v2, v2, v5

    iput-object v2, p0, Lcom/android/photos/views/TiledImageView;->mFocusedRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    .line 99
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageView;->invalidate()V

    .line 100
    return-void

    .line 97
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
