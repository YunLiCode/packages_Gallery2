.class public Landroid/support/v8/renderscript/Type;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/Type$Builder;,
        Landroid/support/v8/renderscript/Type$CubemapFace;
    }
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimYuv:I

.field mDimZ:I

.field mElement:Landroid/support/v8/renderscript/Element;

.field mElementCount:I


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 180
    return-void
.end method


# virtual methods
.method calcElementCount()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 141
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->hasMipmaps()Z

    move-result v2

    .line 142
    .local v2, "hasLod":Z
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    .line 143
    .local v3, "x":I
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    .line 144
    .local v4, "y":I
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v5

    .line 145
    .local v5, "z":I
    const/4 v1, 0x1

    .line 146
    .local v1, "faces":I
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->hasFaces()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    const/4 v1, 0x6

    .line 149
    :cond_0
    if-nez v3, :cond_1

    .line 150
    const/4 v3, 0x1

    .line 152
    :cond_1
    if-nez v4, :cond_2

    .line 153
    const/4 v4, 0x1

    .line 155
    :cond_2
    if-nez v5, :cond_3

    .line 156
    const/4 v5, 0x1

    .line 159
    :cond_3
    mul-int v6, v3, v4

    mul-int/2addr v6, v5

    mul-int v0, v6, v1

    .line 161
    .local v0, "count":I
    :goto_0
    if-eqz v2, :cond_8

    if-gt v3, v7, :cond_4

    if-gt v4, v7, :cond_4

    if-le v5, v7, :cond_8

    .line 162
    :cond_4
    if-le v3, v7, :cond_5

    .line 163
    shr-int/lit8 v3, v3, 0x1

    .line 165
    :cond_5
    if-le v4, v7, :cond_6

    .line 166
    shr-int/lit8 v4, v4, 0x1

    .line 168
    :cond_6
    if-le v5, v7, :cond_7

    .line 169
    shr-int/lit8 v5, v5, 0x1

    .line 172
    :cond_7
    mul-int v6, v3, v4

    mul-int/2addr v6, v5

    mul-int/2addr v6, v1

    add-int/2addr v0, v6

    goto :goto_0

    .line 174
    :cond_8
    iput v0, p0, Landroid/support/v8/renderscript/Type;->mElementCount:I

    .line 175
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mElementCount:I

    return v0
.end method

.method public getElement()Landroid/support/v8/renderscript/Element;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimY:I

    return v0
.end method

.method public getYuv()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimYuv:I

    return v0
.end method

.method public getZ()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimZ:I

    return v0
.end method

.method public hasFaces()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Landroid/support/v8/renderscript/Type;->mDimFaces:Z

    return v0
.end method

.method public hasMipmaps()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Landroid/support/v8/renderscript/Type;->mDimMipmaps:Z

    return v0
.end method
