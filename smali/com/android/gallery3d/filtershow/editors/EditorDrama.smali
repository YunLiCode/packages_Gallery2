.class public Lcom/android/gallery3d/filtershow/editors/EditorDrama;
.super Lcom/android/gallery3d/filtershow/editors/Editor;
.source "EditorDrama.java"


# instance fields
.field private mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f0a0022

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/editors/EditorDrama;)Lcom/android/gallery3d/filtershow/editors/SwapButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/editors/EditorDrama;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;

    return-object v0
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
    const v0, 0x7f0a00ec

    const v1, 0x7f040035

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->unpack(II)V

    .line 46
    return-void
.end method

.method public detach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/editors/SwapButton;->setListener(Lcom/android/gallery3d/filtershow/editors/SwapButton$SwapButtonListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/editors/SwapButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "sbar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v3

    instance-of v3, v3, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    .line 67
    .local v1, "representation":Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getMinimum()I

    move-result v0

    .line 68
    .local v0, "min":I
    add-int v2, p2, v0

    .line 69
    .local v2, "value":I
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setCurrentParameter(I)V

    .line 70
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onNewValue(I)V

    .line 71
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 72
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->commitLocalRepresentation()V

    .line 74
    .end local v0    # "min":I
    .end local v1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;
    .end local v2    # "value":I
    :cond_0
    return-void
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 78
    const v1, 0x7f0a00f4

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/editors/SwapButton;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;

    .line 79
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00b8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/editors/SwapButton;->setText(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 81
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f12000b

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 82
    new-instance v1, Lcom/android/gallery3d/filtershow/editors/EditorDrama$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama$1;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorDrama;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 89
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;

    new-instance v2, Lcom/android/gallery3d/filtershow/editors/EditorDrama$2;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama$2;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorDrama;Landroid/widget/PopupMenu;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/editors/SwapButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/filtershow/editors/SwapButton;->setListener(Lcom/android/gallery3d/filtershow/editors/SwapButton$SwapButtonListener;)V

    .line 96
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 7

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 51
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v5

    instance-of v5, v5, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    .line 53
    .local v4, "representation":Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->showParameterValue()Z

    move-result v0

    .line 54
    .local v0, "f":Z
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 55
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getCurrentParameter()I

    move-result v3

    .line 56
    .local v3, "parameter":I
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getMaximum()I

    move-result v1

    .line 57
    .local v1, "max":I
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getMinimum()I

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
    .end local v4    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;
    :cond_0
    return-void

    .line 54
    .restart local v0    # "f":Z
    .restart local v4    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;
    :cond_1
    const/4 v5, 0x4

    goto :goto_0
.end method

.method protected selectMenuItem(Landroid/view/MenuItem;)V
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v6

    instance-of v6, v6, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    if-eqz v6, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    .line 107
    .local v1, "drama":Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setParameterMode(I)V

    .line 108
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getCurrentParameter()I

    move-result v4

    .line 109
    .local v4, "parameter":I
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getMaximum()I

    move-result v2

    .line 110
    .local v2, "max":I
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getMinimum()I

    move-result v3

    .line 111
    .local v3, "min":I
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v7, v2, v3

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 112
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v7, v4, v3

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "buttonText":Ljava/lang/String;
    new-instance v5, Lcom/android/gallery3d/filtershow/editors/EditorDrama$3;

    invoke-direct {v5, p0, v0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama$3;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorDrama;Ljava/lang/String;)V

    .line 120
    .local v5, "updateButton":Ljava/lang/Runnable;
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mHandler:Landroid/os/Handler;

    sget v7, Lcom/android/gallery3d/filtershow/editors/SwapButton;->ANIM_DURATION:I

    int-to-long v7, v7

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 122
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->commitLocalRepresentation()V

    .line 124
    .end local v0    # "buttonText":Ljava/lang/String;
    .end local v1    # "drama":Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;
    .end local v2    # "max":I
    .end local v3    # "min":I
    .end local v4    # "parameter":I
    .end local v5    # "updateButton":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public swapLeft(Landroid/view/MenuItem;)V
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/editors/Editor;->swapLeft(Landroid/view/MenuItem;)V

    .line 129
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/editors/SwapButton;->setTranslationX(F)V

    .line 130
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/SwapButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/editors/SwapButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget v2, Lcom/android/gallery3d/filtershow/editors/SwapButton;->ANIM_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 131
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/EditorDrama$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama$4;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorDrama;)V

    .line 138
    .local v0, "updateButton":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/android/gallery3d/filtershow/editors/SwapButton;->ANIM_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->selectMenuItem(Landroid/view/MenuItem;)V

    .line 140
    return-void
.end method

.method public swapRight(Landroid/view/MenuItem;)V
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/editors/Editor;->swapRight(Landroid/view/MenuItem;)V

    .line 145
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/editors/SwapButton;->setTranslationX(F)V

    .line 146
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/SwapButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/editors/SwapButton;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget v2, Lcom/android/gallery3d/filtershow/editors/SwapButton;->ANIM_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 147
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/EditorDrama$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama$5;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorDrama;)V

    .line 154
    .local v0, "updateButton":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/android/gallery3d/filtershow/editors/SwapButton;->ANIM_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->selectMenuItem(Landroid/view/MenuItem;)V

    .line 156
    return-void
.end method
