.class public Lcom/android/gallery3d/filtershow/filters/ImageWrapper;
.super Ljava/lang/Object;
.source "ImageWrapper.java"


# instance fields
.field private mImageWrapper:Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;

.field private mInputAllocation:Landroid/support/v8/renderscript/Allocation;

.field private mRSContext:Landroid/support/v8/renderscript/RenderScript;

.field private mRSResources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "inputAllocation"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "rsCxt"    # Landroid/support/v8/renderscript/RenderScript;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mInputAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 36
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mRSContext:Landroid/support/v8/renderscript/RenderScript;

    .line 37
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mRSResources:Landroid/content/res/Resources;

    .line 38
    return-void
.end method


# virtual methods
.method public downScaleRGBAIntoBounds(II)Landroid/support/v8/renderscript/Allocation;
    .locals 12
    .param p1, "boundsWidth"    # I
    .param p2, "boundsHeight"    # I

    .prologue
    .line 42
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mInputAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v8

    if-ne v8, p1, :cond_0

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mInputAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v8

    if-ne v8, p2, :cond_0

    .line 44
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mInputAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 95
    :goto_0
    return-object v5

    .line 47
    :cond_0
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mInputAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v8

    if-lt v8, p1, :cond_1

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mInputAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v8

    if-ge v8, p2, :cond_2

    .line 49
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 51
    :cond_2
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mImageWrapper:Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;

    if-nez v8, :cond_3

    .line 52
    new-instance v8, Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mRSContext:Landroid/support/v8/renderscript/RenderScript;

    iget-object v10, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mRSResources:Landroid/content/res/Resources;

    const v11, 0x7f080015

    invoke-direct {v8, v9, v10, v11}, Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mImageWrapper:Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;

    .line 57
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mInputAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 58
    .local v5, "ret":Landroid/support/v8/renderscript/Allocation;
    const/4 v3, 0x0

    .line 60
    .local v3, "isLastStage":Z
    new-instance v7, Landroid/support/v8/renderscript/Type$Builder;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mRSContext:Landroid/support/v8/renderscript/RenderScript;

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mRSContext:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v9}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 61
    .local v7, "tb_uchar4":Landroid/support/v8/renderscript/Type$Builder;
    new-instance v6, Landroid/support/v8/renderscript/Type$Builder;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mRSContext:Landroid/support/v8/renderscript/RenderScript;

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mRSContext:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v9}, Landroid/support/v8/renderscript/Element;->BOOLEAN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 64
    .local v6, "tb_bool":Landroid/support/v8/renderscript/Type$Builder;
    :cond_4
    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v8

    div-int/lit8 v1, v8, 0x2

    .line 65
    .local v1, "destWidth":I
    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v8

    div-int/lit8 v0, v8, 0x2

    .line 67
    .local v0, "destHeight":I
    if-le v1, p1, :cond_5

    if-gt v0, p2, :cond_6

    .line 68
    :cond_5
    move v1, p1

    .line 69
    move v0, p2

    .line 70
    const/4 v3, 0x1

    .line 73
    :cond_6
    invoke-virtual {v7, v1}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 74
    invoke-virtual {v7, v0}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 75
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mRSContext:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    .line 77
    .local v2, "destination":Landroid/support/v8/renderscript/Allocation;
    invoke-virtual {v6, v0}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 78
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mRSContext:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    .line 80
    .local v4, "mTempCols":Landroid/support/v8/renderscript/Allocation;
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mImageWrapper:Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;

    invoke-virtual {v8, v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;->set_scaleSource(Landroid/support/v8/renderscript/Allocation;)V

    .line 81
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mImageWrapper:Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;->set_scaleSourceWidth(J)V

    .line 82
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mImageWrapper:Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;->set_scaleSourceHeight(J)V

    .line 83
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mImageWrapper:Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;

    invoke-virtual {v8, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;->set_destination(Landroid/support/v8/renderscript/Allocation;)V

    .line 84
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mImageWrapper:Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;

    int-to-long v9, v1

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;->set_destWidth(J)V

    .line 85
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mImageWrapper:Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;

    int-to-long v9, v0

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;->set_destHeight(J)V

    .line 86
    if-eqz v3, :cond_7

    .line 87
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mImageWrapper:Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;

    invoke-virtual {v8, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;->forEach_scaleBilinearRGBA8IntoBounds(Landroid/support/v8/renderscript/Allocation;)V

    .line 92
    :goto_1
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mImageWrapper:Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;->get_destination()Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    .line 93
    if-eqz v3, :cond_4

    goto/16 :goto_0

    .line 89
    :cond_7
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->mImageWrapper:Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;

    invoke-virtual {v8, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_image_wrapper;->forEach_halfScaleRGBA8(Landroid/support/v8/renderscript/Allocation;)V

    goto :goto_1
.end method
