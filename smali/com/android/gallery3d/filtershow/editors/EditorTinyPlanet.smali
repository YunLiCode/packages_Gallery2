.class public Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;
.super Lcom/android/gallery3d/filtershow/editors/BasicEditor;
.source "EditorTinyPlanet.java"


# instance fields
.field mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    const v0, 0x7f0a0104

    const v1, 0x7f04003f

    const v2, 0x7f0a0105

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/filtershow/editors/BasicEditor;-><init>(III)V

    .line 34
    return-void
.end method


# virtual methods
.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->setEditor(Lcom/android/gallery3d/filtershow/editors/BasicEditor;)V

    .line 41
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->reflectCurrentFilter()V

    .line 46
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    .line 47
    .local v1, "rep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 48
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    .line 49
    .local v0, "drawRep":Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;)V

    .line 51
    .end local v0    # "drawRep":Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;
    :cond_0
    return-void
.end method

.method public updateUI()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->mControl:Lcom/android/gallery3d/filtershow/controller/Control;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->mControl:Lcom/android/gallery3d/filtershow/controller/Control;

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/controller/Control;->updateUI()V

    .line 57
    :cond_0
    return-void
.end method
