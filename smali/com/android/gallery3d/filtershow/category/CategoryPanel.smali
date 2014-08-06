.class public Lcom/android/gallery3d/filtershow/category/CategoryPanel;
.super Landroid/support/v4/app/Fragment;
.source "CategoryPanel.java"


# instance fields
.field private mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

.field private mCurrentAdapter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    return-void
.end method

.method private loadAdapter(I)V
    .locals 3
    .param p1, "adapter"    # I

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 50
    .local v0, "activity":Lcom/android/gallery3d/filtershow/FilterShowActivity;
    packed-switch p1, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 52
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getCategoryLooksAdapter()Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .line 53
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->initializeSelection(I)V

    goto :goto_0

    .line 57
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getCategoryBordersAdapter()Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .line 58
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->initializeSelection(I)V

    goto :goto_0

    .line 62
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getCategoryGeometryAdapter()Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .line 63
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->initializeSelection(I)V

    goto :goto_0

    .line 67
    :pswitch_3
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getCategoryFiltersAdapter()Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .line 68
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->initializeSelection(I)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 45
    iget v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->loadAdapter(I)V

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0a00c2

    .line 83
    const v4, 0x7f04002c

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 87
    .local v0, "main":Landroid/widget/LinearLayout;
    if-eqz p3, :cond_0

    .line 88
    const-string v4, "currentPanel"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 89
    .local v3, "selectedPanel":I
    invoke-direct {p0, v3}, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->loadAdapter(I)V

    .line 92
    .end local v3    # "selectedPanel":I
    :cond_0
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 93
    .local v2, "panelView":Landroid/view/View;
    instance-of v4, v2, Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    if-eqz v4, :cond_1

    move-object v1, v2

    .line 94
    check-cast v1, Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    .line 95
    .local v1, "panel":Lcom/android/gallery3d/filtershow/category/CategoryTrack;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->setUseFilterIconButton(Z)V

    .line 96
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->setAdapter(Lcom/android/gallery3d/filtershow/category/CategoryAdapter;)V

    .line 97
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->setContainer(Landroid/view/View;)V

    .line 103
    .end local v1    # "panel":Lcom/android/gallery3d/filtershow/category/CategoryTrack;
    :goto_0
    return-object v0

    .line 99
    :cond_1
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 100
    .local v1, "panel":Landroid/widget/ListView;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->setContainer(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    const-string v0, "currentPanel"

    iget v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public setAdapter(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/gallery3d/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    .line 40
    return-void
.end method
