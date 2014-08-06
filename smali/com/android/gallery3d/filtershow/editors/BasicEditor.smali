.class public Lcom/android/gallery3d/filtershow/editors/BasicEditor;
.super Lcom/android/gallery3d/filtershow/editors/ParametricEditor;
.source "BasicEditor.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/controller/ParameterInteger;


# static fields
.field public static ID:I


# instance fields
.field private final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f0a00ea

    sput v0, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    sget v0, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->ID:I

    const v1, 0x7f040033

    const v2, 0x7f0a00ea

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;-><init>(III)V

    .line 35
    const-string v0, "BasicEditor"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->LOGTAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 42
    const v0, 0x7f040033

    const v1, 0x7f0a00ea

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;-><init>(III)V

    .line 35
    const-string v0, "BasicEditor"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->LOGTAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method protected constructor <init>(III)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "layoutID"    # I
    .param p3, "viewID"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;-><init>(III)V

    .line 35
    const-string v0, "BasicEditor"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->LOGTAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private getBasicRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 60
    .local v0, "tmpRep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    .line 64
    .end local v0    # "tmpRep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :goto_0
    return-object v0

    .restart local v0    # "tmpRep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMaximum()I
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->getBasicRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    .line 70
    .local v0, "rep":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    if-nez v0, :cond_0

    .line 71
    const/4 v1, 0x0

    .line 73
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getMaximum()I

    move-result v1

    goto :goto_0
.end method

.method public getMinimum()I
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->getBasicRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    .line 79
    .local v0, "rep":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    if-nez v0, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 82
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getMinimum()I

    move-result v1

    goto :goto_0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->getBasicRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    .line 117
    .local v0, "rep":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getTextId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getParameterType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "ParameterInteger"

    return-object v0
.end method

.method public getValue()I
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->getBasicRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    .line 93
    .local v0, "rep":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    if-nez v0, :cond_0

    .line 94
    const/4 v1, 0x0

    .line 96
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v1

    goto :goto_0
.end method

.method public reflectCurrentFilter()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->reflectCurrentFilter()V

    .line 52
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    instance-of v1, v1, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    .line 54
    .local v0, "interval":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->updateText()V

    .line 56
    .end local v0    # "interval":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    :cond_0
    return-void
.end method

.method public setController(Lcom/android/gallery3d/filtershow/controller/Control;)V
    .locals 0
    .param p1, "c"    # Lcom/android/gallery3d/filtershow/controller/Control;

    .prologue
    .line 127
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->getBasicRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    .line 107
    .local v0, "rep":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setValue(I)V

    .line 111
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->commitLocalRepresentation()V

    goto :goto_0
.end method
