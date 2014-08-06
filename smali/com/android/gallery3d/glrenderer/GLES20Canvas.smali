.class public Lcom/android/gallery3d/glrenderer/GLES20Canvas;
.super Ljava/lang/Object;
.source "GLES20Canvas.java"

# interfaces
.implements Lcom/android/gallery3d/glrenderer/GLCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;,
        Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;,
        Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    }
.end annotation


# static fields
.field private static final BOUNDS_COORDINATES:[F

.field private static final BOX_COORDINATES:[F

.field private static final TAG:Ljava/lang/String;

.field private static final mGLId:Lcom/android/gallery3d/glrenderer/GLId;


# instance fields
.field private mAlphas:[F

.field private mBoxCoordinates:I

.field private mCountDrawLine:I

.field private mCountDrawMesh:I

.field private mCountFillRect:I

.field private mCountTextureRect:I

.field private mCurrentAlphaIndex:I

.field private mCurrentMatrixIndex:I

.field private final mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

.field mDrawParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private mDrawProgram:I

.field private mFrameBuffer:[I

.field private mHeight:I

.field private mMatrices:[F

.field mMeshParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private mMeshProgram:I

.field mOesTextureParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private mOesTextureProgram:I

.field private mProjectionMatrix:[F

.field private mSaveFlags:Lcom/android/gallery3d/util/IntArray;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTargetTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/glrenderer/RawTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempColor:[F

.field private final mTempIntArray:[I

.field private final mTempMatrix:[F

.field private final mTempSourceRect:Landroid/graphics/RectF;

.field private final mTempTargetRect:Landroid/graphics/RectF;

.field private final mTempTextureMatrix:[F

.field mTextureParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private mTextureProgram:I

.field private final mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    .line 51
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->BOX_COORDINATES:[F

    .line 64
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->BOUNDS_COORDINATES:[F

    .line 267
    new-instance v0, Lcom/android/gallery3d/glrenderer/GLES20IdImpl;

    invoke-direct {v0}, Lcom/android/gallery3d/glrenderer/GLES20IdImpl;-><init>()V

    sput-object v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    return-void

    .line 51
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

    .line 64
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000
        0x3f800000
        0x3f800000
        0x0
        0x3f800000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 269
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/16 v7, 0x80

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    .line 140
    const/16 v7, 0x8

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    .line 141
    new-instance v7, Lcom/android/gallery3d/util/IntArray;

    invoke-direct {v7}, Lcom/android/gallery3d/util/IntArray;-><init>()V

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mSaveFlags:Lcom/android/gallery3d/util/IntArray;

    .line 143
    iput v10, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    .line 144
    iput v10, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .line 151
    const/16 v7, 0x10

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    .line 216
    new-array v7, v13, [Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string v9, "aPosition"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v10

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v9, "uMatrix"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v11

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v9, "uColor"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v12

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 221
    const/4 v7, 0x5

    new-array v7, v7, [Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string v9, "aPosition"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v10

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v9, "uMatrix"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v11

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v9, "uTextureMatrix"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v12

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v9, "uTextureSampler"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v13

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v9, "uAlpha"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v14

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTextureParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 228
    const/4 v7, 0x5

    new-array v7, v7, [Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string v9, "aPosition"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v10

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v9, "uMatrix"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v11

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v9, "uTextureMatrix"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v12

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v9, "uTextureSampler"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v13

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v9, "uAlpha"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v14

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mOesTextureParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 235
    const/4 v7, 0x5

    new-array v7, v7, [Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string v9, "aPosition"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v10

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v9, "uMatrix"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v11

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string v9, "aTextureCoordinate"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v12

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v9, "uTextureSampler"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v13

    new-instance v8, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v9, "uAlpha"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v14

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 243
    new-instance v7, Lcom/android/gallery3d/util/IntArray;

    invoke-direct {v7}, Lcom/android/gallery3d/util/IntArray;-><init>()V

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    .line 244
    new-instance v7, Lcom/android/gallery3d/util/IntArray;

    invoke-direct {v7}, Lcom/android/gallery3d/util/IntArray;-><init>()V

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    .line 247
    iput v10, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    .line 248
    iput v10, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    .line 249
    iput v10, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    .line 250
    iput v10, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    .line 254
    new-array v7, v11, [I

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mFrameBuffer:[I

    .line 257
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    .line 260
    const/16 v7, 0x20

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    .line 261
    new-array v7, v14, [F

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    .line 262
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    .line 263
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    .line 264
    const/16 v7, 0x10

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    .line 265
    new-array v7, v11, [I

    iput-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    .line 270
    iget-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    invoke-static {v7, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 271
    iget-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v8, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v7, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 272
    iget-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v8, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    const/high16 v9, 0x3f800000

    aput v9, v7, v8

    .line 273
    iget-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v7, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->BOX_COORDINATES:[F

    invoke-static {v7}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 276
    .local v0, "boxBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->uploadBuffer(Ljava/nio/FloatBuffer;)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mBoxCoordinates:I

    .line 278
    const v7, 0x8b31

    const-string v8, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n}\n"

    invoke-static {v7, v8}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 279
    .local v2, "drawVertexShader":I
    const v7, 0x8b31

    const-string v8, "uniform mat4 uMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = (uTextureMatrix * pos).xy;\n}\n"

    invoke-static {v7, v8}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v6

    .line 280
    .local v6, "textureVertexShader":I
    const v7, 0x8b31

    const-string v8, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = aTextureCoordinate;\n}\n"

    invoke-static {v7, v8}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 281
    .local v3, "meshVertexShader":I
    const v7, 0x8b30

    const-string v8, "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n"

    invoke-static {v7, v8}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 282
    .local v1, "drawFragmentShader":I
    const v7, 0x8b30

    const-string v8, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    invoke-static {v7, v8}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v5

    .line 283
    .local v5, "textureFragmentShader":I
    const v7, 0x8b30

    const-string v8, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    invoke-static {v7, v8}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v4

    .line 286
    .local v4, "oesTextureFragmentShader":I
    iget-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v2, v1, v7}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mDrawProgram:I

    .line 287
    iget-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTextureParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v6, v5, v7}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTextureProgram:I

    .line 289
    iget-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mOesTextureParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v6, v4, v7}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mOesTextureProgram:I

    .line 291
    iget-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v3, v5, v7}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMeshProgram:I

    .line 292
    const/16 v7, 0x303

    invoke-static {v11, v7}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 293
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 294
    return-void
.end method

.method private assembleProgram(II[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I
    .locals 6
    .param p1, "vertexShader"    # I
    .param p2, "fragmentShader"    # I
    .param p3, "params"    # [Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .prologue
    const/4 v4, 0x0

    .line 306
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 307
    .local v2, "program":I
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 308
    if-nez v2, :cond_0

    .line 309
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create GL program: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 311
    :cond_0
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 312
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 313
    invoke-static {v2, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 314
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 315
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 316
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 317
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    .line 318
    .local v1, "mLinkStatus":[I
    const v3, 0x8b82

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 319
    aget v3, v1, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 320
    sget-object v3, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    const-string v4, "Could not link program: "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget-object v3, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 323
    const/4 v2, 0x0

    .line 325
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_2

    .line 326
    aget-object v3, p3, v0

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->loadHandle(I)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_2
    return v2
.end method

.method public static checkError()V
    .locals 5

    .prologue
    .line 964
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 965
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 966
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 967
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GL error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 969
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method private static checkFramebufferStatus()V
    .locals 5

    .prologue
    .line 882
    const v2, 0x8d40

    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    .line 883
    .local v1, "status":I
    const v2, 0x8cd5

    if-eq v1, v2, :cond_0

    .line 884
    const-string v0, ""

    .line 885
    .local v0, "msg":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 899
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

    .line 887
    :pswitch_1
    const-string v0, "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT"

    .line 888
    goto :goto_0

    .line 890
    :pswitch_2
    const-string v0, "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    .line 891
    goto :goto_0

    .line 893
    :pswitch_3
    const-string v0, "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"

    .line 894
    goto :goto_0

    .line 896
    :pswitch_4
    const-string v0, "GL_FRAMEBUFFER_UNSUPPORTED"

    goto :goto_0

    .line 901
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void

    .line 885
    nop

    :pswitch_data_0
    .packed-switch 0x8cd6
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/glrenderer/BasicTexture;)V
    .locals 9
    .param p0, "source"    # Landroid/graphics/RectF;
    .param p1, "target"    # Landroid/graphics/RectF;
    .param p2, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 644
    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v3

    .line 645
    .local v3, "width":I
    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v0

    .line 646
    .local v0, "height":I
    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v2

    .line 647
    .local v2, "texWidth":I
    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v1

    .line 649
    .local v1, "texHeight":I
    iget v6, p0, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->left:F

    .line 650
    iget v6, p0, Landroid/graphics/RectF;->right:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->right:F

    .line 651
    iget v6, p0, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->top:F

    .line 652
    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->bottom:F

    .line 655
    int-to-float v6, v3

    int-to-float v7, v2

    div-float v4, v6, v7

    .line 656
    .local v4, "xBound":F
    iget v6, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    .line 657
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

    .line 658
    iput v4, p0, Landroid/graphics/RectF;->right:F

    .line 660
    :cond_0
    int-to-float v6, v0

    int-to-float v7, v1

    div-float v5, v6, v7

    .line 661
    .local v5, "yBound":F
    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    .line 662
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

    .line 663
    iput v5, p0, Landroid/graphics/RectF;->bottom:F

    .line 665
    :cond_1
    return-void
.end method

.method private static copyTextureCoordinates(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;)V
    .locals 8
    .param p0, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p1, "outRect"    # Landroid/graphics/RectF;

    .prologue
    .line 593
    const/4 v1, 0x0

    .line 594
    .local v1, "left":I
    const/4 v3, 0x0

    .line 595
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v2

    .line 596
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v0

    .line 597
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->hasBorder()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 598
    const/4 v1, 0x1

    .line 599
    const/4 v3, 0x1

    .line 600
    add-int/lit8 v2, v2, -0x1

    .line 601
    add-int/lit8 v0, v0, -0x1

    .line 603
    :cond_0
    int-to-float v4, v1

    int-to-float v5, v3

    int-to-float v6, v2

    int-to-float v7, v0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 604
    return-void
.end method

.method private static createBuffer([F)Ljava/nio/FloatBuffer;
    .locals 5
    .param p0, "values"    # [F

    .prologue
    const/4 v4, 0x0

    .line 298
    array-length v2, p0

    mul-int/lit8 v1, v2, 0x4

    .line 299
    .local v1, "size":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 301
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    array-length v2, p0

    invoke-virtual {v0, p0, v4, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 302
    return-object v0
.end method

.method private draw(IIIFFFFIF)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "color"    # I
    .param p9, "lineWidth"    # F

    .prologue
    .line 498
    move/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {p0, p2, v0, v1}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->prepareDraw(IIF)V

    .line 499
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    move-object v2, p0

    move v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->draw([Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;IIFFFF)V

    .line 500
    return-void
.end method

.method private draw(IIIFFFFLcom/android/gallery3d/glrenderer/GLPaint;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "paint"    # Lcom/android/gallery3d/glrenderer/GLPaint;

    .prologue
    .line 493
    invoke-virtual/range {p8 .. p8}, Lcom/android/gallery3d/glrenderer/GLPaint;->getColor()I

    move-result v8

    invoke-virtual/range {p8 .. p8}, Lcom/android/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->draw(IIIFFFFIF)V

    .line 494
    return-void
.end method

.method private draw([Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;IIFFFF)V
    .locals 8
    .param p1, "params"    # [Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    .param p2, "type"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F

    .prologue
    const/4 v7, 0x0

    .line 556
    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setMatrix([Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;FFFF)V

    .line 557
    aget-object v0, p1, v7

    iget v6, v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    .line 558
    .local v6, "positionHandle":I
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 559
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 560
    invoke-static {p2, v7, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 561
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 562
    invoke-static {v6}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 563
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 564
    return-void
.end method

.method private drawTextureRect(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "target"    # Landroid/graphics/RectF;

    .prologue
    .line 629
    invoke-direct {p0, p2}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setTextureMatrix(Landroid/graphics/RectF;)V

    .line 630
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    invoke-direct {p0, p1, v0, p3}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcom/android/gallery3d/glrenderer/BasicTexture;[FLandroid/graphics/RectF;)V

    .line 631
    return-void
.end method

.method private drawTextureRect(Lcom/android/gallery3d/glrenderer/BasicTexture;[FLandroid/graphics/RectF;)V
    .locals 8
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "textureMatrix"    # [F
    .param p3, "target"    # Landroid/graphics/RectF;

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x3f800000

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 668
    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->prepareTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    move-result-object v1

    .line 669
    .local v1, "params":[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    invoke-direct {p0, v1, v3}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setPosition([Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;I)V

    .line 670
    aget-object v0, v1, v6

    iget v0, v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 671
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 672
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isFlippedVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {p0, v6}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->save(I)V

    .line 674
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->translate(FF)V

    .line 675
    const/high16 v0, -0x40800000

    invoke-virtual {p0, v5, v0, v5}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->scale(FFF)V

    .line 676
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v4, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->translate(FF)V

    .line 678
    :cond_0
    const/4 v2, 0x5

    const/4 v3, 0x4

    iget v4, p3, Landroid/graphics/RectF;->left:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->draw([Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;IIFFFF)V

    .line 680
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isFlippedVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->restore()V

    .line 683
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    .line 684
    return-void
.end method

.method private enableBlending(Z)V
    .locals 1
    .param p1, "enableBlending"    # Z

    .prologue
    const/16 v0, 0xbe2

    .line 535
    if-eqz p1, :cond_0

    .line 536
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 537
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 542
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 540
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    goto :goto_0
.end method

.method private getColor(I)[F
    .locals 7
    .param p1, "color"    # I

    .prologue
    const/high16 v6, 0x437f0000

    .line 523
    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v5

    mul-float v0, v4, v5

    .line 524
    .local v0, "alpha":F
    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    mul-float v3, v4, v0

    .line 525
    .local v3, "red":F
    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    mul-float v2, v4, v0

    .line 526
    .local v2, "green":F
    and-int/lit16 v4, p1, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    mul-float v1, v4, v0

    .line 527
    .local v1, "blue":F
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    const/4 v5, 0x0

    aput v3, v4, v5

    .line 528
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    const/4 v5, 0x1

    aput v2, v4, v5

    .line 529
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    const/4 v5, 0x2

    aput v1, v4, v5

    .line 530
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    const/4 v5, 0x3

    aput v0, v4, v5

    .line 531
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    return-object v4
.end method

.method private getTargetTexture()Lcom/android/gallery3d/glrenderer/RawTexture;
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/glrenderer/RawTexture;

    return-object v0
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 1
    .param p0, "type"    # I
    .param p1, "shaderCode"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 337
    .local v0, "shader":I
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 338
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 339
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 340
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 342
    return v0
.end method

.method private prepareDraw(IIF)V
    .locals 9
    .param p1, "offset"    # I
    .param p2, "color"    # I
    .param p3, "lineWidth"    # F

    .prologue
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 503
    iget v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mDrawProgram:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 504
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 505
    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-lez v4, :cond_0

    .line 506
    invoke-static {p3}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 507
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 509
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->getColor(I)[F

    move-result-object v1

    .line 510
    .local v1, "colorArray":[F
    aget v4, v1, v7

    const/high16 v5, 0x3f800000

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    move v0, v2

    .line 511
    .local v0, "blendingEnabled":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->enableBlending(Z)V

    .line 512
    if-eqz v0, :cond_1

    .line 513
    aget v4, v1, v3

    aget v5, v1, v2

    aget v6, v1, v8

    aget v7, v1, v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    .line 514
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 517
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {v4, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 518
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v2, p1}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setPosition([Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;I)V

    .line 519
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 520
    return-void

    .end local v0    # "blendingEnabled":Z
    :cond_2
    move v0, v3

    .line 510
    goto :goto_0
.end method

.method private prepareTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;I[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)V
    .locals 3
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "program"    # I
    .param p3, "params"    # [Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .prologue
    const/4 v1, 0x0

    .line 701
    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 702
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 703
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v0

    const v2, 0x3f733333

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->enableBlending(Z)V

    .line 704
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 705
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 706
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->onBind(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z

    .line 707
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 708
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 709
    const/4 v0, 0x3

    aget-object v0, p3, v0

    iget v0, v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 710
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 711
    const/4 v0, 0x4

    aget-object v0, p3, v0

    iget v0, v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 712
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 713
    return-void

    :cond_1
    move v0, v1

    .line 703
    goto :goto_0
.end method

.method private prepareTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    .locals 4
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 689
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v2

    const/16 v3, 0xde1

    if-ne v2, v3, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTextureParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 691
    .local v0, "params":[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTextureProgram:I

    .line 696
    .local v1, "program":I
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->prepareTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;I[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)V

    .line 697
    return-object v0

    .line 693
    .end local v0    # "params":[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    .end local v1    # "program":I
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mOesTextureParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 694
    .restart local v0    # "params":[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mOesTextureProgram:I

    .restart local v1    # "program":I
    goto :goto_0
.end method

.method private setMatrix([Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;FFFF)V
    .locals 10
    .param p1, "params"    # [Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 567
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 568
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/high16 v2, 0x3f800000

    invoke-static {v0, v1, p4, p5, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 569
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    iget-object v6, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    move v3, v9

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 570
    aget-object v0, p1, v8

    iget v0, v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    invoke-static {v0, v8, v1, v2, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 571
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 572
    return-void
.end method

.method private setPosition([Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;I)V
    .locals 7
    .param p1, "params"    # [Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    .param p2, "offset"    # I

    .prologue
    const v6, 0x8892

    const/4 v3, 0x0

    .line 545
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mBoxCoordinates:I

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 546
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 547
    aget-object v0, p1, v3

    iget v0, v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x8

    mul-int/lit8 v5, p2, 0x8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 549
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 550
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 551
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 552
    return-void
.end method

.method private setRenderTarget(Lcom/android/gallery3d/glrenderer/BasicTexture;Lcom/android/gallery3d/glrenderer/RawTexture;)V
    .locals 5
    .param p1, "oldTexture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "texture"    # Lcom/android/gallery3d/glrenderer/RawTexture;

    .prologue
    const/4 v1, 0x1

    const v4, 0x8d40

    const/4 v3, 0x0

    .line 852
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 853
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mFrameBuffer:[I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 854
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 855
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mFrameBuffer:[I

    aget v0, v0, v3

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 856
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 864
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    .line 865
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mScreenWidth:I

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mScreenHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setSize(II)V

    .line 879
    :goto_1
    return-void

    .line 857
    :cond_1
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 858
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 859
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 860
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mFrameBuffer:[I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 861
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    goto :goto_0

    .line 867
    :cond_2
    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setSize(II)V

    .line 869
    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/RawTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 870
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/glrenderer/RawTexture;->prepare(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 873
    :cond_3
    const v0, 0x8ce0

    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/RawTexture;->getTarget()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/RawTexture;->getId()I

    move-result v2

    invoke-static {v4, v0, v1, v2, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 875
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 877
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkFramebufferStatus()V

    goto :goto_1
.end method

.method private setTextureMatrix(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "source"    # Landroid/graphics/RectF;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    aput v2, v0, v1

    .line 635
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    aput v2, v0, v1

    .line 636
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    const/16 v1, 0xc

    iget v2, p1, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    .line 637
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    const/16 v1, 0xd

    iget v2, p1, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    .line 638
    return-void
.end method

.method private uploadBuffer(Ljava/nio/Buffer;I)I
    .locals 6
    .param p1, "buffer"    # Ljava/nio/Buffer;
    .param p2, "elementSize"    # I

    .prologue
    const v5, 0x8892

    const/4 v4, 0x0

    .line 952
    sget-object v1, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    invoke-interface {v1, v2, v3, v4}, Lcom/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    .line 953
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 954
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    aget v0, v1, v4

    .line 955
    .local v0, "bufferId":I
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 956
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 957
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    mul-int/2addr v1, p2

    const v2, 0x88e4

    invoke-static {v5, v1, p1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 959
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 960
    return v0
.end method


# virtual methods
.method public beginRenderTarget(Lcom/android/gallery3d/glrenderer/RawTexture;)V
    .locals 2
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/RawTexture;

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->save()V

    .line 842
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->getTargetTexture()Lcom/android/gallery3d/glrenderer/RawTexture;

    move-result-object v0

    .line 843
    .local v0, "oldTexture":Lcom/android/gallery3d/glrenderer/RawTexture;
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setRenderTarget(Lcom/android/gallery3d/glrenderer/BasicTexture;Lcom/android/gallery3d/glrenderer/RawTexture;)V

    .line 845
    return-void
.end method

.method public clearBuffer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 363
    const/high16 v0, 0x3f800000

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 364
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 365
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 366
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 367
    return-void
.end method

.method public clearBuffer([F)V
    .locals 4
    .param p1, "argb"    # [F

    .prologue
    .line 371
    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 372
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 373
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 374
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 375
    return-void
.end method

.method public deleteBuffer(I)V
    .locals 2
    .param p1, "bufferId"    # I

    .prologue
    .line 798
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v1

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/IntArray;->add(I)V

    .line 800
    monitor-exit v1

    .line 801
    return-void

    .line 800
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
    .line 805
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v2

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    .line 807
    .local v0, "ids":Lcom/android/gallery3d/util/IntArray;
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    invoke-virtual {v1}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 808
    sget-object v1, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/android/gallery3d/glrenderer/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 809
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->clear()V

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    .line 813
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 814
    sget-object v1, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/android/gallery3d/glrenderer/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 815
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->clear()V

    .line 817
    :cond_1
    monitor-exit v2

    .line 818
    return-void

    .line 817
    .end local v0    # "ids":Lcom/android/gallery3d/util/IntArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public drawLine(FFFFLcom/android/gallery3d/glrenderer/GLPaint;)V
    .locals 9
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "paint"    # Lcom/android/gallery3d/glrenderer/GLPaint;

    .prologue
    .line 480
    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    sub-float v6, p3, p1

    sub-float v7, p4, p2

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->draw(IIIFFFFLcom/android/gallery3d/glrenderer/GLPaint;)V

    .line 482
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    .line 483
    return-void
.end method

.method public drawMesh(Lcom/android/gallery3d/glrenderer/BasicTexture;IIIIII)V
    .locals 8
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xyBuffer"    # I
    .param p5, "uvBuffer"    # I
    .param p6, "indexBuffer"    # I
    .param p7, "indexCount"    # I

    .prologue
    .line 718
    iget v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMeshProgram:I

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->prepareTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;I[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)V

    .line 720
    const v2, 0x8893

    invoke-static {v2, p6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 721
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 723
    const v2, 0x8892

    invoke-static {v2, p4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 724
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 725
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v0, v2, Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    .line 726
    .local v0, "positionHandle":I
    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 728
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 730
    const v2, 0x8892

    invoke-static {v2, p5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 731
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 732
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget v1, v2, Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    .line 733
    .local v1, "texCoordHandle":I
    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 735
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 736
    const v2, 0x8892

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 737
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 739
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 740
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 741
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 742
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 744
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    int-to-float v4, p2

    int-to-float v5, p3

    const/high16 v6, 0x3f800000

    const/high16 v7, 0x3f800000

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setMatrix([Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;FFFF)V

    .line 745
    const/4 v2, 0x5

    const/16 v3, 0x1401

    const/4 v4, 0x0

    invoke-static {v2, p7, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 746
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 748
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 749
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 750
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 751
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 752
    const v2, 0x8893

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 753
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 754
    iget v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    .line 755
    return-void
.end method

.method public drawMixed(Lcom/android/gallery3d/glrenderer/BasicTexture;IFIIII)V
    .locals 6
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "toColor"    # I
    .param p3, "ratio"    # F
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->copyTextureCoordinates(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;)V

    .line 760
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v1, p4

    int-to-float v2, p5

    add-int v3, p4, p6

    int-to-float v3, v3

    add-int v4, p5, p7

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 761
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->drawMixed(Lcom/android/gallery3d/glrenderer/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 762
    return-void
.end method

.method public drawMixed(Lcom/android/gallery3d/glrenderer/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 10
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "toColor"    # I
    .param p3, "ratio"    # F
    .param p4, "source"    # Landroid/graphics/RectF;
    .param p5, "target"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 766
    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->save(I)V

    .line 771
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v8

    .line 772
    .local v8, "currentAlpha":F
    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 774
    .local v6, "cappedRatio":F
    sub-float v0, v2, v6

    mul-float v9, v0, v8

    .line 775
    .local v9, "textureAlpha":F
    invoke-virtual {p0, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setAlpha(F)V

    .line 776
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 778
    mul-float v7, v6, v8

    .line 779
    .local v7, "colorAlpha":F
    invoke-virtual {p0, v7}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setAlpha(F)V

    .line 780
    iget v1, p5, Landroid/graphics/RectF;->left:F

    iget v2, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->fillRect(FFFFI)V

    .line 782
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->restore()V

    goto :goto_0
.end method

.method public drawRect(FFFFLcom/android/gallery3d/glrenderer/GLPaint;)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "paint"    # Lcom/android/gallery3d/glrenderer/GLPaint;

    .prologue
    .line 487
    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->draw(IIIFFFFLcom/android/gallery3d/glrenderer/GLPaint;)V

    .line 488
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    .line 489
    return-void
.end method

.method public drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIII)V
    .locals 5
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 583
    if-lez p4, :cond_0

    if-gtz p5, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->copyTextureCoordinates(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;)V

    .line 587
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p3

    add-int v3, p2, p4

    int-to-float v3, v3

    add-int v4, p3, p5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 588
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, p1}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/glrenderer/BasicTexture;)V

    .line 589
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "target"    # Landroid/graphics/RectF;

    .prologue
    const/4 v1, 0x0

    .line 608
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 612
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 614
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, p1}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/glrenderer/BasicTexture;)V

    .line 615
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;[FIIII)V
    .locals 5
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "textureTransform"    # [F
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 621
    if-lez p5, :cond_0

    if-gtz p6, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v1, p3

    int-to-float v2, p4

    add-int v3, p3, p5

    int-to-float v3, v3

    add-int v4, p4, p6

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 625
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcom/android/gallery3d/glrenderer/BasicTexture;[FLandroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public dumpStatisticsAndClear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 822
    const-string v1, "MESH:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "line":Ljava/lang/String;
    iput v5, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    .line 825
    iput v5, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    .line 826
    iput v5, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    .line 827
    iput v5, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    .line 828
    sget-object v1, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return-void
.end method

.method public endRenderTarget()V
    .locals 4

    .prologue
    .line 833
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/glrenderer/RawTexture;

    .line 834
    .local v0, "oldTexture":Lcom/android/gallery3d/glrenderer/RawTexture;
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->getTargetTexture()Lcom/android/gallery3d/glrenderer/RawTexture;

    move-result-object v1

    .line 835
    .local v1, "texture":Lcom/android/gallery3d/glrenderer/RawTexture;
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setRenderTarget(Lcom/android/gallery3d/glrenderer/BasicTexture;Lcom/android/gallery3d/glrenderer/RawTexture;)V

    .line 836
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->restore()V

    .line 837
    return-void
.end method

.method public fillRect(FFFFI)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "color"    # I

    .prologue
    .line 576
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->draw(IIIFFFFIF)V

    .line 578
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    .line 579
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getBounds(Landroid/graphics/Rect;IIII)V
    .locals 10
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/16 v9, 0x14

    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 994
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    int-to-float v4, p2

    int-to-float v5, p3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 995
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    int-to-float v2, p4

    int-to-float v3, p5

    const/high16 v4, 0x3f800000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 996
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    sget-object v6, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->BOUNDS_COORDINATES:[F

    move v3, v8

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 997
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    sget-object v6, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->BOUNDS_COORDINATES:[F

    const/4 v7, 0x4

    move v3, v9

    move v5, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 998
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    aget v0, v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 999
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    aget v0, v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1000
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/16 v1, 0x11

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1001
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/16 v1, 0x15

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1002
    invoke-virtual {p1}, Landroid/graphics/Rect;->sort()V

    .line 1003
    return-void
.end method

.method public getGLId()Lcom/android/gallery3d/glrenderer/GLId;
    .locals 1

    .prologue
    .line 1007
    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    return-object v0
.end method

.method public initializeTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 926
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 927
    .local v0, "target":I
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 928
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 929
    invoke-static {v0, v2, p2, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 930
    return-void
.end method

.method public initializeTextureSize(Lcom/android/gallery3d/glrenderer/BasicTexture;II)V
    .locals 9
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;
    .param p2, "format"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 916
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 917
    .local v0, "target":I
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 918
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 919
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v3

    .line 920
    .local v3, "width":I
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v4

    .line 921
    .local v4, "height":I
    const/4 v8, 0x0

    move v2, p2

    move v5, v1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 922
    return-void
.end method

.method public multiplyAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setAlpha(F)V

    .line 390
    return-void
.end method

.method public multiplyMatrix([FI)V
    .locals 6
    .param p1, "matrix"    # [F
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    .line 431
    .local v0, "temp":[F
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    .line 432
    .local v2, "currentMatrix":[F
    iget v3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .local v3, "index":I
    move-object v4, p1

    move v5, p2

    .line 433
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 434
    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    return-void
.end method

.method public recoverFromLightCycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 986
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mWidth:I

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mHeight:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 987
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 988
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 989
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 990
    return-void
.end method

.method public restore()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 467
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mSaveFlags:Lcom/android/gallery3d/util/IntArray;

    invoke-virtual {v4}, Lcom/android/gallery3d/util/IntArray;->removeLast()I

    move-result v1

    .line 468
    .local v1, "restoreFlags":I
    and-int/lit8 v4, v1, 0x1

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 469
    .local v0, "restoreAlpha":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 470
    iget v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    .line 472
    :cond_0
    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 473
    .local v2, "restoreMatrix":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 474
    iget v3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    add-int/lit8 v3, v3, -0x10

    iput v3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .line 476
    :cond_1
    return-void

    .end local v0    # "restoreAlpha":Z
    .end local v2    # "restoreMatrix":Z
    :cond_2
    move v0, v3

    .line 468
    goto :goto_0

    .restart local v0    # "restoreAlpha":Z
    :cond_3
    move v2, v3

    .line 472
    goto :goto_1
.end method

.method public rotate(FFFF)V
    .locals 9
    .param p1, "angle"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x10

    .line 417
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 426
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    .local v0, "temp":[F
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 421
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 422
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    .line 423
    .local v4, "matrix":[F
    iget v5, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .local v5, "index":I
    move-object v2, v0

    move v3, v8

    move-object v6, v0

    move v7, v1

    .line 424
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 425
    invoke-static {v0, v8, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public save()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->save(I)V

    .line 440
    return-void
.end method

.method public save(I)V
    .locals 8
    .param p1, "saveFlags"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 444
    and-int/lit8 v5, p1, 0x1

    if-ne v5, v3, :cond_4

    move v2, v3

    .line 445
    .local v2, "saveAlpha":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v0

    .line 447
    .local v0, "currentAlpha":F
    iget v5, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    .line 448
    iget-object v5, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    array-length v5, v5

    iget v6, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    if-gt v5, v6, :cond_0

    .line 449
    iget-object v5, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget-object v6, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    .line 451
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v6, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    aput v0, v5, v6

    .line 453
    .end local v0    # "currentAlpha":F
    :cond_1
    and-int/lit8 v5, p1, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 454
    .local v3, "saveMatrix":Z
    :goto_1
    if-eqz v3, :cond_3

    .line 455
    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .line 456
    .local v1, "currentIndex":I
    iget v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    add-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .line 457
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    array-length v4, v4

    iget v5, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    if-gt v4, v5, :cond_2

    .line 458
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget-object v5, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    .line 460
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget-object v5, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v6, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/16 v7, 0x10

    invoke-static {v4, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    .end local v1    # "currentIndex":I
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mSaveFlags:Lcom/android/gallery3d/util/IntArray;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/util/IntArray;->add(I)V

    .line 463
    return-void

    .end local v2    # "saveAlpha":Z
    .end local v3    # "saveMatrix":Z
    :cond_4
    move v2, v4

    .line 444
    goto :goto_0

    .restart local v2    # "saveAlpha":Z
    :cond_5
    move v3, v4

    .line 453
    goto :goto_1
.end method

.method public scale(FFF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "sz"    # F

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 413
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    aput p1, v0, v1

    .line 385
    return-void
.end method

.method public setSize(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v6, -0x40800000

    const/4 v1, 0x0

    const/high16 v7, 0x3f800000

    const/4 v2, 0x0

    .line 347
    iput p1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mWidth:I

    .line 348
    iput p2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mHeight:I

    .line 349
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mWidth:I

    iget v3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mHeight:I

    invoke-static {v1, v1, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 350
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 351
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 352
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    int-to-float v3, p1

    int-to-float v5, p2

    move v4, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 353
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->getTargetTexture()Lcom/android/gallery3d/glrenderer/RawTexture;

    move-result-object v0

    if-nez v0, :cond_0

    .line 354
    iput p1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mScreenWidth:I

    .line 355
    iput p2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mScreenHeight:I

    .line 356
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    int-to-float v3, p2

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 357
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1, v7, v6, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 359
    :cond_0
    return-void
.end method

.method public setTextureParameters(Lcom/android/gallery3d/glrenderer/BasicTexture;)V
    .locals 4
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;

    .prologue
    const v3, 0x812f

    const v2, 0x46180400

    .line 905
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 906
    .local v0, "target":I
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 907
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 908
    const/16 v1, 0x2802

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 909
    const/16 v1, 0x2803

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 910
    const/16 v1, 0x2801

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 911
    const/16 v1, 0x2800

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 912
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
    .line 935
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 936
    .local v0, "target":I
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 937
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 938
    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 939
    return-void
.end method

.method public translate(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 402
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .line 403
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    .line 404
    .local v1, "m":[F
    add-int/lit8 v2, v0, 0xc

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x0

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x4

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 405
    add-int/lit8 v2, v0, 0xd

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x1

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x5

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 406
    add-int/lit8 v2, v0, 0xe

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x2

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x6

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 407
    add-int/lit8 v2, v0, 0xf

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x3

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x7

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 408
    return-void
.end method

.method public translate(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 395
    return-void
.end method

.method public unloadTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z
    .locals 4
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 787
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isLoaded()Z

    move-result v0

    .line 788
    .local v0, "unload":Z
    if-eqz v0, :cond_0

    .line 789
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v2

    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/util/IntArray;->add(I)V

    .line 791
    monitor-exit v2

    .line 793
    :cond_0
    return v0

    .line 791
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public uploadBuffer(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 948
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result v0

    return v0
.end method

.method public uploadBuffer(Ljava/nio/FloatBuffer;)I
    .locals 1
    .param p1, "buf"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 943
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result v0

    return v0
.end method
