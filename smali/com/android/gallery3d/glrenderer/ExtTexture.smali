.class public Lcom/android/gallery3d/glrenderer/ExtTexture;
.super Lcom/android/gallery3d/glrenderer/BasicTexture;
.source "ExtTexture.java"


# instance fields
.field private mTarget:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/glrenderer/GLCanvas;I)V
    .locals 2
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "target"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;-><init>()V

    .line 26
    invoke-interface {p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->getGLId()Lcom/android/gallery3d/glrenderer/GLId;

    move-result-object v0

    .line 27
    .local v0, "glId":Lcom/android/gallery3d/glrenderer/GLId;
    invoke-interface {v0}, Lcom/android/gallery3d/glrenderer/GLId;->generateTexture()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mId:I

    .line 28
    iput p2, p0, Lcom/android/gallery3d/glrenderer/ExtTexture;->mTarget:I

    .line 29
    return-void
.end method

.method private uploadToCanvas(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 32
    invoke-interface {p1, p0}, Lcom/android/gallery3d/glrenderer/GLCanvas;->setTextureParameters(Lcom/android/gallery3d/glrenderer/BasicTexture;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/glrenderer/ExtTexture;->setAssociatedCanvas(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mState:I

    .line 35
    return-void
.end method


# virtual methods
.method public getTarget()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/gallery3d/glrenderer/ExtTexture;->mTarget:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method protected onBind(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 1
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/ExtTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/ExtTexture;->uploadToCanvas(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 43
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method
