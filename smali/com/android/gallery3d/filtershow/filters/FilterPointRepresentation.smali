.class public abstract Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterPointRepresentation.java"


# instance fields
.field private mCandidates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/filters/FilterPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    .line 27
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 28
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->setPriority(I)V

    .line 29
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->setTextId(I)V

    .line 30
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->setEditorId(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public addCandidate(Lcom/android/gallery3d/filtershow/filters/FilterPoint;)V
    .locals 1
    .param p1, "c"    # Lcom/android/gallery3d/filtershow/filters/FilterPoint;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public clearCandidates()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 82
    return-void
.end method

.method public clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;

    .line 37
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    iput-object v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    .line 38
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
    .line 21
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public getCandidate(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCandidates()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/filters/FilterPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    return-object v0
.end method

.method public getNumberOfCandidates()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public isNil()Z
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->getCandidates()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->getCandidates()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeCandidate(Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;)V
    .locals 1
    .param p1, "c"    # Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 4
    .param p1, "a"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 67
    instance-of v3, p1, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 68
    check-cast v2, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;

    .line 69
    .local v2, "representation":Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 70
    iget-object v3, v2, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterPoint;

    .line 71
    .local v1, "redEyeCandidate":Lcom/android/gallery3d/filtershow/filters/FilterPoint;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "redEyeCandidate":Lcom/android/gallery3d/filtershow/filters/FilterPoint;
    .end local v2    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterPointRepresentation;
    :cond_0
    return-void
.end method
