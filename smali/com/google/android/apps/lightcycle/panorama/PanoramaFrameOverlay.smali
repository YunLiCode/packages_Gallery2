.class public Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;
.super Lcom/google/android/apps/lightcycle/opengl/DrawableGL;
.source "PanoramaFrameOverlay.java"


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

.field private mDrawOutlineOnly:Z

.field private mInitialized:Z

.field private mNumIndices:I

.field private mNumOutlineIndices:I

.field private mOutlineIndices:Ljava/nio/ShortBuffer;

.field private mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/Shader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;-><init>()V

    .line 31
    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mNumIndices:I

    .line 32
    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mNumOutlineIndices:I

    .line 33
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mInitialized:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    .line 36
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mDrawOutlineOnly:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mAllocatedTextures:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public createTexture(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 46
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 47
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;-><init>()V

    .line 48
    .local v0, "texture":Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mAllocatedTextures:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 50
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->setIndex(I)V

    .line 51
    return-void
.end method

.method public drawObject([F)V
    .locals 5
    .param p1, "transform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1403

    const/4 v3, 0x0

    .line 167
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mInitialized:Z

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mDrawOutlineOnly:Z

    if-nez v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Shader;->bind()V

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTexCoords(Ljava/nio/FloatBuffer;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTransform([F)V

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->bind(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mNumIndices:I

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v4, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Shader;->bind()V

    .line 192
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTransform([F)V

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 195
    const/high16 v0, 0x40400000

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 196
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mNumOutlineIndices:I

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v4, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public freeGLMemory()V
    .locals 3

    .prologue
    .line 206
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mAllocatedTextures:Ljava/util/ArrayList;

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

    .line 207
    .local v1, "texture":Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->recycle()V

    goto :goto_0

    .line 209
    .end local v1    # "texture":Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mAllocatedTextures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 210
    return-void
.end method

.method public generateGeometry([FIIF)V
    .locals 18
    .param p1, "vertices"    # [F
    .param p2, "columns"    # I
    .param p3, "rows"    # I
    .param p4, "radius"    # F

    .prologue
    .line 89
    mul-int v8, p2, p3

    .line 90
    .local v8, "numVertices":I
    add-int/lit8 v15, p3, -0x1

    add-int/lit8 v16, p2, -0x1

    mul-int v15, v15, v16

    mul-int/lit8 v15, v15, 0x6

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mNumIndices:I

    .line 93
    mul-int/lit8 v15, v8, 0x3

    mul-int/lit8 v15, v15, 0x4

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 95
    mul-int/lit8 v15, v8, 0x2

    mul-int/lit8 v15, v15, 0x4

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTexCoords:Ljava/nio/FloatBuffer;

    .line 97
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mNumIndices:I

    mul-int/lit8 v15, v15, 0x2

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    .line 99
    mul-int/lit8 v15, p3, 0x2

    mul-int/lit8 v16, p2, 0x2

    add-int v7, v15, v16

    .line 100
    .local v7, "numOutlineIndices":I
    mul-int/lit8 v15, v7, 0x2

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    .line 104
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    mul-int/lit8 v15, v8, 0x3

    if-ge v2, v15, :cond_0

    .line 105
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    aget v16, p1, v2

    mul-float v16, v16, p4

    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_0
    const/4 v12, 0x0

    .line 110
    .local v12, "texIndex":I
    const/4 v9, 0x0

    .local v9, "r":I
    :goto_1
    move/from16 v0, p3

    if-ge v9, v0, :cond_2

    .line 111
    int-to-float v15, v9

    add-int/lit8 v16, p3, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v14, v15, v16

    .line 112
    .local v14, "v":F
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_2
    move/from16 v0, p2

    if-ge v1, v0, :cond_1

    .line 113
    int-to-float v15, v1

    add-int/lit8 v16, p2, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 114
    .local v13, "u":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v15, v12, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 115
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTexCoords:Ljava/nio/FloatBuffer;

    add-int/lit8 v16, v12, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 116
    add-int/lit8 v12, v12, 0x2

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 110
    .end local v13    # "u":F
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 121
    .end local v1    # "c":I
    .end local v14    # "v":F
    :cond_2
    const/4 v3, 0x0

    .line 122
    .local v3, "index":I
    move/from16 v11, p2

    .line 123
    .local v11, "rowStride":I
    const/4 v9, 0x0

    :goto_3
    add-int/lit8 v15, p3, -0x1

    if-ge v9, v15, :cond_4

    .line 124
    mul-int v10, v9, v11

    .line 125
    .local v10, "rowIndex":I
    add-int/lit8 v15, v9, 0x1

    mul-int v6, v15, v11

    .line 126
    .local v6, "nextRowIndex":I
    const/4 v1, 0x0

    .restart local v1    # "c":I
    move v4, v3

    .end local v3    # "index":I
    .local v4, "index":I
    :goto_4
    add-int/lit8 v15, p2, -0x1

    if-ge v1, v15, :cond_3

    .line 127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    int-to-short v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 128
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    add-int/lit8 v16, v6, 0x1

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 129
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    int-to-short v0, v6

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 130
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    int-to-short v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 131
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    add-int/lit8 v16, v10, 0x1

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    add-int/lit8 v16, v6, 0x1

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 133
    add-int/lit8 v10, v10, 0x1

    .line 134
    add-int/lit8 v6, v6, 0x1

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 123
    :cond_3
    add-int/lit8 v9, v9, 0x1

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_3

    .line 139
    .end local v1    # "c":I
    .end local v6    # "nextRowIndex":I
    .end local v10    # "rowIndex":I
    :cond_4
    const/4 v3, 0x0

    .line 140
    move/from16 v11, p2

    .line 142
    const/4 v1, 0x0

    .restart local v1    # "c":I
    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    :goto_5
    move/from16 v0, p2

    if-ge v1, v0, :cond_5

    .line 143
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    int-to-short v0, v1

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 142
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_5

    .line 146
    :cond_5
    const/4 v9, 0x0

    :goto_6
    move/from16 v0, p3

    if-ge v9, v0, :cond_6

    .line 147
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    add-int/lit8 v16, p2, -0x1

    mul-int v17, v9, v11

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 146
    add-int/lit8 v9, v9, 0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_6

    .line 150
    :cond_6
    add-int/lit8 v15, p3, -0x1

    mul-int v5, v15, v11

    .line 151
    .local v5, "lastRow":I
    add-int/lit8 v1, p2, -0x1

    :goto_7
    if-ltz v1, :cond_7

    .line 152
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    add-int v16, v5, v1

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 151
    add-int/lit8 v1, v1, -0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_7

    .line 155
    :cond_7
    add-int/lit8 v9, p3, -0x1

    :goto_8
    if-ltz v9, :cond_8

    .line 156
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    mul-int v16, v9, v11

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 155
    add-int/lit8 v9, v9, -0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_8

    .line 158
    :cond_8
    add-int/lit8 v15, v4, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mNumOutlineIndices:I

    .line 160
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mInitialized:Z

    .line 161
    return-void
.end method

.method public getDrawOutlineOnly()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mDrawOutlineOnly:Z

    return v0
.end method

.method public getTexture()Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    return-object v0
.end method

.method public getTextureId()I
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->getIndex()I

    move-result v0

    return v0
.end method

.method public setDrawOutlineOnly(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mDrawOutlineOnly:Z

    .line 67
    return-void
.end method

.method public setOutlineShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V
    .locals 0
    .param p1, "shader"    # Lcom/google/android/apps/lightcycle/opengl/Shader;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    .line 75
    return-void
.end method

.method public setTextureId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const-string v0, "PanoramaFrameOverlay Texture does not exist."

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->setIndex(I)V

    goto :goto_0
.end method
