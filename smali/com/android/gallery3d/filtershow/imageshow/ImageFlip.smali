.class public Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;
.source "ImageFlip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/ImageFlip$1;
    }
.end annotation


# static fields
.field private static final gPaint:Landroid/graphics/Paint;


# instance fields
.field private mEditorFlip:Lcom/android/gallery3d/filtershow/editors/EditorFlip;

.field private mNextFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->gPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;)V

    .line 35
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 40
    return-void
.end method

.method private getScaledMinFlick()F
    .locals 4

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->getLocalDisplayBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 149
    .local v0, "disp":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v3, 0x3dcccccd

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->getLocalScale()F

    move-result v3

    div-float v1, v2, v3

    .line 151
    .local v1, "scaled":F
    return v1
.end method


# virtual methods
.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v2, 0xff

    .line 156
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->gPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 158
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->drawTransformedCropped(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 159
    return-void
.end method

.method public flip()V
    .locals 7

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v2

    .line 63
    .local v2, "flip":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    const/4 v5, 0x1

    .line 65
    .local v5, "next":Z
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->values()[Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 66
    .local v1, "f":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    if-eqz v5, :cond_0

    .line 67
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 68
    const/4 v5, 0x0

    .line 70
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 71
    const/4 v5, 0x1

    .line 65
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "f":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->setLocalFlip(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V

    .line 75
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0187

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasRotated90()Z
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->getLocalRotation()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->constrainedRotation(F)I

    move-result v0

    .line 58
    .local v0, "rot":I
    div-int/lit8 v1, v0, 0x5a

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetParameter()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->resetParameter()V

    .line 144
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 145
    return-void
.end method

.method protected setActionDown(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionDown(FF)V

    .line 54
    return-void
.end method

.method protected setActionMove(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionMove(FF)V

    .line 81
    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    sub-float v0, v5, p1

    .line 82
    .local v0, "diffx":F
    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    sub-float v1, v5, p2

    .line 83
    .local v1, "diffy":F
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->getScaledMinFlick()F

    move-result v2

    .line 84
    .local v2, "flick":F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->hasRotated90()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    move v4, v0

    .line 86
    .local v4, "temp":F
    move v0, v1

    .line 87
    move v1, v4

    .line 89
    .end local v4    # "temp":F
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v2

    if-ltz v5, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v3

    .line 92
    .local v3, "flip":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    sget-object v5, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip$1;->$SwitchMap$com$android$gallery3d$filtershow$imageshow$GeometryMetadata$FLIP:[I

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 106
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 109
    :goto_0
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 111
    .end local v3    # "flip":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v2

    if-ltz v5, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v3

    .line 114
    .restart local v3    # "flip":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    sget-object v5, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip$1;->$SwitchMap$com$android$gallery3d$filtershow$imageshow$GeometryMetadata$FLIP:[I

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 128
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 131
    :goto_1
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 133
    .end local v3    # "flip":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    :cond_2
    return-void

    .line 94
    .restart local v3    # "flip":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    :pswitch_0
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->HORIZONTAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 95
    goto :goto_0

    .line 97
    :pswitch_1
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 98
    goto :goto_0

    .line 100
    :pswitch_2
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->BOTH:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 101
    goto :goto_0

    .line 103
    :pswitch_3
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->VERTICAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 104
    goto :goto_0

    .line 116
    :pswitch_4
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->VERTICAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 117
    goto :goto_1

    .line 119
    :pswitch_5
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 120
    goto :goto_1

    .line 122
    :pswitch_6
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->BOTH:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 123
    goto :goto_1

    .line 125
    :pswitch_7
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->HORIZONTAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 126
    goto :goto_1

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 114
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method protected setActionUp()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionUp()V

    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->setLocalFlip(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V

    .line 139
    return-void
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/EditorFlip;)V
    .locals 0
    .param p1, "editorFlip"    # Lcom/android/gallery3d/filtershow/editors/EditorFlip;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->mEditorFlip:Lcom/android/gallery3d/filtershow/editors/EditorFlip;

    .line 163
    return-void
.end method
