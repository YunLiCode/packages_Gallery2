.class public Lcom/android/gallery3d/filtershow/editors/EditorDetails;
.super Lcom/android/gallery3d/filtershow/editors/Editor;
.source "EditorDetails.java"


# instance fields
.field mLabel:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f0a0031

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/editors/EditorDetails;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/editors/EditorDetails;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->showPopupMenu(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private showPopupMenu(Landroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 115
    const v2, 0x7f0a00f4

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 116
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 120
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f12000a

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 121
    new-instance v2, Lcom/android/gallery3d/filtershow/editors/EditorDetails$2;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/filtershow/editors/EditorDetails$2;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorDetails;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 139
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->hackFixStrings(Landroid/view/Menu;)V

    .line 140
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method


# virtual methods
.method public calculateUserMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "effectName"    # Ljava/lang/String;
    .param p3, "parameterValue"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v3

    .line 49
    .local v3, "rep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    if-nez v5, :cond_1

    .line 50
    :cond_0
    const-string v5, ""

    .line 61
    :goto_0
    return-object v5

    :cond_1
    move-object v0, v3

    .line 52
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    .line 53
    .local v0, "detail":Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getParameterMode()I

    move-result v1

    .line 55
    .local v1, "mode":I
    const v5, 0x7f0a01d7

    if-ne v5, v1, :cond_2

    .line 56
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    const v6, 0x7f0b00e8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "paramString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getCurrentParameter()I

    move-result v4

    .line 61
    .local v4, "val":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-lez v4, :cond_3

    const-string v5, " +"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 58
    .end local v2    # "paramString":Ljava/lang/String;
    .end local v4    # "val":I
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    const v6, 0x7f0b00e9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "paramString":Ljava/lang/String;
    goto :goto_1

    .line 61
    .restart local v4    # "val":I
    :cond_3
    const-string v5, " "

    goto :goto_2
.end method

.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 43
    const v0, 0x7f0a00eb

    const v1, 0x7f040034

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->unpack(II)V

    .line 44
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "sbar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v4

    instance-of v4, v4, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    if-eqz v4, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    .line 89
    .local v2, "representation":Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getMinimum()I

    move-result v1

    .line 90
    .local v1, "min":I
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getMaximum()I

    move-result v0

    .line 91
    .local v0, "max":I
    add-int v3, p2, v1

    .line 92
    .local v3, "value":I
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setCurrentParameter(I)V

    .line 93
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onNewValue(I)V

    .line 94
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 95
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->commitLocalRepresentation()V

    .line 97
    .end local v0    # "max":I
    .end local v1    # "min":I
    .end local v2    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;
    .end local v3    # "value":I
    :cond_0
    return-void
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 101
    const v1, 0x7f0a00f4

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->mLabel:Landroid/widget/Button;

    .line 103
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0177

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->calculateUserMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->mLabel:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->mLabel:Landroid/widget/Button;

    new-instance v2, Lcom/android/gallery3d/filtershow/editors/EditorDetails$1;

    invoke-direct {v2, p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorDetails$1;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorDetails;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 66
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 67
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v6

    instance-of v6, v6, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    if-eqz v6, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    .line 69
    .local v5, "representation":Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;
    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->showParameterValue()Z

    move-result v0

    .line 70
    .local v0, "f":Z
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {v8, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 71
    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getCurrentParameter()I

    move-result v4

    .line 72
    .local v4, "parameter":I
    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getMaximum()I

    move-result v1

    .line 73
    .local v1, "max":I
    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getMinimum()I

    move-result v2

    .line 74
    .local v2, "min":I
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v8, v1, v2

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 75
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v8, v4, v2

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 76
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->mLabel:Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 77
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0177

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v8, v7}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->calculateUserMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "msg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->mLabel:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .end local v0    # "f":Z
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "parameter":I
    .end local v5    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;
    :cond_0
    return-void

    .line 70
    .restart local v0    # "f":Z
    .restart local v5    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;
    :cond_1
    const/4 v6, 0x4

    goto :goto_0
.end method
