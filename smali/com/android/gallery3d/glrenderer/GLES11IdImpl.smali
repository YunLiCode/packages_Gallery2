.class public Lcom/android/gallery3d/glrenderer/GLES11IdImpl;
.super Ljava/lang/Object;
.source "GLES11IdImpl.java"

# interfaces
.implements Lcom/android/gallery3d/glrenderer/GLId;


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static sNextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput v0, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateTexture()I
    .locals 3

    .prologue
    .line 32
    sget-object v1, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    sget v0, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    monitor-exit v1

    return v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL11;
    .param p2, "n"    # I
    .param p3, "buffers"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 55
    sget-object v1, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL11;
    .param p2, "n"    # I
    .param p3, "textures"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 48
    sget-object v1, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V

    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public glGenBuffers(I[II)V
    .locals 5
    .param p1, "n"    # I
    .param p2, "buffers"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 39
    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v2

    move v0, p1

    .line 40
    .end local p1    # "n":I
    .local v0, "n":I
    :goto_0
    add-int/lit8 p1, v0, -0x1

    .end local v0    # "n":I
    .restart local p1    # "n":I
    if-lez v0, :cond_0

    .line 41
    add-int v1, p3, p1

    :try_start_0
    sget v3, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    aput v3, p2, v1

    move v0, p1

    .end local p1    # "n":I
    .restart local v0    # "n":I
    goto :goto_0

    .line 43
    .end local v0    # "n":I
    .restart local p1    # "n":I
    :cond_0
    monitor-exit v2

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
