.class public Lcom/android/gallery3d/filtershow/category/MainPanel;
.super Landroid/support/v4/app/Fragment;
.source "MainPanel.java"


# instance fields
.field private bordersButton:Landroid/widget/ImageButton;

.field private filtersButton:Landroid/widget/ImageButton;

.field private geometryButton:Landroid/widget/ImageButton;

.field private looksButton:Landroid/widget/ImageButton;

.field private mCurrentSelected:I

.field private mMainView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    return-void
.end method

.method private isRightAnimation(I)Z
    .locals 1
    .param p1, "newPos"    # I

    .prologue
    .line 130
    iget v0, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    if-ge p1, v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private selection(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    .line 51
    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/MainPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 53
    .local v0, "activity":Lcom/android/gallery3d/filtershow/FilterShowActivity;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setCurrentPanel(I)V

    .line 55
    .end local v0    # "activity":Lcom/android/gallery3d/filtershow/FilterShowActivity;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->looksButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->bordersButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->geometryButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 69
    :pswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->filtersButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setCategoryFragment(Lcom/android/gallery3d/filtershow/category/CategoryPanel;Z)V
    .locals 3
    .param p1, "category"    # Lcom/android/gallery3d/filtershow/category/CategoryPanel;
    .param p2, "fromRight"    # Z

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/MainPanel;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 138
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    if-eqz p2, :cond_0

    .line 139
    const v1, 0x7f050010

    const v2, 0x7f050014

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 143
    :goto_0
    const v1, 0x7f0a00fc

    const-string v2, "CategoryPanel"

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 144
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 145
    return-void

    .line 141
    :cond_0
    const v1, 0x7f05000f

    const v2, 0x7f050013

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method


# virtual methods
.method public loadCategoryBorderPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 161
    iget v2, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    if-ne v2, v4, :cond_0

    .line 171
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/gallery3d/filtershow/category/MainPanel;->isRightAnimation(I)Z

    move-result v1

    .line 165
    .local v1, "fromRight":Z
    iget v2, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/filtershow/category/MainPanel;->selection(IZ)V

    .line 166
    new-instance v0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/category/CategoryPanel;-><init>()V

    .line 167
    .local v0, "categoryPanel":Lcom/android/gallery3d/filtershow/category/CategoryPanel;
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->setAdapter(I)V

    .line 168
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/category/MainPanel;->setCategoryFragment(Lcom/android/gallery3d/filtershow/category/CategoryPanel;Z)V

    .line 169
    iput v4, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    .line 170
    iget v2, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    invoke-direct {p0, v2, v4}, Lcom/android/gallery3d/filtershow/category/MainPanel;->selection(IZ)V

    goto :goto_0
.end method

.method public loadCategoryFiltersPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 187
    iget v2, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    if-ne v2, v4, :cond_0

    .line 197
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/gallery3d/filtershow/category/MainPanel;->isRightAnimation(I)Z

    move-result v1

    .line 191
    .local v1, "fromRight":Z
    iget v2, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/filtershow/category/MainPanel;->selection(IZ)V

    .line 192
    new-instance v0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/category/CategoryPanel;-><init>()V

    .line 193
    .local v0, "categoryPanel":Lcom/android/gallery3d/filtershow/category/CategoryPanel;
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->setAdapter(I)V

    .line 194
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/category/MainPanel;->setCategoryFragment(Lcom/android/gallery3d/filtershow/category/CategoryPanel;Z)V

    .line 195
    iput v4, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    .line 196
    iget v2, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/filtershow/category/MainPanel;->selection(IZ)V

    goto :goto_0
.end method

.method public loadCategoryGeometryPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 174
    iget v2, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    if-ne v2, v4, :cond_0

    .line 184
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/gallery3d/filtershow/category/MainPanel;->isRightAnimation(I)Z

    move-result v1

    .line 178
    .local v1, "fromRight":Z
    iget v2, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/filtershow/category/MainPanel;->selection(IZ)V

    .line 179
    new-instance v0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/category/CategoryPanel;-><init>()V

    .line 180
    .local v0, "categoryPanel":Lcom/android/gallery3d/filtershow/category/CategoryPanel;
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->setAdapter(I)V

    .line 181
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/category/MainPanel;->setCategoryFragment(Lcom/android/gallery3d/filtershow/category/CategoryPanel;Z)V

    .line 182
    iput v4, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    .line 183
    iget v2, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/filtershow/category/MainPanel;->selection(IZ)V

    goto :goto_0
.end method

.method public loadCategoryLookPanel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    iget v2, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    if-nez v2, :cond_0

    .line 158
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/gallery3d/filtershow/category/MainPanel;->isRightAnimation(I)Z

    move-result v1

    .line 152
    .local v1, "fromRight":Z
    iget v2, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/filtershow/category/MainPanel;->selection(IZ)V

    .line 153
    new-instance v0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/category/CategoryPanel;-><init>()V

    .line 154
    .local v0, "categoryPanel":Lcom/android/gallery3d/filtershow/category/CategoryPanel;
    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->setAdapter(I)V

    .line 155
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/category/MainPanel;->setCategoryFragment(Lcom/android/gallery3d/filtershow/category/CategoryPanel;Z)V

    .line 156
    iput v3, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    .line 157
    iget v2, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mCurrentSelected:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/filtershow/category/MainPanel;->selection(IZ)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const v1, 0x7f04003b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    .line 93
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a00fe

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->looksButton:Landroid/widget/ImageButton;

    .line 94
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a00ff

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->bordersButton:Landroid/widget/ImageButton;

    .line 95
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0100

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->geometryButton:Landroid/widget/ImageButton;

    .line 96
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0101

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->filtersButton:Landroid/widget/ImageButton;

    .line 98
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->looksButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/gallery3d/filtershow/category/MainPanel$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/category/MainPanel$1;-><init>(Lcom/android/gallery3d/filtershow/category/MainPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->bordersButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/gallery3d/filtershow/category/MainPanel$2;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/category/MainPanel$2;-><init>(Lcom/android/gallery3d/filtershow/category/MainPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->geometryButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/gallery3d/filtershow/category/MainPanel$3;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/category/MainPanel$3;-><init>(Lcom/android/gallery3d/filtershow/category/MainPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->filtersButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/gallery3d/filtershow/category/MainPanel$4;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/category/MainPanel$4;-><init>(Lcom/android/gallery3d/filtershow/category/MainPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/MainPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 124
    .local v0, "activity":Lcom/android/gallery3d/filtershow/FilterShowActivity;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->isShowingImageStatePanel()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/category/MainPanel;->showImageStatePanel(Z)V

    .line 125
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getCurrentPanel()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/category/MainPanel;->showPanel(I)V

    .line 126
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 78
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 81
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public showImageStatePanel(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const v4, 0x7f0a00f6

    .line 221
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 238
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/MainPanel;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 225
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/MainPanel;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, "container":Landroid/view/View;
    if-eqz p1, :cond_2

    .line 227
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 228
    new-instance v1, Lcom/android/gallery3d/filtershow/state/StatePanel;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/state/StatePanel;-><init>()V

    .line 229
    .local v1, "statePanel":Lcom/android/gallery3d/filtershow/state/StatePanel;
    const-string v3, "StatePanel"

    invoke-virtual {v2, v4, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 237
    .end local v1    # "statePanel":Lcom/android/gallery3d/filtershow/state/StatePanel;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 231
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 232
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/MainPanel;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "StatePanel"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 233
    .local v1, "statePanel":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method public showPanel(I)V
    .locals 0
    .param p1, "currentPanel"    # I

    .prologue
    .line 200
    packed-switch p1, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 202
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/MainPanel;->loadCategoryLookPanel()V

    goto :goto_0

    .line 206
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/MainPanel;->loadCategoryBorderPanel()V

    goto :goto_0

    .line 210
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/MainPanel;->loadCategoryGeometryPanel()V

    goto :goto_0

    .line 214
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/MainPanel;->loadCategoryFiltersPanel()V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
