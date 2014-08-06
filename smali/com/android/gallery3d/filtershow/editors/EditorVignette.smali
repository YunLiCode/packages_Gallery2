.class public Lcom/android/gallery3d/filtershow/editors/EditorVignette;
.super Lcom/android/gallery3d/filtershow/editors/ParametricEditor;
.source "EditorVignette.java"


# instance fields
.field mImageVignette:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    const v0, 0x7f0a0055

    const v1, 0x7f040042

    const v2, 0x7f0a0108

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;-><init>(III)V

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
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorVignette;->mImageVignette:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;

    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorVignette;->mImageVignette:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->setEditor(Lcom/android/gallery3d/filtershow/editors/EditorVignette;)V

    .line 41
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->reflectCurrentFilter()V

    .line 47
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorVignette;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    .line 48
    .local v1, "rep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorVignette;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    instance-of v2, v2, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 49
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    .line 50
    .local v0, "drawRep":Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorVignette;->mImageVignette:Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;)V

    .line 52
    .end local v0    # "drawRep":Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;
    :cond_0
    return-void
.end method
