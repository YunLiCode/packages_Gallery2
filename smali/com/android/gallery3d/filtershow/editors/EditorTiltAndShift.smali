.class public Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;
.super Lcom/android/gallery3d/filtershow/editors/Editor;
.source "EditorTiltAndShift.java"


# instance fields
.field mImgShowTiltAndShift:Lcom/android/gallery3d/filtershow/imageshow/ImageShowTiltAndShift;

.field private mSliderMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f0a0033

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 38
    const v0, 0x7f0a021b

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->mSliderMode:I

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->showPopupMenu(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->mSliderMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;
    .param p1, "x1"    # Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->updateSeekBar(Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;)V

    return-void
.end method

.method private showPopupMenu(Landroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 98
    const v2, 0x7f0a00f4

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 100
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 104
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f120011

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 105
    new-instance v2, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift$2;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift$2;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 120
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method private updateSeekBar(Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;)V
    .locals 5
    .param p1, "rep"    # Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    .prologue
    .line 65
    iget v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->mSliderMode:I

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getParameter(I)I

    move-result v2

    .line 66
    .local v2, "parameter":I
    iget v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->mSliderMode:I

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getParameterMax(I)I

    move-result v0

    .line 67
    .local v0, "max":I
    iget v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->mSliderMode:I

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getParameterMin(I)I

    move-result v1

    .line 68
    .local v1, "min":I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 69
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v4, v2, v1

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 70
    return-void
.end method


# virtual methods
.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 47
    const v0, 0x7f0a0103

    const v1, 0x7f04003e

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->unpack(II)V

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowTiltAndShift;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->mImgShowTiltAndShift:Lcom/android/gallery3d/filtershow/imageshow/ImageShowTiltAndShift;

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->mImgShowTiltAndShift:Lcom/android/gallery3d/filtershow/imageshow/ImageShowTiltAndShift;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShowTiltAndShift;->setEditor(Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;)V

    .line 50
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "sbar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v3

    instance-of v3, v3, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    .line 76
    .local v1, "representation":Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;
    iget v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->mSliderMode:I

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getParameterMin(I)I

    move-result v0

    .line 77
    .local v0, "min":I
    add-int v2, p2, v0

    .line 78
    .local v2, "value":I
    iget v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->mSliderMode:I

    invoke-virtual {v1, v3, v2}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setParameter(II)V

    .line 79
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onNewValue(I)V

    .line 80
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 81
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->commitLocalRepresentation()V

    .line 83
    .end local v0    # "min":I
    .end local v1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;
    .end local v2    # "value":I
    :cond_0
    return-void
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 87
    const v1, 0x7f0a00f4

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 88
    .local v0, "view":Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v1, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift$1;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 55
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    instance-of v2, v2, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    .line 57
    .local v1, "representation":Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->showParameterValue()Z

    move-result v0

    .line 58
    .local v0, "f":Z
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 59
    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->updateSeekBar(Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;)V

    .line 60
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;->mImgShowTiltAndShift:Lcom/android/gallery3d/filtershow/imageshow/ImageShowTiltAndShift;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShowTiltAndShift;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;)V

    .line 62
    .end local v0    # "f":Z
    .end local v1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;
    :cond_0
    return-void

    .line 58
    .restart local v0    # "f":Z
    .restart local v1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;
    :cond_1
    const/4 v2, 0x4

    goto :goto_0
.end method
