.class public Lcom/android/gallery3d/filtershow/editors/EditorCrop;
.super Lcom/android/gallery3d/filtershow/editors/Editor;
.source "EditorCrop.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/editors/EditorInfo;


# instance fields
.field private mAspectString:Ljava/lang/String;

.field private mCropActionFlag:Z

.field private mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

.field mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f0a0056

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mAspectString:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mCropActionFlag:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/editors/EditorCrop;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/editors/EditorCrop;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->showPopupMenu(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private showPopupMenu(Landroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 83
    const v2, 0x7f0a00f4

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 85
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 89
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f120008

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 90
    new-instance v2, Lcom/android/gallery3d/filtershow/editors/EditorCrop$2;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/editors/EditorCrop$2;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorCrop;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 98
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method


# virtual methods
.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setEditor(Lcom/android/gallery3d/filtershow/editors/EditorCrop;)V

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->syncLocalToMasterGeometry()V

    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mCropActionFlag:Z

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropActionFlag(Z)V

    .line 60
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mCropActionFlag:Z

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setExtras(Lcom/android/gallery3d/filtershow/crop/CropExtras;)V

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mAspectString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->clear()V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setExtras(Lcom/android/gallery3d/filtershow/crop/CropExtras;)V

    goto :goto_0
.end method

.method public getOverlayId()I
    .locals 1

    .prologue
    .line 113
    const v0, 0x7f02008e

    return v0
.end method

.method public getOverlayOnly()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 108
    const v0, 0x7f0b0185

    return v0
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 71
    const v1, 0x7f0a00f4

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 72
    .local v0, "view":Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0185

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v1, Lcom/android/gallery3d/filtershow/editors/EditorCrop$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorCrop$1;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorCrop;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public showsSeekBar()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method
