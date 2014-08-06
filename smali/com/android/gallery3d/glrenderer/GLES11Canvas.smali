.class public Lcom/android/gallery3d/glrenderer/GLES11Canvas;
.super Ljava/lang/Object;
.source "GLES11Canvas.java"

# interfaces
.implements Lcom/android/gallery3d/glrenderer/GLCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/glrenderer/GLES11Canvas$1;,
        Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;,
        Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;
    }
.end annotation


# static fields
.field private static final BOX_COORDINATES:[F

.field private static mGLId:Lcom/android/gallery3d/glrenderer/GLId;

.field private static sCropRect:[F


# instance fields
.field private mAlpha:F

.field private mBlendEnabled:Z

.field private mBoxCoords:I

.field mCountDrawLine:I

.field mCountDrawMesh:I

.field mCountFillRect:I

.field mCountTextureOES:I

.field mCountTextureRect:I

.field private final mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

.field private final mDrawTextureSourceRect:Landroid/graphics/RectF;

.field private final mDrawTextureTargetRect:Landroid/graphics/RectF;

.field private mFrameBuffer:[I

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

.field private final mMapPointsBuffer:[F

.field private final mMatrixValues:[F

.field private mRecycledRestoreAction:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

.field private final mRestoreStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mTargetStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/glrenderer/RawTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

.field private final mTempMatrix:[F

.field private final mTextureColor:[F

.field private final mTextureMatrixValues:[F

.field private final mUnboundTextures:Lcom/android/gallery3d/util/IntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    .line 97
    new-instance v0, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;

    invoke-direct {v0}, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;-><init>()V

    sput-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    return-void

    .line 52
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000
        0x0
        0x0
        0x3f800000
        0x3f800000
        0x3f800000
        0x0
        0x0
        0x3f800000
        0x3f800000
        0x0
        0x0
        0x0
        0x3f800000
        0x3f800000
        0x3f800000
        0x3f800000
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    const/4 v4, 0x4

    const/16 v8, 0x1406

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v3, 0x10

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    .line 60
    const/16 v3, 0x10

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    .line 64
    new-array v3, v4, [F

    iput-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMapPointsBuffer:[F

    .line 66
    new-array v3, v4, [F

    iput-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureColor:[F

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    .line 77
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 78
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 79
    const/16 v3, 0x20

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    .line 80
    new-instance v3, Lcom/android/gallery3d/util/IntArray;

    invoke-direct {v3}, Lcom/android/gallery3d/util/IntArray;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    .line 81
    new-instance v3, Lcom/android/gallery3d/util/IntArray;

    invoke-direct {v3}, Lcom/android/gallery3d/util/IntArray;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    .line 84
    iput-boolean v5, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    .line 85
    new-array v3, v5, [I

    iput-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    .line 100
    iput-object p1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 101
    new-instance v3, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-direct {v3, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    .line 103
    sget-object v3, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x20

    div-int/lit8 v1, v3, 0x8

    .line 104
    .local v1, "size":I
    invoke-static {v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 105
    .local v2, "xyBuffer":Ljava/nio/FloatBuffer;
    sget-object v3, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    sget-object v4, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    array-length v4, v4

    invoke-virtual {v2, v3, v6, v4}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    new-array v0, v5, [I

    .line 108
    .local v0, "name":[I
    sget-object v3, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    invoke-interface {v3, v5, v0, v6}, Lcom/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    .line 109
    aget v3, v0, v6

    iput v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBoxCoords:I

    .line 111
    const v3, 0x8892

    iget v4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBoxCoords:I

    invoke-interface {p1, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 112
    const v3, 0x8892

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e4

    invoke-interface {p1, v3, v4, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 115
    invoke-interface {p1, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 116
    invoke-interface {p1, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 119
    const v3, 0x84c1

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 120
    invoke-interface {p1, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 121
    const v3, 0x84c0

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 122
    const v3, 0x8078

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 125
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/glrenderer/GLES11Canvas;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/glrenderer/GLES11Canvas;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    return-object v0
.end method

.method private static allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 173
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private bindTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z
    .locals 3
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 456
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->onBind(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 460
    :goto_0
    return v1

    .line 457
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 458
    .local v0, "target":I
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureTarget(I)V

    .line 459
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 460
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V
    .locals 5
    .param p0, "gl11ep"    # Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .prologue
    .line 887
    const v2, 0x8d40

    invoke-interface {p0, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v1

    .line 888
    .local v1, "status":I
    const v2, 0x8cd5

    if-eq v1, v2, :cond_0

    .line 889
    const-string v0, ""

    .line 890
    .local v0, "msg":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 913
    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 892
    :pswitch_1
    const-string v0, "FRAMEBUFFER_FORMATS"

    .line 893
    goto :goto_0

    .line 895
    :pswitch_2
    const-string v0, "FRAMEBUFFER_ATTACHMENT"

    .line 896
    goto :goto_0

    .line 898
    :pswitch_3
    const-string v0, "FRAMEBUFFER_MISSING_ATTACHMENT"

    .line 899
    goto :goto_0

    .line 901
    :pswitch_4
    const-string v0, "FRAMEBUFFER_DRAW_BUFFER"

    .line 902
    goto :goto_0

    .line 904
    :pswitch_5
    const-string v0, "FRAMEBUFFER_READ_BUFFER"

    .line 905
    goto :goto_0

    .line 907
    :pswitch_6
    const-string v0, "FRAMEBUFFER_UNSUPPORTED"

    .line 908
    goto :goto_0

    .line 910
    :pswitch_7
    const-string v0, "FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_0

    .line 915
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void

    .line 890
    :pswitch_data_0
    .packed-switch 0x8cd6
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/glrenderer/BasicTexture;)V
    .locals 9
    .param p0, "source"    # Landroid/graphics/RectF;
    .param p1, "target"    # Landroid/graphics/RectF;
    .param p2, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 424
    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v3

    .line 425
    .local v3, "width":I
    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v0

    .line 426
    .local v0, "height":I
    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v2

    .line 427
    .local v2, "texWidth":I
    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v1

    .line 429
    .local v1, "texHeight":I
    iget v6, p0, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->left:F

    .line 430
    iget v6, p0, Landroid/graphics/RectF;->right:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->right:F

    .line 431
    iget v6, p0, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->top:F

    .line 432
    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->bottom:F

    .line 435
    int-to-float v6, v3

    int-to-float v7, v2

    div-float v4, v6, v7

    .line 436
    .local v4, "xBound":F
    iget v6, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    .line 437
    iget v6, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->left:F

    sub-float v8, v4, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->right:F

    .line 439
    iput v4, p0, Landroid/graphics/RectF;->right:F

    .line 441
    :cond_0
    int-to-float v6, v0

    int-to-float v7, v1

    div-float v5, v6, v7

    .line 442
    .local v5, "yBound":F
    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    .line 443
    iget v6, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->top:F

    sub-float v8, v5, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->bottom:F

    .line 445
    iput v5, p0, Landroid/graphics/RectF;->bottom:F

    .line 447
    :cond_1
    return-void
.end method

.method private drawBoundTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIII)V
    .locals 9
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000

    const/high16 v7, 0x3f000000

    .line 343
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-static {v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->isMatrixRotatedOrFlipped([F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->hasBorder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v4, v1

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    .line 355
    :goto_0
    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    .line 369
    :cond_0
    :goto_1
    return-void

    .line 351
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    add-int v3, p3, p5

    add-int v4, p2, p4

    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mapPoints([FIIII)[F

    move-result-object v6

    .line 360
    .local v6, "points":[F
    aget v0, v6, v8

    add-float/2addr v0, v7

    float-to-int p2, v0

    .line 361
    const/4 v0, 0x1

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int p3, v0

    .line 362
    const/4 v0, 0x2

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    sub-int p4, v0, p2

    .line 363
    const/4 v0, 0x3

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    sub-int p5, v0, p3

    .line 364
    if-lez p4, :cond_0

    if-lez p5, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p2

    move v2, p3

    move v3, v8

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 366
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureOES:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureOES:I

    goto :goto_1
.end method

.method private drawMixed(Lcom/android/gallery3d/glrenderer/BasicTexture;IFIIIIF)V
    .locals 9
    .param p1, "from"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "toColor"    # I
    .param p3, "ratio"    # F
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "alpha"    # F

    .prologue
    .line 550
    const v1, 0x3c23d70a

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_1

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 551
    invoke-direct/range {v1 .. v7}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIIIF)V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    const/high16 v1, 0x3f800000

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_2

    .line 554
    int-to-float v2, p4

    int-to-float v3, p5

    int-to-float v4, p6

    move/from16 v0, p7

    int-to-float v5, v0

    move-object v1, p0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->fillRect(FFFFI)V

    goto :goto_0

    .line 558
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3f733333

    cmpg-float v1, p8, v1

    if-gez v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 561
    iget-object v8, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 562
    .local v8, "gl":Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const v2, 0x8570

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    .line 566
    move/from16 v0, p8

    invoke-direct {p0, p2, p3, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setMixedColor(IFF)V

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    .line 568
    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawBoundTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 569
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const/16 v2, 0x1e01

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    goto :goto_0

    .line 558
    .end local v8    # "gl":Ljavax/microedition/khronos/opengles/GL11;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIIIF)V
    .locals 2
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "alpha"    # F

    .prologue
    .line 379
    if-lez p4, :cond_0

    if-gtz p5, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x3f733333

    cmpg-float v0, p6, v0

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 383
    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v0, p6}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    .line 385
    invoke-direct/range {p0 .. p5}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawBoundTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIII)V

    goto :goto_0

    .line 381
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private freeRestoreConfig(Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;)V
    .locals 1
    .param p1, "action"    # Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    iput-object v0, p1, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mNextFree:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    .line 795
    iput-object p1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    .line 796
    return-void
.end method

.method private static isMatrixRotatedOrFlipped([F)Z
    .locals 6
    .param p0, "matrix"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const v5, 0x3727c5ac

    .line 579
    const v0, 0x3727c5ac

    .line 580
    .local v0, "eps":F
    const/4 v3, 0x4

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p0, v1

    const v4, -0x48d83a54

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    const/4 v3, 0x5

    aget v3, p0, v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private mapPoints([FIIII)[F
    .locals 10
    .param p1, "m"    # [F
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMapPointsBuffer:[F

    .line 323
    .local v0, "r":[F
    const/4 v7, 0x0

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x4

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xc

    aget v8, p1, v8

    add-float v3, v7, v8

    .line 324
    .local v3, "x3":F
    const/4 v7, 0x1

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xd

    aget v8, p1, v8

    add-float v5, v7, v8

    .line 325
    .local v5, "y3":F
    const/4 v7, 0x3

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x7

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xf

    aget v8, p1, v8

    add-float v1, v7, v8

    .line 326
    .local v1, "w3":F
    const/4 v7, 0x0

    div-float v8, v3, v1

    aput v8, v0, v7

    .line 327
    const/4 v7, 0x1

    div-float v8, v5, v1

    aput v8, v0, v7

    .line 330
    const/4 v7, 0x0

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x4

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xc

    aget v8, p1, v8

    add-float v4, v7, v8

    .line 331
    .local v4, "x4":F
    const/4 v7, 0x1

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xd

    aget v8, p1, v8

    add-float v6, v7, v8

    .line 332
    .local v6, "y4":F
    const/4 v7, 0x3

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x7

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xf

    aget v8, p1, v8

    add-float v2, v7, v8

    .line 333
    .local v2, "w4":F
    const/4 v7, 0x2

    div-float v8, v4, v2

    aput v8, v0, v7

    .line 334
    const/4 v7, 0x3

    div-float v8, v6, v2

    aput v8, v0, v7

    .line 336
    return-object v0
.end method

.method private obtainRestoreConfig()Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;
    .locals 2

    .prologue
    .line 799
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    if-eqz v1, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    .line 801
    .local v0, "result":Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;
    iget-object v1, v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mNextFree:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    iput-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    .line 804
    .end local v0    # "result":Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;-><init>(Lcom/android/gallery3d/glrenderer/GLES11Canvas$1;)V

    goto :goto_0
.end method

.method private restoreTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 839
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 840
    return-void
.end method

.method private saveTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 835
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 836
    return-void
.end method

.method private setMixedColor(IFF)V
    .locals 11
    .param p1, "toColor"    # I
    .param p2, "ratio"    # F
    .param p3, "alpha"    # F

    .prologue
    const v10, 0x47057500

    const/high16 v5, 0x3f800000

    const v9, 0x44408000

    const v8, 0x47057600

    const/16 v7, 0x2300

    .line 482
    sub-float v4, v5, p2

    mul-float v1, p3, v4

    .line 483
    .local v1, "combo":F
    mul-float v4, p3, p2

    sub-float/2addr v5, v1

    div-float v3, v4, v5

    .line 488
    .local v3, "scale":F
    ushr-int/lit8 v4, p1, 0x18

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const v5, 0x477e0100

    div-float v0, v4, v5

    .line 489
    .local v0, "colorScale":F
    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v0

    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    mul-float/2addr v5, v0

    and-int/lit16 v6, p1, 0xff

    int-to-float v6, v6

    mul-float/2addr v6, v0

    invoke-direct {p0, v4, v5, v6, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setTextureColor(FFFF)V

    .line 492
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 493
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL11;
    const/16 v4, 0x2201

    iget-object v5, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureColor:[F

    const/4 v6, 0x0

    invoke-interface {v2, v7, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 495
    const v4, 0x8571

    invoke-interface {v2, v7, v4, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 496
    const v4, 0x8572

    invoke-interface {v2, v7, v4, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 497
    const v4, 0x8581

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 498
    const v4, 0x8591

    const/high16 v5, 0x44400000

    invoke-interface {v2, v7, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 499
    const v4, 0x8589

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 500
    const v4, 0x8599

    invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 503
    const v4, 0x8582

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 504
    const v4, 0x8592

    invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 507
    const v4, 0x858a

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 508
    const v4, 0x859a

    invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 510
    return-void
.end method

.method private setRenderTarget(Lcom/android/gallery3d/glrenderer/RawTexture;)V
    .locals 6
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/RawTexture;

    .prologue
    const/4 v4, 0x1

    const v1, 0x8d40

    const/4 v5, 0x0

    .line 843
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 845
    .local v0, "gl11ep":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 846
    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    invoke-interface {v2, v4, v3, v5}, Lcom/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    .line 847
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    aget v2, v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 850
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 851
    invoke-interface {v0, v1, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 852
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    invoke-interface {v0, v4, v2, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    .line 855
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    .line 856
    if-nez p1, :cond_2

    .line 857
    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mScreenWidth:I

    iget v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mScreenHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setSize(II)V

    .line 870
    :goto_0
    return-void

    .line 859
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setSize(II)V

    .line 861
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/RawTexture;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/glrenderer/RawTexture;->prepare(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 863
    :cond_3
    const v2, 0x8ce0

    const/16 v3, 0xde1

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/RawTexture;->getId()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    .line 868
    invoke-static {v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V

    goto :goto_0
.end method

.method private setTextureColor(FFFF)V
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureColor:[F

    .line 465
    .local v0, "color":[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 466
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 467
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 468
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 469
    return-void
.end method

.method private setTextureCoords(FFFF)V
    .locals 5
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000

    .line 709
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 710
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    sub-float v1, p3, p1

    aput v1, v0, v4

    .line 711
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/4 v1, 0x5

    sub-float v2, p4, p2

    aput v2, v0, v1

    .line 712
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 713
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 714
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 715
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 716
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 717
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 718
    return-void
.end method

.method private setTextureCoords(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "source"    # Landroid/graphics/RectF;

    .prologue
    .line 704
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    .line 705
    return-void
.end method

.method private setTextureCoords([F)V
    .locals 2
    .param p1, "mTextureTransform"    # [F

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 722
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 723
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 724
    return-void
.end method

.method private textureRect(FFFF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/4 v3, 0x0

    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 269
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    .line 271
    const/high16 v1, 0x3f800000

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    .line 273
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 274
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 276
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    .line 277
    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureRect:I

    .line 278
    return-void
.end method

.method private uploadBuffer(Ljava/nio/Buffer;I)I
    .locals 6
    .param p1, "buf"    # Ljava/nio/Buffer;
    .param p2, "elementSize"    # I

    .prologue
    const v5, 0x8892

    const/4 v4, 0x0

    .line 974
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 975
    .local v1, "bufferIds":[I
    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    array-length v3, v1

    invoke-interface {v2, v3, v1, v4}, Lcom/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    .line 976
    aget v0, v1, v4

    .line 977
    .local v0, "bufferId":I
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v2, v5, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 978
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    mul-int/2addr v3, p2

    const v4, 0x88e4

    invoke-interface {v2, v5, v3, p1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 980
    return v0
.end method


# virtual methods
.method public beginRenderTarget(Lcom/android/gallery3d/glrenderer/RawTexture;)V
    .locals 2
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/RawTexture;

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->save()V

    .line 882
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setRenderTarget(Lcom/android/gallery3d/glrenderer/RawTexture;)V

    .line 884
    return-void
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->clearBuffer([F)V

    .line 701
    return-void
.end method

.method public clearBuffer([F)V
    .locals 5
    .param p1, "argb"    # [F

    .prologue
    const/4 v2, 0x0

    .line 690
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    const/4 v4, 0x0

    aget v4, p1, v4

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 695
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 696
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/high16 v1, 0x3f800000

    invoke-interface {v0, v2, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    goto :goto_0
.end method

.method public deleteBuffer(I)V
    .locals 2
    .param p1, "bufferId"    # I

    .prologue
    .line 739
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v1

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/IntArray;->add(I)V

    .line 741
    monitor-exit v1

    .line 742
    return-void

    .line 741
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteRecycledResources()V
    .locals 7

    .prologue
    .line 746
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v2

    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    .line 748
    .local v0, "ids":Lcom/android/gallery3d/util/IntArray;
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 749
    sget-object v1, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/android/gallery3d/glrenderer/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 750
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->clear()V

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    .line 754
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 755
    sget-object v1, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/android/gallery3d/glrenderer/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 756
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->clear()V

    .line 758
    :cond_1
    monitor-exit v2

    .line 759
    return-void

    .line 758
    .end local v0    # "ids":Lcom/android/gallery3d/util/IntArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public drawLine(FFFFLcom/android/gallery3d/glrenderer/GLPaint;)V
    .locals 4
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "paint"    # Lcom/android/gallery3d/glrenderer/GLPaint;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 198
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/glrenderer/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setColorMode(IF)V

    .line 199
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineWidth(F)V

    .line 201
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    .line 203
    sub-float v1, p3, p1

    sub-float v2, p4, p2

    const/high16 v3, 0x3f800000

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    .line 205
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 206
    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 208
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    .line 209
    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    .line 210
    return-void
.end method

.method public drawMesh(Lcom/android/gallery3d/glrenderer/BasicTexture;IIIIII)V
    .locals 8
    .param p1, "tex"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xyBuffer"    # I
    .param p5, "uvBuffer"    # I
    .param p6, "indexBuffer"    # I
    .param p7, "indexCount"    # I

    .prologue
    const/4 v4, 0x0

    const v7, 0x8892

    const/16 v6, 0x1406

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 283
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    .line 284
    .local v0, "alpha":F
    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f733333

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 288
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    .line 292
    const/high16 v1, 0x3f800000

    const/high16 v3, 0x3f800000

    invoke-direct {p0, v4, v4, v1, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    .line 294
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    .line 295
    int-to-float v1, p2

    int-to-float v3, p3

    invoke-virtual {p0, v1, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    .line 297
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-interface {v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 299
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 300
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 302
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 303
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 305
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v3, 0x8893

    invoke-interface {v1, v3, p6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 306
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v3, 0x5

    const/16 v4, 0x1401

    invoke-interface {v1, v3, p7, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 309
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBoxCoords:I

    invoke-interface {v1, v7, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 310
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 311
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 313
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    .line 314
    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 286
    goto :goto_1
.end method

.method public drawMixed(Lcom/android/gallery3d/glrenderer/BasicTexture;IFIIII)V
    .locals 9
    .param p1, "from"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "toColor"    # I
    .param p3, "ratio"    # F
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I

    .prologue
    .line 452
    iget v8, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawMixed(Lcom/android/gallery3d/glrenderer/BasicTexture;IFIIIIF)V

    .line 453
    return-void
.end method

.method public drawMixed(Lcom/android/gallery3d/glrenderer/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 7
    .param p1, "from"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "toColor"    # I
    .param p3, "ratio"    # F
    .param p4, "source"    # Landroid/graphics/RectF;
    .param p5, "target"    # Landroid/graphics/RectF;

    .prologue
    const/4 v1, 0x0

    .line 515
    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    const v0, 0x3c23d70a

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_2

    .line 518
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 520
    :cond_2
    const/high16 v0, 0x3f800000

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_3

    .line 521
    iget v1, p5, Landroid/graphics/RectF;->left:F

    iget v2, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->fillRect(FFFFI)V

    goto :goto_0

    .line 525
    :cond_3
    iget v6, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    .line 528
    .local v6, "alpha":F
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 529
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 530
    iget-object p4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 531
    iget-object p5, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 533
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x3f733333

    cmpg-float v0, v6, v0

    if-gez v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 536
    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const v1, 0x8570

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    .line 540
    invoke-direct {p0, p2, p3, v6}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setMixedColor(IFF)V

    .line 541
    invoke-static {p4, p5, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/glrenderer/BasicTexture;)V

    .line 542
    invoke-direct {p0, p4}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(Landroid/graphics/RectF;)V

    .line 543
    iget v0, p5, Landroid/graphics/RectF;->left:F

    iget v1, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    .line 544
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const/16 v1, 0x1e01

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    goto :goto_0

    .line 533
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public drawRect(FFFFLcom/android/gallery3d/glrenderer/GLPaint;)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "paint"    # Lcom/android/gallery3d/glrenderer/GLPaint;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 180
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/glrenderer/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setColorMode(IF)V

    .line 181
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineWidth(F)V

    .line 183
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    .line 185
    const/high16 v1, 0x3f800000

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    .line 187
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 188
    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 190
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    .line 191
    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    .line 192
    return-void
.end method

.method public drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIII)V
    .locals 7
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 374
    iget v6, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIIIF)V

    .line 375
    return-void
.end method

.method public drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "target"    # Landroid/graphics/RectF;

    .prologue
    const/4 v1, 0x0

    .line 390
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 394
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 395
    iget-object p2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 396
    iget-object p3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 398
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    const v2, 0x3f733333

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 400
    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-static {p2, p3, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/glrenderer/BasicTexture;)V

    .line 402
    invoke-direct {p0, p2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(Landroid/graphics/RectF;)V

    .line 403
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    .line 404
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    goto :goto_0

    .line 398
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;[FIIII)V
    .locals 4
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "mTextureTransform"    # [F
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    const v2, 0x3f733333

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 412
    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 416
    :goto_1
    return-void

    .line 410
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 413
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords([F)V

    .line 414
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    .line 415
    int-to-float v0, p3

    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v3, p6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    goto :goto_1
.end method

.method public dumpStatisticsAndClear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 822
    const-string v1, "MESH:%d, TEX_OES:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureOES:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountFillRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, "line":Ljava/lang/String;
    iput v5, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    .line 827
    iput v5, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureRect:I

    .line 828
    iput v5, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureOES:I

    .line 829
    iput v5, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountFillRect:I

    .line 830
    iput v5, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    .line 831
    const-string v1, "GLCanvasImp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return-void
.end method

.method public endRenderTarget()V
    .locals 3

    .prologue
    .line 874
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/glrenderer/RawTexture;

    .line 875
    .local v0, "texture":Lcom/android/gallery3d/glrenderer/RawTexture;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setRenderTarget(Lcom/android/gallery3d/glrenderer/RawTexture;)V

    .line 876
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->restore()V

    .line 877
    return-void
.end method

.method public fillRect(FFFFI)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "color"    # I

    .prologue
    const/4 v3, 0x0

    .line 214
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v1, p5, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setColorMode(IF)V

    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 217
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    .line 219
    const/high16 v1, 0x3f800000

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    .line 221
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 222
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 224
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    .line 225
    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountFillRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountFillRect:I

    .line 226
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    return v0
.end method

.method public getBounds(Landroid/graphics/Rect;IIII)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 991
    return-void
.end method

.method public getGLId()Lcom/android/gallery3d/glrenderer/GLId;
    .locals 1

    .prologue
    .line 995
    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    return-object v0
.end method

.method public initializeTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 950
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 951
    .local v0, "target":I
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 952
    invoke-static {v0, v3, p2, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 953
    return-void
.end method

.method public initializeTextureSize(Lcom/android/gallery3d/glrenderer/BasicTexture;II)V
    .locals 10
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "format"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 941
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v1

    .line 942
    .local v1, "target":I
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v3

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 943
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v4

    .line 944
    .local v4, "width":I
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v5

    .line 945
    .local v5, "height":I
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v9, 0x0

    move v3, p2

    move v6, v2

    move v7, p2

    move v8, p3

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 946
    return-void
.end method

.method public multiplyAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 168
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 169
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    .line 170
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiplyMatrix([FI)V
    .locals 6
    .param p1, "matrix"    # [F
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    .line 262
    .local v0, "temp":[F
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 263
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    return-void
.end method

.method public recoverFromLightCycle()V
    .locals 0

    .prologue
    .line 986
    return-void
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 787
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    .line 789
    .local v0, "config":Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->restore(Lcom/android/gallery3d/glrenderer/GLES11Canvas;)V

    .line 790
    invoke-direct {p0, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->freeRestoreConfig(Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;)V

    .line 791
    return-void
.end method

.method public rotate(FFFF)V
    .locals 9
    .param p1, "angle"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 252
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 257
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    .local v0, "temp":[F
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 254
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 255
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    move-object v2, v0

    move v3, v8

    move v5, v1

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 256
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-static {v0, v8, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public save()V
    .locals 1

    .prologue
    .line 763
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->save(I)V

    .line 764
    return-void
.end method

.method public save(I)V
    .locals 5
    .param p1, "saveFlags"    # I

    .prologue
    const/4 v4, 0x0

    .line 768
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->obtainRestoreConfig()Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    move-result-object v0

    .line 770
    .local v0, "config":Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 771
    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    iput v1, v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mAlpha:F

    .line 776
    :goto_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    iget-object v2, v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    return-void

    .line 773
    :cond_0
    const/high16 v1, -0x40800000

    iput v1, v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mAlpha:F

    goto :goto_0

    .line 779
    :cond_1
    iget-object v1, v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    const/high16 v2, -0x800000

    aput v2, v1, v4

    goto :goto_1
.end method

.method public scale(FFF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "sz"    # F

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 248
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 157
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 158
    iput p1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    .line 159
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v6, 0x3f800000

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 129
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 131
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    if-nez v2, :cond_0

    .line 132
    iput p1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mScreenWidth:I

    .line 133
    iput p2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mScreenHeight:I

    .line 135
    :cond_0
    iput v6, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 138
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    invoke-interface {v0, v3, v3, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    .line 139
    const/16 v2, 0x1701

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 140
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 141
    int-to-float v2, p1

    int-to-float v4, p2

    invoke-static {v0, v5, v2, v5, v4}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 143
    const/16 v2, 0x1700

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 144
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 146
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    .line 147
    .local v1, "matrix":[F
    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 149
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    if-nez v2, :cond_1

    .line 150
    int-to-float v2, p2

    invoke-static {v1, v3, v5, v2, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 151
    const/high16 v2, -0x40800000

    invoke-static {v1, v3, v6, v2, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 153
    :cond_1
    return-void

    .end local v0    # "gl":Ljavax/microedition/khronos/opengles/GL11;
    .end local v1    # "matrix":[F
    :cond_2
    move v2, v3

    .line 129
    goto :goto_0
.end method

.method public setTextureParameters(Lcom/android/gallery3d/glrenderer/BasicTexture;)V
    .locals 9
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;

    .prologue
    const v8, 0x812f

    const/4 v7, 0x0

    const v6, 0x46180400

    .line 919
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v2

    .line 920
    .local v2, "width":I
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v0

    .line 924
    .local v0, "height":I
    sget-object v3, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    const/4 v4, 0x0

    aput v4, v3, v7

    .line 925
    sget-object v3, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    const/4 v4, 0x1

    int-to-float v5, v0

    aput v5, v3, v4

    .line 926
    sget-object v3, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    const/4 v4, 0x2

    int-to-float v5, v2

    aput v5, v3, v4

    .line 927
    sget-object v3, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    const/4 v4, 0x3

    neg-int v5, v0

    int-to-float v5, v5

    aput v5, v3, v4

    .line 930
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v1

    .line 931
    .local v1, "target":I
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v4

    invoke-interface {v3, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 932
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v4, 0x8b9d

    sget-object v5, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    invoke-interface {v3, v1, v4, v5, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 933
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2802

    invoke-interface {v3, v1, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 934
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2803

    invoke-interface {v3, v1, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 935
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2801

    invoke-interface {v3, v1, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 936
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2800

    invoke-interface {v3, v1, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 937
    return-void
.end method

.method public texSubImage2D(Lcom/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V
    .locals 7
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "format"    # I
    .param p6, "type"    # I

    .prologue
    .line 958
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 959
    .local v0, "target":I
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 960
    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 961
    return-void
.end method

.method public translate(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    .line 239
    .local v0, "m":[F
    const/16 v1, 0xc

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 240
    const/16 v1, 0xd

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 241
    const/16 v1, 0xe

    aget v2, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 242
    const/16 v1, 0xf

    aget v2, v0, v1

    const/4 v3, 0x3

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x7

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 243
    return-void
.end method

.method public translate(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 231
    return-void
.end method

.method public unloadTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z
    .locals 3
    .param p1, "t"    # Lcom/android/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 730
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v1

    .line 731
    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 733
    :goto_0
    return v0

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    iget v2, p1, Lcom/android/gallery3d/glrenderer/BasicTexture;->mId:I

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/util/IntArray;->add(I)V

    .line 733
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uploadBuffer(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 970
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result v0

    return v0
.end method

.method public uploadBuffer(Ljava/nio/FloatBuffer;)I
    .locals 1
    .param p1, "buf"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 965
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result v0

    return v0
.end method
