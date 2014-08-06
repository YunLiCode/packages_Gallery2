.class Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;
.super Ljava/lang/Object;
.source "LightCycleRenderer.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)V
    .locals 0

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public thumbnailLoaded(I)V
    .locals 2
    .param p1, "imageIndex"    # I

    .prologue
    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdatePhotoRendering:thumbnailLoaded index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 1373
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->thumbnailLoaded(I)V

    .line 1378
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    const/4 v1, 0x1

    # setter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpdateTextures:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$1202(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Z)Z

    .line 1379
    return-void
.end method

.method public updateTransforms([F)V
    .locals 16
    .param p1, "transforms"    # [F

    .prologue
    .line 1307
    move-object/from16 v0, p1

    array-length v11, v0

    div-int/lit8 v5, v11, 0x9

    .line 1308
    .local v5, "numTransforms":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v11

    if-le v11, v5, :cond_0

    .line 1309
    const-string v11, "Bad number of Transforms in UpdateTransformsCallback."

    invoke-static {v11}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 1367
    :goto_0
    return-void

    .line 1316
    :cond_0
    add-int/lit8 v4, v5, -0x1

    .line 1317
    .local v4, "imageNum":I
    invoke-static {v4}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->IsImageInLargestComponent(I)Z

    move-result v8

    .line 1319
    .local v8, "updateDeltaYaw":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new image "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in largest component = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 1321
    if-eqz v8, :cond_3

    const/4 v11, 0x1

    if-le v5, v11, :cond_3

    .line 1323
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getCameraToWorld(I)[F

    move-result-object v7

    .line 1324
    .local v7, "oldRotation":[F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->oldForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v11

    const/4 v12, 0x2

    aget v12, v7, v12

    iput v12, v11, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    .line 1325
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->oldForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v11

    const/4 v12, 0x0

    iput v12, v11, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    .line 1326
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->oldForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v11

    const/16 v12, 0x8

    aget v12, v7, v12

    iput v12, v11, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    .line 1327
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->oldForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/apps/lightcycle/math/Vector3;->normalize()F

    .line 1331
    mul-int/lit8 v6, v4, 0x9

    .line 1332
    .local v6, "offset":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->newForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$800(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v11

    add-int/lit8 v12, v6, 0x2

    aget v12, p1, v12

    iput v12, v11, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    .line 1333
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->newForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$800(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v11

    const/4 v12, 0x0

    iput v12, v11, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    .line 1334
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->newForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$800(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v11

    add-int/lit8 v12, v6, 0x8

    aget v12, p1, v12

    iput v12, v11, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    .line 1335
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->newForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$800(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/apps/lightcycle/math/Vector3;->normalize()F

    .line 1341
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->oldForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->newForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-static {v12}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$800(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/apps/lightcycle/math/Vector3;->dot(Lcom/google/android/apps/lightcycle/math/Vector3;)F

    move-result v11

    float-to-double v1, v11

    .line 1342
    .local v1, "d":D
    const-wide/high16 v11, 0x3ff0000000000000L

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    const-wide/high16 v13, -0x4010000000000000L

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 1346
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    # += operator for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D
    invoke-static {v11, v12, v13}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$918(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;D)D

    .line 1350
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->oldForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v11

    iget v11, v11, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->newForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-static {v12}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$800(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v12

    iget v12, v12, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->oldForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-static {v12}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v12

    iget v12, v12, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->newForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-static {v13}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$800(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v13

    iget v13, v13, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    float-to-double v9, v11

    .line 1352
    .local v9, "yCross":D
    const-wide/16 v11, 0x0

    cmpl-double v11, v9, v11

    if-lez v11, :cond_1

    .line 1353
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D
    invoke-static {v12}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$900(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)D

    move-result-wide v12

    neg-double v12, v12

    # setter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D
    invoke-static {v11, v12, v13}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$902(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;D)D

    .line 1355
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D
    invoke-static {v12}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$900(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)D

    move-result-wide v12

    const-wide v14, 0x4046800000000000L

    div-double/2addr v12, v14

    # setter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D
    invoke-static {v11, v12, v13}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$1002(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;D)D

    .line 1356
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "vision heading update delta = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D
    invoke-static {v12}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$900(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$1100(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v3

    .local v3, "i":I
    :goto_1
    add-int/lit8 v11, v5, -0x1

    if-ge v3, v11, :cond_2

    .line 1360
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$1100(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Ljava/util/Vector;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1359
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1362
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$1100(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Ljava/util/Vector;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D
    invoke-static {v12}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$900(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1366
    .end local v1    # "d":D
    .end local v3    # "i":I
    .end local v6    # "offset":I
    .end local v7    # "oldRotation":[F
    .end local v9    # "yCross":D
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->updateTransforms([F)V

    goto/16 :goto_0
.end method
