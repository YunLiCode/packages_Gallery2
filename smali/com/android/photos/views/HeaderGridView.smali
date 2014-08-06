.class public Lcom/android/photos/views/HeaderGridView;
.super Landroid/widget/GridView;
.source "HeaderGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/photos/views/HeaderGridView$1;,
        Lcom/android/photos/views/HeaderGridView$HeaderViewGridAdapter;,
        Lcom/android/photos/views/HeaderGridView$FullWidthFixedViewLayout;,
        Lcom/android/photos/views/HeaderGridView$FixedViewInfo;
    }
.end annotation


# instance fields
.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/photos/views/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 65
    invoke-direct {p0}, Lcom/android/photos/views/HeaderGridView;->initHeaderGridView()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 70
    invoke-direct {p0}, Lcom/android/photos/views/HeaderGridView;->initHeaderGridView()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 75
    invoke-direct {p0}, Lcom/android/photos/views/HeaderGridView;->initHeaderGridView()V

    .line 76
    return-void
.end method

.method private initHeaderGridView()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 61
    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/photos/views/HeaderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 107
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/android/photos/views/HeaderGridView$HeaderViewGridAdapter;

    if-nez v3, :cond_0

    .line 108
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_0
    new-instance v2, Lcom/android/photos/views/HeaderGridView$FixedViewInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/photos/views/HeaderGridView$FixedViewInfo;-><init>(Lcom/android/photos/views/HeaderGridView$1;)V

    .line 113
    .local v2, "info":Lcom/android/photos/views/HeaderGridView$FixedViewInfo;
    new-instance v1, Lcom/android/photos/views/HeaderGridView$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Lcom/android/photos/views/HeaderGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/photos/views/HeaderGridView$FullWidthFixedViewLayout;-><init>(Lcom/android/photos/views/HeaderGridView;Landroid/content/Context;)V

    .line 114
    .local v1, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 115
    iput-object p1, v2, Lcom/android/photos/views/HeaderGridView$FixedViewInfo;->view:Landroid/view/View;

    .line 116
    iput-object v1, v2, Lcom/android/photos/views/HeaderGridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 117
    iput-object p2, v2, Lcom/android/photos/views/HeaderGridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 118
    iput-boolean p3, v2, Lcom/android/photos/views/HeaderGridView$FixedViewInfo;->isSelectable:Z

    .line 119
    iget-object v3, p0, Lcom/android/photos/views/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    if-eqz v0, :cond_1

    .line 124
    check-cast v0, Lcom/android/photos/views/HeaderGridView$HeaderViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/photos/views/HeaderGridView$HeaderViewGridAdapter;->notifyDataSetChanged()V

    .line 126
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 81
    invoke-virtual {p0}, Lcom/android/photos/views/HeaderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 82
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/photos/views/HeaderGridView$HeaderViewGridAdapter;

    if-eqz v1, :cond_0

    .line 83
    check-cast v0, Lcom/android/photos/views/HeaderGridView$HeaderViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/android/photos/views/HeaderGridView;->getNumColumns()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/photos/views/HeaderGridView$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 40
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/android/photos/views/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 179
    iget-object v2, p0, Lcom/android/photos/views/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 180
    new-instance v0, Lcom/android/photos/views/HeaderGridView$HeaderViewGridAdapter;

    iget-object v2, p0, Lcom/android/photos/views/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v2, p1}, Lcom/android/photos/views/HeaderGridView$HeaderViewGridAdapter;-><init>(Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 181
    .local v0, "hadapter":Lcom/android/photos/views/HeaderGridView$HeaderViewGridAdapter;
    invoke-virtual {p0}, Lcom/android/photos/views/HeaderGridView;->getNumColumns()I

    move-result v1

    .line 182
    .local v1, "numColumns":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 183
    invoke-virtual {v0, v1}, Lcom/android/photos/views/HeaderGridView$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 185
    :cond_0
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    .end local v0    # "hadapter":Lcom/android/photos/views/HeaderGridView$HeaderViewGridAdapter;
    .end local v1    # "numColumns":I
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setClipChildren(Z)V
    .locals 0
    .param p1, "clipChildren"    # Z

    .prologue
    .line 90
    return-void
.end method
