.class public Lcom/android/gallery3d/filtershow/category/CategoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/gallery3d/filtershow/category/Action;",
        ">;"
    }
.end annotation


# instance fields
.field mCategory:I

.field private mContainer:Landroid/view/View;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mSelectedPosition:I

.field private mUseFilterIconButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;-><init>(Landroid/content/Context;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mItemWidth:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mUseFilterIconButton:Z

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42c80000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mItemHeight:I

    .line 47
    return-void
.end method

.method private invalidateView(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mContainer:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/ListView;

    if-eqz v3, :cond_1

    .line 130
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mContainer:Landroid/view/View;

    check-cast v2, Landroid/widget/ListView;

    .line 131
    .local v2, "lv":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 136
    .end local v2    # "lv":Landroid/widget/ListView;
    :goto_0
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 139
    :cond_0
    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mContainer:Landroid/view/View;

    check-cast v1, Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    .line 134
    .local v1, "ct":Lcom/android/gallery3d/filtershow/category/CategoryTrack;
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/android/gallery3d/filtershow/category/Action;)V
    .locals 0
    .param p1, "action"    # Lcom/android/gallery3d/filtershow/category/Action;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/category/Action;->setAdapter(Lcom/android/gallery3d/filtershow/category/CategoryAdapter;)V

    .line 65
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, Lcom/android/gallery3d/filtershow/category/Action;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->add(Lcom/android/gallery3d/filtershow/category/Action;)V

    return-void
.end method

.method public getTinyPlanet()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 4

    .prologue
    .line 158
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 159
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/category/Action;

    .line 160
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/Action;->getRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/Action;->getRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    if-ne v2, v3, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/Action;->getRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 166
    :goto_1
    return-object v0

    .line 158
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 85
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mUseFilterIconButton:Z

    if-eqz v3, :cond_3

    .line 86
    if-nez p2, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 89
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040027

    invoke-virtual {v1, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    move-object v2, p2

    .line 91
    check-cast v2, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;

    .line 92
    .local v2, "view":Lcom/android/gallery3d/filtershow/ui/FilterIconButton;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/category/Action;

    .line 93
    .local v0, "action":Lcom/android/gallery3d/filtershow/category/Action;
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->setAction(Lcom/android/gallery3d/filtershow/category/Action;)V

    .line 94
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/Action;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->setup(Ljava/lang/String;Landroid/widget/LinearLayout;Lcom/android/gallery3d/filtershow/category/CategoryAdapter;)V

    .line 95
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget v4, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mItemWidth:I

    iget v5, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mItemHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->setTag(Ljava/lang/Object;)V

    .line 98
    iget v3, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mCategory:I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mCategory:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 99
    :cond_1
    invoke-virtual {v2, v6}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->setBackgroundResource(I)V

    .line 111
    .end local v0    # "action":Lcom/android/gallery3d/filtershow/category/Action;
    .end local v2    # "view":Lcom/android/gallery3d/filtershow/ui/FilterIconButton;
    :cond_2
    :goto_0
    return-object v2

    .line 103
    :cond_3
    if-nez p2, :cond_4

    .line 104
    new-instance p2, Lcom/android/gallery3d/filtershow/category/CategoryView;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/android/gallery3d/filtershow/category/CategoryView;-><init>(Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_4
    move-object v2, p2

    .line 106
    check-cast v2, Lcom/android/gallery3d/filtershow/category/CategoryView;

    .line 107
    .local v2, "view":Lcom/android/gallery3d/filtershow/category/CategoryView;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/category/Action;

    invoke-virtual {v2, v3, p0}, Lcom/android/gallery3d/filtershow/category/CategoryView;->setAction(Lcom/android/gallery3d/filtershow/category/Action;Lcom/android/gallery3d/filtershow/category/CategoryAdapter;)V

    .line 108
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget v4, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mItemWidth:I

    iget v5, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mItemHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/category/CategoryView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/category/CategoryView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public imageLoaded()V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->notifyDataSetChanged()V

    .line 147
    return-void
.end method

.method public initializeSelection(I)V
    .locals 4
    .param p1, "category"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mCategory:I

    .line 69
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 70
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getPreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    .line 71
    .local v1, "preset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    if-eqz v1, :cond_3

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 73
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/category/Action;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/category/Action;->getRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    iput v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    .line 72
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "i":I
    .end local v1    # "preset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    .line 81
    :cond_3
    return-void
.end method

.method public isSelected(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTinyPlanet()V
    .locals 4

    .prologue
    .line 170
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 171
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/category/Action;

    .line 172
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/Action;->getRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/Action;->getRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    if-ne v2, v3, :cond_1

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->remove(Ljava/lang/Object;)V

    .line 179
    :cond_0
    return-void

    .line 170
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setContainer(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mContainer:Landroid/view/View;

    .line 143
    return-void
.end method

.method public setItemHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mItemHeight:I

    .line 55
    return-void
.end method

.method public setItemWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mItemWidth:I

    .line 59
    return-void
.end method

.method public setSelected(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    .line 116
    .local v0, "old":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    .line 117
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 118
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->invalidateView(I)V

    .line 120
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->invalidateView(I)V

    .line 121
    return-void
.end method

.method public setUseFilterIconButton(Z)V
    .locals 0
    .param p1, "useFilterIconButton"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->mUseFilterIconButton:Z

    .line 151
    return-void
.end method
