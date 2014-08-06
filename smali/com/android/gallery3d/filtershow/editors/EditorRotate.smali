.class public Lcom/android/gallery3d/filtershow/editors/EditorRotate;
.super Lcom/android/gallery3d/filtershow/editors/Editor;
.source "EditorRotate.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/editors/EditorInfo;


# instance fields
.field mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f0a0058

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorRotate;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorRotate;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorRotate;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorRotate;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorRotate;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->setEditor(Lcom/android/gallery3d/filtershow/editors/EditorRotate;)V

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorRotate;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->syncLocalToMasterGeometry()V

    .line 49
    return-void
.end method

.method public getOverlayId()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f020090

    return v0
.end method

.method public getOverlayOnly()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f0b0186

    return v0
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 2
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 53
    const v1, 0x7f0a00f4

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lcom/android/gallery3d/filtershow/editors/EditorRotate$1;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/filtershow/editors/EditorRotate$1;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorRotate;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method public showsPopupIndicator()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public showsSeekBar()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method
