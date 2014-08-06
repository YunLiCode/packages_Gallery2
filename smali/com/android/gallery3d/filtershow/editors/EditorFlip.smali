.class public Lcom/android/gallery3d/filtershow/editors/EditorFlip;
.super Lcom/android/gallery3d/filtershow/editors/Editor;
.source "EditorFlip.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/editors/EditorInfo;


# instance fields
.field mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f0a0057

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
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorFlip;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorFlip;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorFlip;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorFlip;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorFlip;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->setEditor(Lcom/android/gallery3d/filtershow/editors/EditorFlip;)V

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorFlip;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->syncLocalToMasterGeometry()V

    .line 49
    return-void
.end method

.method public getOverlayId()I
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f02008f

    return v0
.end method

.method public getOverlayOnly()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f0b0187

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
    new-instance v1, Lcom/android/gallery3d/filtershow/editors/EditorFlip$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/editors/EditorFlip$1;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorFlip;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method public showsPopupIndicator()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public showsSeekBar()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method
