.class public Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;
.super Ljava/lang/Object;
.source "LightCycleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/util/LightCycleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanoramaMetadata"
.end annotation


# instance fields
.field public final mIsPanorama360:Z

.field public final mUsePanoramaViewer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v0, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;->mUsePanoramaViewer:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;->mIsPanorama360:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/lightcycle/util/PanoMetadata;)V
    .locals 8
    .param p1, "panoMeta"    # Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v7, 0x43b40000

    const/high16 v6, 0x428c0000

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iget v2, p1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    iget v5, p1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoWidth:I

    int-to-float v5, v5

    div-float v0, v2, v5

    .line 60
    .local v0, "horizontalFoV":F
    const/high16 v2, 0x43340000

    iget v5, p1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaHeight:I

    int-to-float v5, v5

    mul-float/2addr v2, v5

    iget v5, p1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoHeight:I

    int-to-float v5, v5

    div-float v1, v2, v5

    .line 62
    .local v1, "verticalFoV":F
    iget-boolean v2, p1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->synthetic:Z

    if-nez v2, :cond_1

    cmpl-float v2, v0, v6

    if-gez v2, :cond_0

    cmpl-float v2, v1, v6

    if-ltz v2, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;->mUsePanoramaViewer:Z

    .line 65
    iget-boolean v2, p1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->synthetic:Z

    if-nez v2, :cond_2

    cmpl-float v2, v0, v7

    if-nez v2, :cond_2

    :goto_1
    iput-boolean v3, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;->mIsPanorama360:Z

    .line 67
    return-void

    :cond_1
    move v2, v4

    .line 62
    goto :goto_0

    :cond_2
    move v3, v4

    .line 65
    goto :goto_1
.end method
