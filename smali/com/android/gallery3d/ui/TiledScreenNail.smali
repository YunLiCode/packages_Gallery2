.class public Lcom/android/gallery3d/ui/TiledScreenNail;
.super Ljava/lang/Object;
.source "TiledScreenNail.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ScreenNail;


# static fields
.field private static mDrawPlaceholder:Z

.field private static mPlaceholderColor:I

.field private static sMaxSide:I


# instance fields
.field private mAnimationStartTime:J

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x280

    sput v0, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    .line 68
    const v0, -0xddddde

    sput v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/TiledScreenNail;->setSize(II)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    .line 58
    iput-object p1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 59
    new-instance v0, Lcom/android/gallery3d/glrenderer/TiledTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/glrenderer/TiledTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    .line 60
    return-void
.end method

.method public static disableDrawPlaceholder()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    .line 148
    return-void
.end method

.method public static enableDrawPlaceholder()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    .line 152
    return-void
.end method

.method private getRatio()F
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000

    .line 203
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x43340000

    div-float v0, v1, v2

    .line 204
    .local v0, "r":F
    sub-float v1, v5, v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method public static setMaxSide(I)V
    .locals 0
    .param p0, "size"    # I

    .prologue
    .line 216
    sput p0, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    .line 217
    return-void
.end method

.method public static setPlaceholderColor(I)V
    .locals 0
    .param p0, "color"    # I

    .prologue
    .line 72
    sput p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    .line 73
    return-void
.end method

.method private setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 76
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 77
    :cond_0
    sget p1, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    .line 78
    sget v1, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 p2, v1, 0x4

    .line 80
    :cond_1
    const/high16 v1, 0x3f800000

    sget v2, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    int-to-float v2, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 81
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    .line 82
    int-to-float v1, p2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    .line 83
    return-void
.end method


# virtual methods
.method public combine(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 4
    .param p1, "other"    # Lcom/android/gallery3d/ui/ScreenNail;

    .prologue
    const/4 v3, 0x0

    .line 88
    if-nez p1, :cond_0

    .line 111
    .end local p0    # "this":Lcom/android/gallery3d/ui/TiledScreenNail;
    :goto_0
    return-object p0

    .line 92
    .restart local p0    # "this":Lcom/android/gallery3d/ui/TiledScreenNail;
    :cond_0
    instance-of v1, p1, Lcom/android/gallery3d/ui/TiledScreenNail;

    if-nez v1, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TiledScreenNail;->recycle()V

    move-object p0, p1

    .line 94
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 99
    check-cast v0, Lcom/android/gallery3d/ui/TiledScreenNail;

    .line 100
    .local v0, "newer":Lcom/android/gallery3d/ui/TiledScreenNail;
    iget v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    iput v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    .line 101
    iget v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    iput v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    .line 102
    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    if-eqz v1, :cond_4

    .line 103
    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/glrenderer/TiledTexture;->recycle()V

    .line 105
    :cond_3
    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 106
    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    iput-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    .line 107
    iput-object v3, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 108
    iput-object v3, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    .line 110
    :cond_4
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TiledScreenNail;->recycle()V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 8
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const-wide/16 v4, -0x2

    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_3

    .line 157
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 158
    iput-wide v4, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 160
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    if-eqz v0, :cond_2

    .line 161
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    sget v5, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 176
    :cond_2
    :goto_0
    return-void

    .line 166
    :cond_3
    iget-wide v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 167
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 170
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    sget v2, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    invoke-direct {p0}, Lcom/android/gallery3d/ui/TiledScreenNail;->getRatio()F

    move-result v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/gallery3d/glrenderer/TiledTexture;->drawMixed(Lcom/android/gallery3d/glrenderer/GLCanvas;IFIIII)V

    goto :goto_0

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/TiledTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "dest"    # Landroid/graphics/RectF;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    sget v5, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/glrenderer/TiledTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    return v0
.end method

.method public getTexture()Lcom/android/gallery3d/glrenderer/TiledTexture;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    return v0
.end method

.method public isAnimating()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 193
    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 199
    :cond_1
    :goto_0
    return v0

    .line 194
    :cond_2
    iget-wide v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 195
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xb4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 196
    const-wide/16 v1, -0x3

    iput-wide v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    goto :goto_0

    :cond_3
    move v0, v1

    .line 199
    goto :goto_0
.end method

.method public noDraw()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/TiledTexture;->recycle()V

    .line 138
    iput-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 141
    invoke-static {}, Lcom/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 142
    iput-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 144
    :cond_1
    return-void
.end method

.method public updatePlaceholderSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/TiledScreenNail;->setSize(II)V

    goto :goto_0
.end method
