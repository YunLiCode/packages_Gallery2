.class public Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterDrawRepresentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;
    }
.end annotation


# instance fields
.field private mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

.field private mDrawing:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "Draw"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    .line 52
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 53
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->setPriority(I)V

    .line 54
    const v0, 0x7f0b0183

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->setTextId(I)V

    .line 55
    const v0, 0x7f0a004f

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->setButtonId(I)V

    .line 56
    const v0, 0x7f0a0052

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->setEditorId(I)V

    .line 57
    const v0, 0x7f020098

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->setOverlayId(I)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->setOverlayOnly(Z)V

    .line 59
    return-void
.end method


# virtual methods
.method public addPoint(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 146
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    .line 161
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 162
    return-void
.end method

.method public clearCurrentSection()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    .line 157
    return-void
.end method

.method public clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    .line 79
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public endSection(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    .line 153
    return-void
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 5
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v1

    .line 116
    :cond_1
    instance-of v3, p1, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 117
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    .line 118
    .local v0, "fdRep":Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;
    iget-object v3, v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 120
    iget-object v3, v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget-object v3, v3, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    if-nez v3, :cond_2

    move v1, v2

    .line 121
    goto :goto_0

    .line 123
    :cond_2
    iget-object v3, v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget-object v3, v3, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    if-eqz v3, :cond_0

    .line 124
    iget-object v3, v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v3, v3, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v4, v4, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 125
    goto :goto_0
.end method

.method public getCurrentDrawing()Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    return-object v0
.end method

.method public getDrawing()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    return-object v0
.end method

.method public isNil()Z
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->getDrawing()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public startNewSection(BIFFF)V
    .locals 2
    .param p1, "type"    # B
    .param p2, "color"    # I
    .param p3, "size"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 134
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iput p2, v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iput p3, v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iput-byte p1, v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mType:B

    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p4, p5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : strokes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    if-nez v0, :cond_0

    const-string v0, " no current "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "draw="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget-byte v2, v2, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mType:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v2, v2, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->noPoints:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 5
    .param p1, "a"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 89
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 90
    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    .line 92
    .local v1, "representation":Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;
    :try_start_0
    iget-object v2, v1, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, v1, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->clone()Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    .line 97
    :goto_0
    iget-object v2, v1, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, v1, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;

    .line 109
    .end local v1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;
    :goto_1
    return-void

    .line 95
    .restart local v1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mCurrent:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->mDrawing:Ljava/util/Vector;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 107
    .end local v1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;
    :cond_2
    const-string v2, "FilterDrawRepresentation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot use parameters from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
