.class public Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;
.super Lcom/android/gallery3d/filtershow/editors/Editor;
.source "EditorCenterFocus.java"


# instance fields
.field mImgShowCenterFocus:Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;

.field private mSliderMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f0a0039

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 43
    const v0, 0x7f0a01c3

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->mSliderMode:I

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->showPopupMenu(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->mSliderMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;
    .param p1, "x1"    # Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->updateSeekBar(Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;)V

    return-void
.end method

.method private showPopupMenu(Landroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 103
    const v2, 0x7f0a00f4

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 105
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 109
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f120007

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 110
    new-instance v2, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus$2;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus$2;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 125
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method private updateSeekBar(Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;)V
    .locals 5
    .param p1, "rep"    # Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    .prologue
    .line 70
    iget v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->mSliderMode:I

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getParameter(I)I

    move-result v2

    .line 71
    .local v2, "parameter":I
    iget v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->mSliderMode:I

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getParameterMax(I)I

    move-result v0

    .line 72
    .local v0, "max":I
    iget v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->mSliderMode:I

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getParameterMin(I)I

    move-result v1

    .line 73
    .local v1, "min":I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 74
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v4, v2, v1

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 52
    const v0, 0x7f0a00c3

    const v1, 0x7f04002d

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->unpack(II)V

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->mImgShowCenterFocus:Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->mImgShowCenterFocus:Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->setEditor(Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;)V

    .line 55
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "sbar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v3

    instance-of v3, v3, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    .line 81
    .local v1, "representation":Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;
    iget v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->mSliderMode:I

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getParameterMin(I)I

    move-result v0

    .line 82
    .local v0, "min":I
    add-int v2, p2, v0

    .line 83
    .local v2, "value":I
    iget v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->mSliderMode:I

    invoke-virtual {v1, v3, v2}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setParameter(II)V

    .line 84
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onNewValue(I)V

    .line 85
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 86
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->commitLocalRepresentation()V

    .line 88
    .end local v0    # "min":I
    .end local v1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;
    .end local v2    # "value":I
    :cond_0
    return-void
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 92
    const v1, 0x7f0a00f4

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 93
    .local v0, "view":Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0103

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v1, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus$1;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 4

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 60
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    instance-of v2, v2, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    .line 62
    .local v1, "representation":Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->showParameterValue()Z

    move-result v0

    .line 63
    .local v0, "f":Z
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 64
    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->updateSeekBar(Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;)V

    .line 65
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->mImgShowCenterFocus:Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;)V

    .line 67
    .end local v0    # "f":Z
    .end local v1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;
    :cond_0
    return-void

    .line 63
    .restart local v0    # "f":Z
    .restart local v1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;
    :cond_1
    const/4 v2, 0x4

    goto :goto_0
.end method
