.class public Lcom/android/gallery3d/filtershow/editors/EditorStraighten;
.super Lcom/android/gallery3d/filtershow/editors/Editor;
.source "EditorStraighten.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/editors/EditorInfo;


# instance fields
.field mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f0a0059

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 35
    sget-byte v0, Lcom/android/gallery3d/filtershow/editors/EditorStraighten;->SHOW_VALUE_INT:B

    iput-byte v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mShowParameter:B

    .line 36
    return-void
.end method


# virtual methods
.method public calculateUserMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "effectName"    # Ljava/lang/String;
    .param p3, "parameterValue"    # Ljava/lang/Object;

    .prologue
    .line 41
    const v1, 0x7f0b0168

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "apply":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorStraighten;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorStraighten;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorStraighten;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorStraighten;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorStraighten;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setEditor(Lcom/android/gallery3d/filtershow/editors/EditorStraighten;)V

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorStraighten;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->syncLocalToMasterGeometry()V

    .line 56
    return-void
.end method

.method public getOverlayId()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f020091

    return v0
.end method

.method public getOverlayOnly()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f0b0184

    return v0
.end method

.method public showsPopupIndicator()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public showsSeekBar()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method
