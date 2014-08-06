.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;
.source "ImageFilterTiltAndShift.java"


# instance fields
.field private mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

.field private mAntLookup:Landroid/support/v8/renderscript/Allocation;

.field private mAntLookup2:Landroid/support/v8/renderscript/Allocation;

.field private mBlur:Landroid/support/v8/renderscript/Allocation;

.field private mBrightness:Landroid/support/v8/renderscript/Allocation;

.field private mContrast:Landroid/support/v8/renderscript/Allocation;

.field private mLookup:Landroid/support/v8/renderscript/Allocation;

.field private mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

.field private mTempCols:Landroid/support/v8/renderscript/Allocation;

.field private mTempRows:Landroid/support/v8/renderscript/Allocation;

.field private mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    .line 47
    const-string v0, "TiltAndShift"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method protected bindScriptValues()V
    .locals 5

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    .line 160
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    .line 162
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->set_brightness(Landroid/support/v8/renderscript/Allocation;)V

    .line 163
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mContrast:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->set_contrast(Landroid/support/v8/renderscript/Allocation;)V

    .line 164
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mBlur:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->set_blur(Landroid/support/v8/renderscript/Allocation;)V

    .line 165
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->set_lookup(Landroid/support/v8/renderscript/Allocation;)V

    .line 166
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntLookup2:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->set_tiltandshiftmask(Landroid/support/v8/renderscript/Allocation;)V

    .line 168
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->set_width(J)V

    .line 169
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->set_height(J)V

    .line 170
    return-void
.end method

