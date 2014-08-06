.class public Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterBasicRepresentation.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/controller/ParameterInteger;


# instance fields
.field private mDefaultValue:I

.field private mLogVerbose:Z

.field private mMaximum:I

.field private mMinimum:I

.field private mPreviewValue:I

.field private mValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minimum"    # I
    .param p3, "value"    # I
    .param p4, "maximum"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 34
    const-string v0, "FilterBasicRep"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mLogVerbose:Z

    .line 38
    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mMinimum:I

    .line 39
    iput p4, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mMaximum:I

    .line 40
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setValue(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    .line 51
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setMinimum(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setMaximum(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setValue(I)V

    .line 54
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mLogVerbose:Z

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "FilterBasicRep"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cloning from <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> to <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
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
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 4
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 78
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    .line 79
    .local v0, "basic":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mMinimum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mMinimum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mMaximum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mMaximum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mValue:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mValue:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mDefaultValue:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mDefaultValue:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mPreviewValue:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mPreviewValue:I

    if-ne v2, v3, :cond_0

    .line 84
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDefaultValue()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mDefaultValue:I

    return v0
.end method

.method public getMaximum()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mMaximum:I

    return v0
.end method

.method public getMinimum()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mMinimum:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string v0, "ParameterInteger"

    return-object v0
.end method

.method public getPreviewValue()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mPreviewValue:I

    return v0
.end method

.method public getStateRepresentation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v0

    .line 144
    .local v0, "val":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_0

    const-string v1, "+"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mValue:I

    return v0
.end method

.method public setController(Lcom/android/gallery3d/filtershow/controller/Control;)V
    .locals 0
    .param p1, "control"    # Lcom/android/gallery3d/filtershow/controller/Control;

    .prologue
    .line 154
    return-void
.end method

.method public setDefaultValue(I)V
    .locals 0
    .param p1, "defaultValue"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mDefaultValue:I

    .line 126
    return-void
.end method

.method public setMaximum(I)V
    .locals 0
    .param p1, "maximum"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mMaximum:I

    .line 122
    return-void
.end method

.method public setMinimum(I)V
    .locals 0
    .param p1, "minimum"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mMinimum:I

    .line 97
    return-void
.end method

.method public setPreviewValue(I)V
    .locals 0
    .param p1, "previewValue"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mPreviewValue:I

    .line 139
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mValue:I

    .line 107
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mValue:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mMinimum:I

    if-ge v0, v1, :cond_0

    .line 108
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mMinimum:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mValue:I

    .line 110
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mValue:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mMaximum:I

    if-le v0, v1, :cond_1

    .line 111
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mMaximum:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mValue:I

    .line 113
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->mMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 2
    .param p1, "a"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 62
    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 63
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    .line 64
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setMinimum(I)V

    .line 65
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setMaximum(I)V

    .line 66
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setValue(I)V

    .line 67
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getDefaultValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setDefaultValue(I)V

    .line 68
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getPreviewValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setPreviewValue(I)V

    .line 70
    .end local v0    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    :cond_0
    return-void
.end method
