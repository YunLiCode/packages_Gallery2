.class public Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;
.super Lcom/android/gallery3d/filtershow/editors/Editor;
.source "EditorFixedFrame.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const v0, 0x7f0a003b

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;->showPopupMenu(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;->isRepresentationValid()Z

    move-result v0

    return v0
.end method

.method private isRepresentationValid()Z
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    instance-of v0, v0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showPopupMenu(Landroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 84
    const v2, 0x7f0a00f4

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 87
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 92
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f12000e

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 94
    new-instance v2, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame$2;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame$2;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 143
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method


# virtual methods
.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 27
    const v0, 0x7f0a00f9

    const v1, 0x7f040039

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;->unpack(II)V

    .line 28
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "sbar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;->isRepresentationValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    .line 51
    .local v1, "representation":Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->getMinimum()I

    move-result v0

    .line 52
    .local v0, "min":I
    add-int v2, p2, v0

    .line 53
    .local v2, "value":I
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->setCurrentParameter(I)V

    .line 54
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onNewValue(I)V

    .line 55
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 56
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;->commitLocalRepresentation()V

    .line 58
    .end local v0    # "min":I
    .end local v1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;
    .end local v2    # "value":I
    :cond_0
    return-void
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1, "mAccessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 67
    const v1, 0x7f0a00f4

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 69
    .local v0, "view":Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    const v2, 0x7f0b010c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v1, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame$1;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 7

    .prologue
    .line 32
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 33
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;->isRepresentationValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    .line 35
    .local v4, "representation":Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->showParameterValue()Z

    move-result v0

    .line 36
    .local v0, "f":Z
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->getCurrentParameter()I

    move-result v3

    .line 39
    .local v3, "parameter":I
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->getMaximum()I

    move-result v1

    .line 40
    .local v1, "max":I
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->getMinimum()I

    move-result v2

    .line 41
    .local v2, "min":I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v6, v1, v2

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 42
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v6, v3, v2

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 45
    .end local v0    # "f":Z
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "parameter":I
    .end local v4    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;
    :cond_0
    return-void

    .line 36
    .restart local v0    # "f":Z
    .restart local v4    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;
    :cond_1
    const/4 v5, 0x4

    goto :goto_0
.end method

.method public showsSeekBar()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method
