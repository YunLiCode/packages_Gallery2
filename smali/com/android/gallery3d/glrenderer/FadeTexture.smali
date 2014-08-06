.class public abstract Lcom/android/gallery3d/glrenderer/FadeTexture;
.super Ljava/lang/Object;
.source "FadeTexture.java"

# interfaces
.implements Lcom/android/gallery3d/glrenderer/Texture;


# instance fields
.field private final mHeight:I

.field private mIsAnimating:Z

.field private final mIsOpaque:Z

.field private final mStartTime:J

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "opaque"    # Z

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/gallery3d/glrenderer/FadeTexture;->mWidth:I

    .line 38
    iput p2, p0, Lcom/android/gallery3d/glrenderer/FadeTexture;->mHeight:I

    .line 39
    iput-boolean p3, p0, Lcom/android/gallery3d/glrenderer/FadeTexture;->mIsOpaque:Z

    .line 40
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/FadeTexture;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/glrenderer/FadeTexture;->mStartTime:J

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/glrenderer/FadeTexture;->mIsAnimating:Z

    .line 42
    return-void
.end method

.method private now()J
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 46
    iget v4, p0, Lcom/android/gallery3d/glrenderer/FadeTexture;->mWidth:I

    iget v5, p0, Lcom/android/gallery3d/glrenderer/FadeTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/FadeTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 47
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/gallery3d/glrenderer/FadeTexture;->mHeight:I

    return v0
.end method

.method protected getRatio()F
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000

    .line 74
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/FadeTexture;->now()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/gallery3d/glrenderer/FadeTexture;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x43340000

    div-float v0, v1, v2

    .line 75
    .local v0, "r":F
    sub-float v1, v5, v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/gallery3d/glrenderer/FadeTexture;->mWidth:I

    return v0
.end method

.method public isAnimating()Z
    .locals 4

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/FadeTexture;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/FadeTexture;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/glrenderer/FadeTexture;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xb4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/glrenderer/FadeTexture;->mIsAnimating:Z

    .line 70
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/FadeTexture;->mIsAnimating:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/FadeTexture;->mIsOpaque:Z

    return v0
.end method