.method public createFilter(Landroid/content/res/Resources;FI)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v6

    .line 114
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    .line 116
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    .line 118
    .local v1, "rsCtx":Landroid/support/v8/renderscript/RenderScript;
    new-instance v5, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v7

    invoke-direct {v5, v1, v7}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 119
    .local v5, "tb_uchar4":Landroid/support/v8/renderscript/Type$Builder;
    invoke-virtual {v5, v6}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 120
    invoke-virtual {v5, v0}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 121
    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mBlur:Landroid/support/v8/renderscript/Allocation;

    .line 123
    new-instance v3, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v7

    invoke-direct {v3, v1, v7}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 124
    .local v3, "tb_float":Landroid/support/v8/renderscript/Type$Builder;
    invoke-virtual {v3, v6}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 125
    invoke-virtual {v3, v0}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 126
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    .line 127
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntLookup2:Landroid/support/v8/renderscript/Allocation;

    .line 129
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    if-nez v7, :cond_0

    .line 130
    new-instance v7, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    const v8, 0x7f080003

    invoke-direct {v7, v1, p1, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    .line 132
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    if-nez v7, :cond_1

    .line 133
    new-instance v7, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    const v8, 0x7f080019

    invoke-direct {v7, v1, p1, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    .line 136
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->set_antLookup(Landroid/support/v8/renderscript/Allocation;)V

    .line 138
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->set_width(J)V

    .line 139
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->set_height(J)V

    .line 141
    new-instance v2, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->BOOLEAN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v7

    invoke-direct {v2, v1, v7}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 142
    .local v2, "tb_bool":Landroid/support/v8/renderscript/Type$Builder;
    invoke-virtual {v2, v6}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 143
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    .line 145
    invoke-virtual {v2, v0}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 146
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    .line 148
    const v7, 0x7f0200b8

    invoke-virtual {p0, v7}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->loadResource(I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    .line 149
    const v7, 0x7f020042

    invoke-virtual {p0, v7}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->loadResource(I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mContrast:Landroid/support/v8/renderscript/Allocation;

    .line 151
    new-instance v4, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v7

    invoke-direct {v4, v1, v7}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 152
    .local v4, "tb_lookup":Landroid/support/v8/renderscript/Type$Builder;
    const/16 v7, 0x100

    invoke-virtual {v4, v7}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 153
    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mLookup:Landroid/support/v8/renderscript/Allocation;

    .line 155
    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;-><init>()V

    return-object v0
.end method

.method protected resetAllocations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 66
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntLookup2:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntLookup2:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 70
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntLookup2:Landroid/support/v8/renderscript/Allocation;

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 74
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 78
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mBlur:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mBlur:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 82
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mBlur:Landroid/support/v8/renderscript/Allocation;

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_5

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 86
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mContrast:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_6

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mContrast:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 90
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mContrast:Landroid/support/v8/renderscript/Allocation;

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mLookup:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_7

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 94
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mLookup:Landroid/support/v8/renderscript/Allocation;

    .line 96
    :cond_7
    return-void
.end method

.method protected resetScripts()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->destroy()V

    .line 102
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->destroy()V

    .line 106
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    .line 108
    :cond_1
    return-void
.end method

.method public runFilter()V
    .locals 22

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 235
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v13

    .line 178
    .local v13, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v6

    .line 180
    .local v6, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getXCenter()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getScaleFactor()F

    move-result v17

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v4, v0

    .line 181
    .local v4, "centerX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getYCenter()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getScaleFactor()F

    move-result v17

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v5, v0

    .line 183
    .local v5, "centerY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getStyle()I

    move-result v16

    if-nez v16, :cond_1

    const/high16 v14, 0x41200000

    .line 184
    .local v14, "xRadius":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getYRadius()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x42480000

    div-float v16, v16, v17

    const v17, 0x3f0ccccd

    add-float v15, v16, v17

    .line 186
    .local v15, "yRadius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getRotationAngle()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x42c80000

    div-float v12, v16, v17

    .line 188
    .local v12, "rotationAngle":F
    int-to-double v0, v4

    move-wide/from16 v16, v0

    int-to-double v0, v13

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L

    div-double v18, v18, v20

    cmpl-double v16, v16, v18

    if-ltz v16, :cond_2

    move v9, v4

    .line 189
    .local v9, "maxXDistance":I
    :goto_2
    int-to-double v0, v5

    move-wide/from16 v16, v0

    int-to-double v0, v6

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L

    div-double v18, v18, v20

    cmpl-double v16, v16, v18

    if-ltz v16, :cond_3

    move v10, v5

    .line 191
    .local v10, "maxYDistance":I
    :goto_3
    int-to-double v0, v9

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    int-to-double v0, v10

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v8, v0

    .line 193
    .local v8, "maxDistance":F
    const/high16 v16, 0x40800000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getBlurStrength()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x41c80000

    div-float v17, v17, v18

    sub-float v2, v16, v17

    .line 195
    .local v2, "blurStrength":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->set_centerX(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->set_centerY(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->set_xRadius(F)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->set_yRadius(F)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->set_rotationAngle(F)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    move-object/from16 v16, v0

    const v17, 0x3f733333

    const v18, 0x3ecccccd

    mul-float v18, v18, v2

    add-float v17, v17, v18

    mul-float v17, v17, v8

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->set_smallerRadiusFactor(F)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->forEach_createAntLookup(Landroid/support/v8/renderscript/Allocation;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->set_inputAlloc(Landroid/support/v8/renderscript/Allocation;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mBlur:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->set_outputAlloc(Landroid/support/v8/renderscript/Allocation;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->forEach_blurLeftRight(Landroid/support/v8/renderscript/Allocation;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mBlur:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->set_inputAlloc(Landroid/support/v8/renderscript/Allocation;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->forEach_blurTopBottom(Landroid/support/v8/renderscript/Allocation;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->forEach_blurRightLeft(Landroid/support/v8/renderscript/Allocation;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntBlurElliptical:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_elliptical;->forEach_blurBottomTop(Landroid/support/v8/renderscript/Allocation;)V

    .line 213
    if-le v13, v6, :cond_4

    .end local v13    # "width":I
    :goto_4
    int-to-float v7, v13

    .line 214
    .local v7, "m":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getXRadius()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x43480000

    div-float v14, v16, v17

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getYRadius()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x43480000

    div-float v15, v16, v17

    .line 216
    new-instance v11, Landroid/support/v8/renderscript/Float2;

    invoke-direct {v11, v14, v15}, Landroid/support/v8/renderscript/Float2;-><init>(FF)V

    .line 217
    .local v11, "radius":Landroid/support/v8/renderscript/Float2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->set_innerRadius(Landroid/support/v8/renderscript/Float2;)V

    .line 219
    new-instance v3, Landroid/support/v8/renderscript/Float2;

    int-to-float v0, v4

    move/from16 v16, v0

    div-float v16, v16, v7

    int-to-float v0, v5

    move/from16 v17, v0

    div-float v17, v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v3, v0, v1}, Landroid/support/v8/renderscript/Float2;-><init>(FF)V

    .line 220
    .local v3, "center":Landroid/support/v8/renderscript/Float2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->set_center(Landroid/support/v8/renderscript/Float2;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getStyle()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->set_style(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getTransition()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x43c80000

    div-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->set_transition(F)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getRotationAngle()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42c80000

    div-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->set_rotationAngle(F)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    move-object/from16 v16, v0

    const v17, 0x3f733333

    const v18, 0x3ecccccd

    mul-float v18, v18, v2

    add-float v17, v17, v18

    mul-float v17, v17, v8

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->set_smallerRadiusFactor(F)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getBrightness()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42c80000

    div-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->set_brightnessVal(F)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getContrast()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42c80000

    div-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->set_contrastVal(F)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f800000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getSaturation()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42c80000

    div-float v18, v18, v19

    add-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->set_saturation(F)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mLookup:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->forEach_createLookupTable(Landroid/support/v8/renderscript/Allocation;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mAntLookup2:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->forEach_createTiltAndShiftMask(Landroid/support/v8/renderscript/Allocation;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mTiltAndShift:Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tiltandshift;->forEach_tiltandshift(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    goto/16 :goto_0

    .line 183
    .end local v2    # "blurStrength":F
    .end local v3    # "center":Landroid/support/v8/renderscript/Float2;
    .end local v7    # "m":F
    .end local v8    # "maxDistance":F
    .end local v9    # "maxXDistance":I
    .end local v10    # "maxYDistance":I
    .end local v11    # "radius":Landroid/support/v8/renderscript/Float2;
    .end local v12    # "rotationAngle":F
    .end local v14    # "xRadius":F
    .end local v15    # "yRadius":F
    .restart local v13    # "width":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getXRadius()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x42480000

    div-float v16, v16, v17

    const v17, 0x3f0ccccd

    add-float v14, v16, v17

    goto/16 :goto_1

    .line 188
    .restart local v12    # "rotationAngle":F
    .restart local v14    # "xRadius":F
    .restart local v15    # "yRadius":F
    :cond_2
    sub-int v9, v13, v4

    goto/16 :goto_2

    .line 189
    .restart local v9    # "maxXDistance":I
    :cond_3
    sub-int v10, v6, v5

    goto/16 :goto_3

    .restart local v2    # "blurStrength":F
    .restart local v8    # "maxDistance":F
    .restart local v10    # "maxYDistance":I
    :cond_4
    move v13, v6

    .line 213
    goto/16 :goto_4
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 0
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 59
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    .end local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    .line 60
    return-void
.end method
