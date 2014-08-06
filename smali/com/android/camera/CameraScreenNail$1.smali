.class Lcom/android/camera/CameraScreenNail$1;
.super Ljava/lang/Object;
.source "CameraScreenNail.java"

# interfaces
.implements Lcom/android/camera/CameraScreenNail$DrawClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraScreenNail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraScreenNail;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraScreenNail;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail$1;->this$0:Lcom/android/camera/CameraScreenNail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyToTexture(Lcom/android/gallery3d/glrenderer/GLCanvas;Lcom/android/gallery3d/glrenderer/RawTexture;II)Lcom/android/gallery3d/glrenderer/RawTexture;
    .locals 1
    .param p1, "c"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "texture"    # Lcom/android/gallery3d/glrenderer/RawTexture;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDraw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail$1;->this$0:Lcom/android/camera/CameraScreenNail;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/camera/CameraScreenNail;->access$001(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 86
    return-void
.end method

.method public requiresSurfaceTexture()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method
