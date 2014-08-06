.class public Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;
.source "FilterRedEyeRepresentation.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    const-string v0, "RedEye"

    const v1, 0x7f0b0182

    sget v2, Lcom/android/gallery3d/filtershow/editors/EditorRedEye;->ID:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;-><init>(Ljava/lang/String;II)V

    .line 31
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 32
    const v0, 0x7f02019c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;->setOverlayId(I)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;->setOverlayOnly(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method public addRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 37
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 38
    .local v1, "intersects":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;->getCandidates()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;->getCandidate(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;

    .line 40
    .local v2, "r":Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;->intersect(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .end local v2    # "r":Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 45
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;

    .line 46
    .restart local v2    # "r":Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;
    iget-object v3, v2, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 47
    iget-object v3, v2, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p2, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;->removeCandidate(Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 50
    .end local v2    # "r":Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;
    :cond_2
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;

    invoke-direct {v3, p1, p2}, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;->addCandidate(Lcom/android/gallery3d/filtershow/filters/FilterPoint;)V

    .line 51
    return-void
.end method
