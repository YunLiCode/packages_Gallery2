.class public Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;
.super Lcom/android/gallery3d/filtershow/editors/Editor;
.source "EditorAutoCorrect.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f0a002f

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;->showPopupMenu(Landroid/widget/LinearLayout;)V

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

    .line 114
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

    const v3, 0x7f120005

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 97
    new-instance v2, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect$2;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect$2;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 113
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method


# virtual methods
.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 44
    const v0, 0x7f0a00c0

    const v1, 0x7f04002a

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;->unpack(II)V

    .line 45
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "sbar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v3

    instance-of v3, v3, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    .line 66
    .local v1, "representation":Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getMinimum()I

    move-result v0

    .line 67
    .local v0, "min":I
    add-int v2, p2, v0

    .line 68
    .local v2, "value":I
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->setCurrentParameter(I)V

    .line 69
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onNewValue(I)V

    .line 70
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 71
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;->commitLocalRepresentation()V

    .line 73
    .end local v0    # "min":I
    .end local v1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;
    .end local v2    # "value":I
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

    const v2, 0x7f0b00e1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v1, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect$1;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 7

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 50
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v5

    instance-of v5, v5, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    if-eqz v5, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    .line 52
    .local v4, "representation":Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->showParameterValue()Z

    move-result v0

    .line 53
    .local v0, "f":Z
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 54
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getCurrentParameter()I

    move-result v3

    .line 55
    .local v3, "parameter":I
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getMaximum()I

    move-result v1

    .line 56
    .local v1, "max":I
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getMinimum()I

    move-result v2

    .line 57
    .local v2, "min":I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v6, v1, v2

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 58
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v6, v3, v2

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 60
    .end local v0    # "f":Z
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "parameter":I
    .end local v4    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;
    :cond_0
    return-void

    .line 53
    .restart local v0    # "f":Z
    .restart local v4    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;
    :cond_1
    const/4 v5, 0x4

    goto :goto_0
.end method
