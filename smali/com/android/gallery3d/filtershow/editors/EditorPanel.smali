.class public Lcom/android/gallery3d/filtershow/editors/EditorPanel;
.super Landroid/support/v4/app/Fragment;
.source "EditorPanel.java"


# instance fields
.field private mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

.field private mEditorID:I

.field private mMainView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelCurrentFilter()V
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    .line 57
    .local v1, "masterImage":Lcom/android/gallery3d/filtershow/imageshow/MasterImage;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v0

    .line 59
    .local v0, "adapter":Lcom/android/gallery3d/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->undo()I

    move-result v2

    .line 60
    .local v2, "position":I
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->onHistoryItemClick(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    .line 62
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 51
    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 52
    .local v0, "filterShowActivity":Lcom/android/gallery3d/filtershow/FilterShowActivity;
    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mEditorID:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getEditor(I)Lcom/android/gallery3d/filtershow/editors/Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 68
    .local v1, "activity":Lcom/android/gallery3d/filtershow/FilterShowActivity;
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_1

    .line 69
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 70
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 71
    .local v6, "parent":Landroid/view/ViewGroup;
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 73
    .end local v6    # "parent":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->isShowingImageStatePanel()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->showImageStatePanel(Z)V

    .line 74
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    .line 113
    :goto_0
    return-object v8

    .line 76
    :cond_1
    const v8, 0x7f040037

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    .line 78
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    const v9, 0x7f0a00f3

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "actionControl":Landroid/view/View;
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    const v9, 0x7f0a00f0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 80
    .local v4, "editControl":Landroid/view/View;
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    const v9, 0x7f0a00f2

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 81
    .local v3, "cancelButton":Landroid/widget/ImageButton;
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    const v9, 0x7f0a00f5

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 82
    .local v2, "applyButton":Landroid/widget/ImageButton;
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    const v9, 0x7f0a00f4

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 83
    .local v5, "editTitle":Landroid/widget/Button;
    new-instance v8, Lcom/android/gallery3d/filtershow/editors/EditorPanel$1;

    invoke-direct {v8, p0}, Lcom/android/gallery3d/filtershow/editors/EditorPanel$1;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorPanel;)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    new-instance v8, Lcom/android/gallery3d/filtershow/editors/EditorPanel$2;

    invoke-direct {v8, p0}, Lcom/android/gallery3d/filtershow/editors/EditorPanel$2;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorPanel;)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    const v9, 0x7f0a00f7

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 102
    .local v7, "toggleState":Landroid/widget/Button;
    iget v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mEditorID:I

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getEditor(I)Lcom/android/gallery3d/filtershow/editors/Editor;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

    .line 103
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

    if-eqz v8, :cond_2

    .line 104
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

    invoke-virtual {v8, v0, v4, v5, v7}, Lcom/android/gallery3d/filtershow/editors/Editor;->setUpEditorUI(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 105
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/editors/Editor;->getImageShow()Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->select()V

    .line 106
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 107
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/editors/Editor;->useUtilityPanel()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 108
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "actionControl":Landroid/view/View;
    invoke-virtual {v8, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;->openUtilityPanel(Landroid/widget/LinearLayout;)V

    .line 112
    :cond_2
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->isShowingImageStatePanel()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->showImageStatePanel(Z)V

    .line 113
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    goto/16 :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/Editor;->detach()V

    .line 121
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 122
    return-void
.end method

.method public setEditor(I)V
    .locals 0
    .param p1, "editor"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mEditorID:I

    .line 46
    return-void
.end method

.method public showImageStatePanel(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const v5, 0x7f0a00f6

    .line 125
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 144
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 129
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "MainPanel"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 131
    .local v0, "panel":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/android/gallery3d/filtershow/category/MainPanel;

    if-eqz v3, :cond_2

    .line 132
    :cond_1
    const/high16 v3, 0x10a0000

    const v4, 0x10a0001

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 134
    :cond_2
    if-eqz p1, :cond_4

    .line 135
    new-instance v1, Lcom/android/gallery3d/filtershow/state/StatePanel;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/state/StatePanel;-><init>()V

    .line 136
    .local v1, "statePanel":Lcom/android/gallery3d/filtershow/state/StatePanel;
    const-string v3, "StatePanel"

    invoke-virtual {v2, v5, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 143
    .end local v1    # "statePanel":Lcom/android/gallery3d/filtershow/state/StatePanel;
    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 138
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "StatePanel"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 139
    .local v1, "statePanel":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_3

    .line 140
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method
