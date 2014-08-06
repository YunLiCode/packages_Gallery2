.class public Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;
.super Ljava/lang/Object;
.source "BaseScrollAdapterFragment.java"

# interfaces
.implements Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

.field private final mFragment:Lcom/google/android/pano/dialog/LiteFragment;

.field private mPostItemChangeRunnable:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;

.field private mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

.field private mSelectorView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/pano/dialog/LiteFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/google/android/pano/dialog/LiteFragment;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public ensureList()V
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "root":Landroid/view/View;
    if-nez v0, :cond_2

    .line 92
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Content view not created yet."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_2
    instance-of v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView;

    if-eqz v1, :cond_4

    .line 95
    check-cast v0, Lcom/google/android/pano/widget/ScrollAdapterView;

    .end local v0    # "root":Landroid/view/View;
    iput-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;

    .line 104
    :goto_1
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    if-eqz v1, :cond_3

    .line 106
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-virtual {v1, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v1, p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->setOnItemChangeListener(Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;)V

    goto :goto_0

    .line 98
    .restart local v0    # "root":Landroid/view/View;
    :cond_4
    sget v1, Lcom/google/android/pano/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/widget/ScrollAdapterView;

    iput-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    .line 99
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    if-nez v1, :cond_5

    .line 100
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No scroll adapter view exists."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_5
    sget v1, Lcom/google/android/pano/R$id;->selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;

    goto :goto_1
.end method

.method public getAdapter()Lcom/google/android/pano/widget/ScrollAdapter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    return-object v0
.end method

.method public getScrollAdapterView()Lcom/google/android/pano/widget/ScrollAdapterView;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->ensureList()V

    .line 64
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public hasCreatedView()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    sget v1, Lcom/google/android/pano/R$layout;->settings_list:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    .line 47
    return-object v0
.end method

.method public onItemSelected(Landroid/view/View;II)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "targetCenter"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mPostItemChangeRunnable:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mPostItemChangeRunnable:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;->cancel()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mPostItemChangeRunnable:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;

    .line 120
    :cond_0
    new-instance v0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;

    invoke-direct {v0, p0, p1}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;-><init>(Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mPostItemChangeRunnable:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;

    .line 121
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mPostItemChangeRunnable:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 122
    return-void
.end method

.method public setAdapter(Lcom/google/android/pano/widget/ScrollAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/google/android/pano/widget/ScrollAdapter;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    .line 73
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 76
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->setSelection(I)V

    .line 80
    return-void
.end method
