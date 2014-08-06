.class public abstract Lcom/google/android/apps/lightcycle/opengl/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# instance fields
.field protected mProgram:I

.field protected mSamplerIndex:I

.field protected mTextureCoordIndex:I

.field protected mTransformIndex:I

.field protected mVertexIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mVertexIndex:I

    .line 29
    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mTextureCoordIndex:I

    .line 30
    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mTransformIndex:I

    .line 31
    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mSamplerIndex:I

    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    const v4, 0x8b31

    invoke-static {v4, p0}, Lcom/google/android/apps/lightcycle/opengl/Shader;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 112
    .local v3, "vertexShader":I
    const v4, 0x8b30

    invoke-static {v4, p1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 114
    .local v1, "pixelShader":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 115
    .local v2, "program":I
    if-nez v2, :cond_0

    .line 116
    new-instance v4, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    const-string v5, "Unable to create program"

    invoke-direct {v4, v5}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    :cond_0
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 119
    const-string v4, "glAttachShader"

    invoke-static {v4}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V

    .line 120
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 121
    const-string v4, "glAttachShader"

    invoke-static {v4}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V

    .line 122
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 123
    new-array v0, v6, [I

    .line 124
    .local v0, "linkStatus":[I
    const v4, 0x8b82

    invoke-static {v2, v4, v0, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 126
    aget v4, v0, v5

    if-eq v4, v6, :cond_1

    .line 127
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 128
    new-instance v4, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    const-string v5, "Could not link program"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 131
    :cond_1
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 132
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 133
    return v2
.end method

.method protected static loadShader(ILjava/lang/String;)I
    .locals 6
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 139
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 140
    .local v1, "shader":I
    if-nez v1, :cond_0

    .line 141
    new-instance v3, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    const-string v4, "Unable to create shader"

    invoke-direct {v3, v4}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_0
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 145
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 146
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 147
    .local v0, "compiled":[I
    const v3, 0x8b81

    invoke-static {v1, v3, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 148
    aget v3, v0, v4

    if-nez v3, :cond_1

    .line 149
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "shaderInfoLog":Ljava/lang/String;
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 151
    new-instance v3, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to compile shader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 154
    .end local v2    # "shaderInfoLog":Ljava/lang/String;
    :cond_1
    return v1
.end method


# virtual methods
.method public bind()V
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 99
    return-void
.end method

.method public freeGLMemory()V
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 191
    return-void
.end method

.method protected getAttribute(ILjava/lang/String;)I
    .locals 4
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 160
    .local v0, "handle":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 161
    new-instance v1, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in shader"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glGetAttribLocation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V

    .line 164
    return v0
.end method

.method protected getUniform(ILjava/lang/String;)I
    .locals 4
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 170
    .local v0, "handle":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 171
    new-instance v1, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in shader"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glGetUniformLocation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V

    .line 174
    return v0
.end method

.method public setTexCoords(Ljava/nio/FloatBuffer;)V
    .locals 6
    .param p1, "texCoords"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v3, 0x0

    .line 70
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mTextureCoordIndex:I

    if-gez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mTextureCoordIndex:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 77
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mTextureCoordIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto :goto_0
.end method

.method public setTransform([F)V
    .locals 3
    .param p1, "transform"    # [F

    .prologue
    const/4 v2, 0x0

    .line 82
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mTransformIndex:I

    if-gez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mTransformIndex:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_0
.end method

.method public setVertices(Ljava/nio/FloatBuffer;)V
    .locals 6
    .param p1, "vertices"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mVertexIndex:I

    if-gez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mVertexIndex:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0xc

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 65
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mVertexIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto :goto_0
.end method
