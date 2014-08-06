.class public abstract Lcom/android/gallery3d/glrenderer/BasicTexture;
.super Ljava/lang/Object;
.source "BasicTexture.java"

# interfaces
.implements Lcom/android/gallery3d/glrenderer/Texture;


# static fields
.field private static sAllTextures:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/gallery3d/glrenderer/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInFinalizer:Ljava/lang/ThreadLocal;


# instance fields
.field protected mCanvasRef:Lcom/android/gallery3d/glrenderer/GLCanvas;

.field private mHasBorder:Z

.field protected mHeight:I

.field protected mId:I

.field protected mState:I

.field protected mTextureHeight:I

.field protected mTextureWidth:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    .line 55
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/gallery3d/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/gallery3d/glrenderer/BasicTexture;-><init>(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    .line 68
    return-void
.end method

.method protected constructor <init>(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 3
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "id"    # I
    .param p3, "state"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mId:I

    .line 44
    iput v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mWidth:I

    .line 45
    iput v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mHeight:I

    .line 52
    iput-object v1, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/glrenderer/GLCanvas;

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 59
    iput p2, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mId:I

    .line 60
    iput p3, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mState:I

    .line 61
    sget-object v1, Lcom/android/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private freeResource()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/glrenderer/GLCanvas;

    .line 174
    .local v0, "canvas":Lcom/android/gallery3d/glrenderer/GLCanvas;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mId:I

    if-eq v1, v2, :cond_0

    .line 175
    invoke-interface {v0, p0}, Lcom/android/gallery3d/glrenderer/GLCanvas;->unloadTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z

    .line 176
    iput v2, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mId:I

    .line 178
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mState:I

    .line 179
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 180
    return-void
.end method

.method public static inFinalizer()Z
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/android/gallery3d/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static invalidateAllTextures()V
    .locals 4

    .prologue
    .line 205
    sget-object v3, Lcom/android/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 206
    :try_start_0
    sget-object v2, Lcom/android/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/glrenderer/BasicTexture;

    .line 207
    .local v1, "t":Lcom/android/gallery3d/glrenderer/BasicTexture;
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/gallery3d/glrenderer/BasicTexture;->mState:I

    .line 208
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    goto :goto_0

    .line 210
    .end local v1    # "t":Lcom/android/gallery3d/glrenderer/BasicTexture;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    return-void
.end method

.method public static yieldAllTextures()V
    .locals 4

    .prologue
    .line 197
    sget-object v3, Lcom/android/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 198
    :try_start_0
    sget-object v2, Lcom/android/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/glrenderer/BasicTexture;

    .line 199
    .local v1, "t":Lcom/android/gallery3d/glrenderer/BasicTexture;
    invoke-virtual {v1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->yield()V

    goto :goto_0

    .line 201
    .end local v1    # "t":Lcom/android/gallery3d/glrenderer/BasicTexture;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v5

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 139
    return-void
.end method

.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 143
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 144
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lcom/android/gallery3d/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/android/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->recycle()V

    .line 186
    sget-object v0, Lcom/android/gallery3d/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mId:I

    return v0
.end method

.method protected abstract getTarget()I
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureHeight:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mWidth:I

    return v0
.end method

.method public hasBorder()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mHasBorder:Z

    return v0
.end method

.method public isFlippedVertically()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 154
    iget v1, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onBind(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->freeResource()V

    .line 161
    return-void
.end method

.method protected setAssociatedCanvas(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/glrenderer/GLCanvas;

    .line 72
    return-void
.end method

.method protected setBorder(Z)V
    .locals 0
    .param p1, "hasBorder"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mHasBorder:Z

    .line 134
    return-void
.end method

.method public setSize(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v2, 0x1000

    const/4 v1, 0x0

    .line 79
    iput p1, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mWidth:I

    .line 80
    iput p2, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mHeight:I

    .line 81
    if-lez p1, :cond_2

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureWidth:I

    .line 82
    if-lez p2, :cond_3

    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureHeight:I

    .line 83
    iget v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureWidth:I

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureHeight:I

    if-le v0, v2, :cond_1

    .line 84
    :cond_0
    const-string v0, "BasicTexture"

    const-string v2, "texture is too large: %d x %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget v4, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 81
    goto :goto_0

    :cond_3
    move v0, v1

    .line 82
    goto :goto_1
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->freeResource()V

    .line 170
    return-void
.end method
