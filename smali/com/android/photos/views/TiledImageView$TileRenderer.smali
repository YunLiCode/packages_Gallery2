.class Lcom/android/photos/views/TiledImageView$TileRenderer;
.super Ljava/lang/Object;
.source "TiledImageView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/views/TiledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileRenderer"
.end annotation


# instance fields
.field private mCanvas:Lcom/android/gallery3d/glrenderer/GLES20Canvas;

.field final synthetic this$0:Lcom/android/photos/views/TiledImageView;


# direct methods
.method private constructor <init>(Lcom/android/photos/views/TiledImageView;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/photos/views/TiledImageView;Lcom/android/photos/views/TiledImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/photos/views/TiledImageView;
    .param p2, "x1"    # Lcom/android/photos/views/TiledImageView$1;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/photos/views/TiledImageView$TileRenderer;-><init>(Lcom/android/photos/views/TiledImageView;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 205
    iget-object v4, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->mCanvas:Lcom/android/gallery3d/glrenderer/GLES20Canvas;

    invoke-virtual {v4}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->clearBuffer()V

    .line 206
    iget-object v4, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    # getter for: Lcom/android/photos/views/TiledImageView;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/photos/views/TiledImageView;->access$400(Lcom/android/photos/views/TiledImageView;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 207
    :try_start_0
    iget-object v4, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    # getter for: Lcom/android/photos/views/TiledImageView;->mRenderers:[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    invoke-static {v4}, Lcom/android/photos/views/TiledImageView;->access$300(Lcom/android/photos/views/TiledImageView;)[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 208
    .local v3, "renderer":Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    iget-object v4, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    iget-object v6, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    iget v7, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    invoke-virtual {v4, v6, v7}, Lcom/android/photos/views/TiledImageRenderer;->setModel(Lcom/android/photos/views/TiledImageRenderer$TileSource;I)V

    .line 209
    iget-object v4, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    iget v6, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    iget v7, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    iget v8, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/photos/views/TiledImageRenderer;->setPosition(IIF)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v3    # "renderer":Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object v4, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    # getter for: Lcom/android/photos/views/TiledImageView;->mRenderers:[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    invoke-static {v4}, Lcom/android/photos/views/TiledImageView;->access$300(Lcom/android/photos/views/TiledImageView;)[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 213
    .restart local v3    # "renderer":Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    iget-object v4, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    iget-object v5, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->mCanvas:Lcom/android/gallery3d/glrenderer/GLES20Canvas;

    invoke-virtual {v4, v5}, Lcom/android/photos/views/TiledImageRenderer;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    .end local v0    # "arr$":[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "renderer":Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 215
    .restart local v0    # "arr$":[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 197
    iget-object v4, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->mCanvas:Lcom/android/gallery3d/glrenderer/GLES20Canvas;

    invoke-virtual {v4, p2, p3}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setSize(II)V

    .line 198
    iget-object v4, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    # getter for: Lcom/android/photos/views/TiledImageView;->mRenderers:[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    invoke-static {v4}, Lcom/android/photos/views/TiledImageView;->access$300(Lcom/android/photos/views/TiledImageView;)[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 199
    .local v3, "renderer":Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    iget-object v4, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    invoke-virtual {v4, p2, p3}, Lcom/android/photos/views/TiledImageRenderer;->setViewSize(II)V

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v3    # "renderer":Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 189
    new-instance v4, Lcom/android/gallery3d/glrenderer/GLES20Canvas;

    invoke-direct {v4}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;-><init>()V

    iput-object v4, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->mCanvas:Lcom/android/gallery3d/glrenderer/GLES20Canvas;

    .line 190
    iget-object v4, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    # getter for: Lcom/android/photos/views/TiledImageView;->mRenderers:[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    invoke-static {v4}, Lcom/android/photos/views/TiledImageView;->access$300(Lcom/android/photos/views/TiledImageView;)[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 191
    .local v3, "renderer":Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    iget-object v4, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    iget-object v5, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    iget v6, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    invoke-virtual {v4, v5, v6}, Lcom/android/photos/views/TiledImageRenderer;->setModel(Lcom/android/photos/views/TiledImageRenderer$TileSource;I)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v3    # "renderer":Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;
    :cond_0
    return-void
.end method
