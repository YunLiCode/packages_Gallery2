.class public Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterFxRepresentation.java"


# instance fields
.field private mBitmapResource:I

.field private mNameResource:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 27
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->mBitmapResource:I

    .line 28
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->mNameResource:I

    .line 32
    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->mBitmapResource:I

    .line 33
    iput p3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->mNameResource:I

    .line 34
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 35
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->setPriority(I)V

    .line 36
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->setTextId(I)V

    .line 37
    const v0, 0x7f0a0054

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->setEditorId(I)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->setShowEditingControls(Z)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->setShowParameterValue(Z)V

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->setShowUtilityPanel(Z)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->setSupportsPartialRendering(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public allowsMultipleInstances()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;

    .line 51
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->setName(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->getBitmapResource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->setBitmapResource(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->getNameResource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->setNameResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-object v0

    .line 50
    .end local v0    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 4
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 72
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;

    .line 73
    .local v0, "fx":Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;
    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->mNameResource:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->mNameResource:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->mBitmapResource:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->mBitmapResource:I

    if-ne v2, v3, :cond_0

    .line 75
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBitmapResource()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->mBitmapResource:I

    return v0
.end method

.method public getNameResource()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->mNameResource:I

    return v0
.end method

.method public same(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 1
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->same(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBitmapResource(I)V
    .locals 0
    .param p1, "bitmapResource"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->mBitmapResource:I

    .line 106
    return-void
.end method

.method public setNameResource(I)V
    .locals 0
    .param p1, "nameResource"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->mNameResource:I

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterFx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bitmap rsc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->mBitmapResource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 3
    .param p1, "a"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;

    if-eqz v2, :cond_0

    .line 59
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;

    move-object v1, v0

    .line 60
    .local v1, "representation":Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->setName(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->getBitmapResource()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->setBitmapResource(I)V

    .line 62
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->getNameResource()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->setNameResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .end local v1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;
    :cond_0
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
