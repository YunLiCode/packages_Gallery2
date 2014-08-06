.class Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;
.super Ljava/lang/Object;
.source "GLES11Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/glrenderer/GLES11Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigState"
.end annotation


# instance fields
.field mAlpha:F

.field mMatrix:[F

.field mNextFree:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 807
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 809
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/glrenderer/GLES11Canvas$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/glrenderer/GLES11Canvas$1;

    .prologue
    .line 807
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;-><init>()V

    return-void
.end method


# virtual methods
.method public restore(Lcom/android/gallery3d/glrenderer/GLES11Canvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLES11Canvas;

    .prologue
    const/4 v3, 0x0

    .line 813
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setAlpha(F)V

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    aget v0, v0, v3

    const/high16 v1, -0x800000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    # getter for: Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F
    invoke-static {p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->access$100(Lcom/android/gallery3d/glrenderer/GLES11Canvas;)[F

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 817
    :cond_1
    return-void
.end method
