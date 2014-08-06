.class public Lcom/android/gallery3d/glrenderer/NinePatchTexture;
.super Lcom/android/gallery3d/glrenderer/ResourceTexture;
.source "NinePatchTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/glrenderer/NinePatchTexture$1;,
        Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache;
    }
.end annotation


# instance fields
.field private mChunk:Lcom/android/gallery3d/glrenderer/NinePatchChunk;

.field private mInstanceCache:Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache",
            "<",
            "Lcom/android/gallery3d/glrenderer/NinePatchInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 39
    new-instance v0, Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache;-><init>(Lcom/android/gallery3d/glrenderer/NinePatchTexture$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache;

    .line 44
    return-void
.end method

.method private findInstance(Lcom/android/gallery3d/glrenderer/GLCanvas;II)Lcom/android/gallery3d/glrenderer/NinePatchInstance;
    .locals 4
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 141
    move v1, p2

    .line 142
    .local v1, "key":I
    shl-int/lit8 v3, v1, 0x10

    or-int v1, v3, p3

    .line 143
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/glrenderer/NinePatchInstance;

    .line 145
    .local v0, "instance":Lcom/android/gallery3d/glrenderer/NinePatchInstance;
    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/android/gallery3d/glrenderer/NinePatchInstance;

    .end local v0    # "instance":Lcom/android/gallery3d/glrenderer/NinePatchInstance;
    invoke-direct {v0, p0, p2, p3}, Lcom/android/gallery3d/glrenderer/NinePatchInstance;-><init>(Lcom/android/gallery3d/glrenderer/NinePatchTexture;II)V

    .line 147
    .restart local v0    # "instance":Lcom/android/gallery3d/glrenderer/NinePatchInstance;
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache;

    invoke-virtual {v3, v1, v0}, Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/glrenderer/NinePatchInstance;

    .line 148
    .local v2, "removed":Lcom/android/gallery3d/glrenderer/NinePatchInstance;
    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/glrenderer/NinePatchInstance;->recycle(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 153
    .end local v2    # "removed":Lcom/android/gallery3d/glrenderer/NinePatchInstance;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 1
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache;->clear()V

    .line 162
    :cond_0
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 163
    invoke-direct {p0, p1, p4, p5}, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->findInstance(Lcom/android/gallery3d/glrenderer/GLCanvas;II)Lcom/android/gallery3d/glrenderer/NinePatchInstance;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/android/gallery3d/glrenderer/NinePatchInstance;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;Lcom/android/gallery3d/glrenderer/NinePatchTexture;II)V

    .line 165
    :cond_1
    return-void
.end method

.method public getNinePatchChunk()Lcom/android/gallery3d/glrenderer/NinePatchChunk;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->mChunk:Lcom/android/gallery3d/glrenderer/NinePatchChunk;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->mChunk:Lcom/android/gallery3d/glrenderer/NinePatchChunk;

    return-object v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->mChunk:Lcom/android/gallery3d/glrenderer/NinePatchChunk;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->mChunk:Lcom/android/gallery3d/glrenderer/NinePatchChunk;

    iget-object v0, v0, Lcom/android/gallery3d/glrenderer/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 48
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    :cond_0
    return-object v0

    .line 50
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 51
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 52
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/glrenderer/ResourceTexture;->mResId:I

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 55
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->setSize(II)V

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    .line 57
    .local v1, "chunkData":[B
    if-nez v1, :cond_2

    const/4 v3, 0x0

    :goto_0
    iput-object v3, p0, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->mChunk:Lcom/android/gallery3d/glrenderer/NinePatchChunk;

    .line 60
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->mChunk:Lcom/android/gallery3d/glrenderer/NinePatchChunk;

    if-nez v3, :cond_0

    .line 61
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid nine-patch image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/glrenderer/ResourceTexture;->mResId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/glrenderer/NinePatchChunk;->deserialize([B)Lcom/android/gallery3d/glrenderer/NinePatchChunk;

    move-result-object v3

    goto :goto_0
.end method

.method public recycle()V
    .locals 5

    .prologue
    .line 169
    invoke-super {p0}, Lcom/android/gallery3d/glrenderer/ResourceTexture;->recycle()V

    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/glrenderer/GLCanvas;

    .line 171
    .local v0, "canvas":Lcom/android/gallery3d/glrenderer/GLCanvas;
    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache;

    invoke-virtual {v4}, Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache;->size()I

    move-result v3

    .line 173
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 174
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/glrenderer/NinePatchInstance;

    .line 175
    .local v2, "instance":Lcom/android/gallery3d/glrenderer/NinePatchInstance;
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/glrenderer/NinePatchInstance;->recycle(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 177
    .end local v2    # "instance":Lcom/android/gallery3d/glrenderer/NinePatchInstance;
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache;

    invoke-virtual {v4}, Lcom/android/gallery3d/glrenderer/NinePatchTexture$SmallCache;->clear()V

    goto :goto_0
.end method
