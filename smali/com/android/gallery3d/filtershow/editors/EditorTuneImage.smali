.class public Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;
.super Lcom/android/gallery3d/filtershow/editors/Editor;
.source "EditorTuneImage.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f0a0028

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;->showPopupMenu(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private showPopupMenu(Landroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 90
    const v2, 0x7f0a00f4

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 92
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 96
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f120012

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 97
    new-instance v2, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage$2;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage$2;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 115
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method


# virtual methods
.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 45
    const v0, 0x7f0a0106

    const v1, 0x7f040040

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;->unpack(II)V

    .line 46
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "sbar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v4

    instance-of v4, v4, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    .line 67
    .local v2, "representation":Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getMinimum()I

    move-result v1

    .line 68
    .local v1, "min":I
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getMaximum()I

    move-result v0

    .line 69
    .local v0, "max":I
    add-int v3, p2, v1

    .line 70
    .local v3, "value":I
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setCurrentParameter(I)V

    .line 71
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onNewValue(I)V

    .line 72
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 73
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;->commitLocalRepresentation()V

    .line 75
    .end local v0    # "max":I
    .end local v1    # "min":I
    .end local v2    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;
    .end local v3    # "value":I
    :cond_0
    return-void
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 79
    const v1, 0x7f0a00f4

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 80
    .local v0, "view":Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00e3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v1, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage$1;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 7

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 51
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v5

    instance-of v5, v5, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    .line 53
    .local v4, "representation":Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->showParameterValue()Z

    move-result v0

    .line 54
    .local v0, "f":Z
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 55
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getCurrentParameter()I

    move-result v3

    .line 56
    .local v3, "parameter":I
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getMaximum()I

    move-result v1

    .line 57
    .local v1, "max":I
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getMinimum()I

    move-result v2

    .line 58
    .local v2, "min":I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v6, v1, v2

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 59
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v6, v3, v2

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 61
    .end local v0    # "f":Z
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "parameter":I
    .end local v4    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;
    :cond_0
    return-void

    .line 54
    .restart local v0    # "f":Z
    .restart local v4    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;
    :cond_1
    const/4 v5, 0x4

    goto :goto_0
.end method
