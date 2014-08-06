.class public Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.super Ljava/lang/Object;
.source "FilterRepresentation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mButtonId:I

.field private mEditorId:I

.field private mFilterClass:Ljava/lang/Class;

.field private mName:Ljava/lang/String;

.field private mOverlayId:I

.field private mOverlayOnly:Z

.field private mPriority:I

.field private mShowEditingControls:Z

.field private mShowParameterValue:Z

.field private mShowUtilityPanel:Z

.field private mSupportsPartialRendering:Z

.field private mTempRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

.field private mTextId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mPriority:I

    .line 28
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mSupportsPartialRendering:Z

    .line 29
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mTextId:I

    .line 30
    sget v0, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->ID:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mEditorId:I

    .line 31
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mButtonId:I

    .line 32
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mOverlayId:I

    .line 33
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mOverlayOnly:Z

    .line 34
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mShowEditingControls:Z

    .line 35
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mShowParameterValue:Z

    .line 36
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mShowUtilityPanel:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mTempRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mName:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public allowsMultipleInstances()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 54
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setName(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setPriority(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->supportsPartialRendering()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setSupportsPartialRendering(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setTextId(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getEditorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setEditorId(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getButtonId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setButtonId(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getOverlayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setOverlayId(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getOverlayOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setOverlayOnly(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->showEditingControls()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setShowEditingControls(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->showParameterValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setShowParameterValue(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->showUtilityPanel()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setShowUtilityPanel(Z)V

    .line 66
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mTempRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mTempRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mTempRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 71
    return-object v0

    .line 66
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 3
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v0, 0x0

    .line 75
    if-nez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    iget-object v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mFilterClass:Ljava/lang/Class;

    iget-object v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mFilterClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mPriority:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mPriority:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mSupportsPartialRendering:Z

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mSupportsPartialRendering:Z

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mTextId:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mTextId:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mEditorId:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mEditorId:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mButtonId:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mButtonId:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mOverlayId:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mOverlayId:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mOverlayOnly:Z

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mOverlayOnly:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mShowEditingControls:Z

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mShowEditingControls:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mShowParameterValue:Z

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mShowParameterValue:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mShowUtilityPanel:Z

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mShowUtilityPanel:Z

    if-ne v1, v2, :cond_0

    .line 90
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mButtonId:I

    return v0
.end method

.method public final getEditorId()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mEditorId:I

    return v0
.end method

.method public getEditorIds()[I
    .locals 3

    .prologue
    .line 208
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mEditorId:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getFilterClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mFilterClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayId()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mOverlayId:I

    return v0
.end method

.method public getOverlayOnly()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mOverlayOnly:Z

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mPriority:I

    return v0
.end method

.method public getStateRepresentation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const-string v0, ""

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mTextId:I

    return v0
.end method

.method public isNil()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public same(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 3
    .param p1, "b"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v0, 0x0

    .line 165
    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setButtonId(I)V
    .locals 0
    .param p1, "buttonId"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mButtonId:I

    .line 185
    return-void
.end method

.method public setEditorId(I)V
    .locals 0
    .param p1, "editorId"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mEditorId:I

    .line 214
    return-void
.end method

.method public setFilterClass(Ljava/lang/Class;)V
    .locals 0
    .param p1, "filterClass"    # Ljava/lang/Class;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mFilterClass:Ljava/lang/Class;

    .line 162
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mName:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setOverlayId(I)V
    .locals 0
    .param p1, "overlayId"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mOverlayId:I

    .line 193
    return-void
.end method

.method public setOverlayOnly(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mOverlayOnly:Z

    .line 201
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mPriority:I

    .line 109
    return-void
.end method

.method public setShowEditingControls(Z)V
    .locals 0
    .param p1, "showEditingControls"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mShowEditingControls:Z

    .line 222
    return-void
.end method

.method public setShowParameterValue(Z)V
    .locals 0
    .param p1, "showParameterValue"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mShowParameterValue:Z

    .line 230
    return-void
.end method

.method public setShowUtilityPanel(Z)V
    .locals 0
    .param p1, "showUtilityPanel"    # Z

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mShowUtilityPanel:Z

    .line 238
    return-void
.end method

.method public setSupportsPartialRendering(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mSupportsPartialRendering:Z

    .line 125
    return-void
.end method

.method public setTextId(I)V
    .locals 0
    .param p1, "textId"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mTextId:I

    .line 177
    return-void
.end method

.method public showEditingControls()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mShowEditingControls:Z

    return v0
.end method

.method public showParameterValue()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mShowParameterValue:Z

    return v0
.end method

.method public showUtilityPanel()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mShowUtilityPanel:Z

    return v0
.end method

.method public supportsPartialRendering()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized synchronizeRepresentation()V
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mTempRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mTempRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_0
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized updateTempParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 2
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mTempRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 137
    :try_start_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mTempRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 135
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 142
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->mTempRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 0
    .param p1, "a"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 128
    return-void
.end method
