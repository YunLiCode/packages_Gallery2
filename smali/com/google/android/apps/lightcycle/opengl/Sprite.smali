.class public Lcom/google/android/apps/lightcycle/opengl/Sprite;
.super Lcom/google/android/apps/lightcycle/opengl/DrawableGL;
.source "Sprite.java"


# instance fields
.field private mAllocatedTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/lightcycle/opengl/GLTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mDepth:F

.field private mHalfX:F

.field private mHalfY:F

.field private mImageDim:Landroid/graphics/Point;

.field private mInitialized:Z

.field private mNumIndices:I

.field private mNumVertices:I

.field private mObjectTransform:[F

.field private mTransform:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;-><init>()V

    .line 27
    const/high16 v0, 0x40800000

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    .line 29
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    .line 31
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    .line 32
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mObjectTransform:[F

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mInitialized:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mAllocatedTextures:Ljava/util/ArrayList;

    return-void
.end method

.method private createRenderData()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/high16 v5, 0x40000000

    .line 60
    iput v6, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mNumIndices:I

    .line 61
    const/4 v3, 0x4

    iput v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mNumVertices:I

    .line 64
    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mNumVertices:I

    mul-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 66
    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mNumVertices:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTexCoords:Ljava/nio/FloatBuffer;

    .line 68
    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mNumIndices:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    .line 71
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 72
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 73
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 75
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    .line 76
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    .line 79
    const/16 v3, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    .line 81
    .local v2, "texCoordData":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTexCoords:Ljava/nio/FloatBuffer;

    aget v4, v2, v0

    invoke-virtual {v3, v0, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    new-array v1, v6, [S

    fill-array-data v1, :array_1

    .line 87
    .local v1, "indices":[S
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 88
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    aget-short v4, v1, v0

    invoke-virtual {v3, v0, v4}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mObjectTransform:[F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 93
    return-void

    .line 79
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000
        0x0
        0x3f800000
        0x3f800000
        0x0
        0x3f800000
    .end array-data

    .line 86
    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method private initFromBitmap(Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 127
    new-instance v1, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-direct {v1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;-><init>()V

    .line 128
    .local v1, "texture":Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v2, v3, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 129
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mAllocatedTextures:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->loadBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->createRenderData()V

    .line 140
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    move v2, v3

    .line 135
    goto :goto_0
.end method

.method private initFromDrawable(Landroid/content/Context;I)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # I

    .prologue
    const/4 v4, 0x0

    .line 97
    new-instance v3, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-direct {v3}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;-><init>()V

    .line 98
    .local v3, "texture":Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v5, v4, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 99
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mAllocatedTextures:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 103
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    .local v0, "bitmap1":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 122
    :goto_0
    return v4

    .line 110
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 113
    :try_start_0
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v4, v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->loadBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 120
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->createRenderData()V

    .line 122
    const/4 v4, 0x1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public drawObject([F)V
    .locals 0
    .param p1, "transform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 280
    return-void
.end method

.method public drawRotated([FFFFF)V
    .locals 9
    .param p1, "transform"    # [F
    .param p2, "u"    # F
    .param p3, "v"    # F
    .param p4, "rotationAngleDegrees"    # F
    .param p5, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/high16 v8, 0x3f800000

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 336
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mInitialized:Z

    if-nez v0, :cond_0

    .line 337
    const-string v0, "LightCycle"

    const-string v1, "Sprite not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    if-nez v0, :cond_1

    .line 343
    const-string v0, "The shader does not exist."

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Shader;->bind()V

    .line 349
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 350
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 351
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 352
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTexCoords(Ljava/nio/FloatBuffer;)V

    .line 353
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    move-object v2, p1

    move v3, v1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 354
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    move v4, v1

    move v5, p4

    move v7, v6

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 355
    cmpl-float v0, p5, v8

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    invoke-static {v0, v1, p5, p5, p5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTransform([F)V

    .line 360
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 361
    const-string v0, "Error : no textures defined for Sprite"

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->bind(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 367
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 368
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mNumIndices:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public drawRotatedCentered([FFFF)V
    .locals 7
    .param p1, "transform"    # [F
    .param p2, "u"    # F
    .param p3, "v"    # F
    .param p4, "rotationAngleDegrees"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 388
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mInitialized:Z

    if-nez v0, :cond_0

    .line 389
    const-string v0, "LightCycle"

    const-string v1, "Sprite not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    if-nez v0, :cond_1

    .line 395
    const-string v0, "The shader does not exist."

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Shader;->bind()V

    .line 401
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 402
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 403
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 404
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTexCoords(Ljava/nio/FloatBuffer;)V

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    add-float v4, p2, v2

    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    add-float v5, p3, v2

    move-object v2, p1

    move v3, v1

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    const/high16 v5, 0x3f800000

    move v2, p4

    move v3, v6

    move v4, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 407
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTransform([F)V

    .line 409
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 410
    const-string v0, "Error : no textures defined for Sprite"

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->bind(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 416
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 417
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mNumIndices:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public freeGLMemory()V
    .locals 3

    .prologue
    .line 504
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mAllocatedTextures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    .line 505
    .local v1, "texture":Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->recycle()V

    goto :goto_0

    .line 507
    .end local v1    # "texture":Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mAllocatedTextures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 508
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public init2D(IIF)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "depth"    # F

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x40000000

    .line 218
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 219
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->createRenderData()V

    .line 222
    int-to-float v2, p1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    .line 223
    int-to-float v2, p2

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    .line 224
    iput p3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    .line 225
    const/16 v2, 0xc

    new-array v1, v2, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    neg-float v3, v3

    aput v3, v1, v2

    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    aput v2, v1, v4

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    neg-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v3, v1, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    neg-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xa

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    neg-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xb

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v3, v1, v2

    .line 228
    .local v1, "vertexData":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    aget v3, v1, v0

    invoke-virtual {v2, v0, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mInitialized:Z

    .line 232
    return-void
.end method

.method public init2D(Landroid/content/Context;IFF)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # I
    .param p3, "depth"    # F
    .param p4, "scale"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->initFromDrawable(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 179
    :goto_0
    return v2

    .line 169
    :cond_0
    iput p3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    .line 170
    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    mul-float/2addr v4, p4

    iput v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    .line 171
    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    mul-float/2addr v4, p4

    iput v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    .line 172
    const/16 v4, 0xc

    new-array v1, v4, [F

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    neg-float v4, v4

    aput v4, v1, v2

    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    aput v2, v1, v3

    const/4 v2, 0x2

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v4, v1, v2

    const/4 v2, 0x3

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    aput v4, v1, v2

    const/4 v2, 0x4

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    aput v4, v1, v2

    const/4 v2, 0x5

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v4, v1, v2

    const/4 v2, 0x6

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    aput v4, v1, v2

    const/4 v2, 0x7

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    neg-float v4, v4

    aput v4, v1, v2

    const/16 v2, 0x8

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v4, v1, v2

    const/16 v2, 0x9

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    neg-float v4, v4

    aput v4, v1, v2

    const/16 v2, 0xa

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    neg-float v4, v4

    aput v4, v1, v2

    const/16 v2, 0xb

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v4, v1, v2

    .line 175
    .local v1, "vertexData":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    aget v4, v1, v0

    invoke-virtual {v2, v0, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    :cond_1
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mInitialized:Z

    move v2, v3

    .line 179
    goto :goto_0
.end method

.method public init2D(Landroid/graphics/Bitmap;FF)Z
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "depth"    # F
    .param p3, "scale"    # F

    .prologue
    const/4 v4, 0x1

    .line 194
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->initFromBitmap(Landroid/graphics/Bitmap;)Z

    .line 195
    iput p2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    .line 196
    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    mul-float/2addr v2, p3

    iput v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    .line 197
    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    mul-float/2addr v2, p3

    iput v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    .line 198
    const/16 v2, 0xc

    new-array v1, v2, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    neg-float v3, v3

    aput v3, v1, v2

    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    aput v2, v1, v4

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    neg-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v3, v1, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    neg-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xa

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    neg-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xb

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v3, v1, v2

    .line 201
    .local v1, "vertexData":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    aget v3, v1, v0

    invoke-virtual {v2, v0, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mInitialized:Z

    .line 205
    return v4
.end method

.method public setTexture(Lcom/google/android/apps/lightcycle/opengl/GLTexture;)V
    .locals 2
    .param p1, "texture"    # Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
