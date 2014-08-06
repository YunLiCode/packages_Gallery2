.class public Lcom/android/gallery3d/filtershow/editors/EditorCurves;
.super Lcom/android/gallery3d/filtershow/editors/Editor;
.source "EditorCurves.java"


# instance fields
.field mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f0a0050

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

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
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 39
    new-instance v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCurves;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCurves;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->setEditor(Lcom/android/gallery3d/filtershow/editors/EditorCurves;)V

    .line 41
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 46
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorCurves;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    .line 47
    .local v1, "rep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorCurves;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    instance-of v2, v2, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 48
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    .line 49
    .local v0, "drawRep":Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorCurves;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->setFilterDrawRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;)V

    .line 51
    .end local v0    # "drawRep":Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;
    :cond_0
    return-void
.end method

.method public showsSeekBar()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
