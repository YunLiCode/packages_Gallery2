.class public Lcom/google/android/pano/dialog/ScrollAdapterFragment;
.super Landroid/app/Fragment;
.source "ScrollAdapterFragment.java"

# interfaces
.implements Lcom/google/android/pano/dialog/LiteFragment;
.implements Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;


# instance fields
.field private mBase:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 22
    new-instance v0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    invoke-direct {v0, p0}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;-><init>(Lcom/google/android/pano/dialog/LiteFragment;)V

    iput-object v0, p0, Lcom/google/android/pano/dialog/ScrollAdapterFragment;->mBase:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/google/android/pano/widget/ScrollAdapter;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/pano/dialog/ScrollAdapterFragment;->mBase:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->getAdapter()Lcom/google/android/pano/widget/ScrollAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getScrollAdapterView()Lcom/google/android/pano/widget/ScrollAdapterView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/pano/dialog/ScrollAdapterFragment;->mBase:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->getScrollAdapterView()Lcom/google/android/pano/widget/ScrollAdapterView;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/pano/dialog/ScrollAdapterFragment;->mBase:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/pano/dialog/ScrollAdapterFragment;->mBase:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemSelected(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "targetCenter"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/pano/dialog/ScrollAdapterFragment;->mBase:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->onItemSelected(Landroid/view/View;II)V

    .line 59
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/pano/dialog/ScrollAdapterFragment;->mBase:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->ensureList()V

    .line 34
    return-void
.end method

.method protected setBaseScrollAdapterFragment(Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;)V
    .locals 0
    .param p1, "base"    # Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/pano/dialog/ScrollAdapterFragment;->mBase:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    .line 63
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/pano/dialog/ScrollAdapterFragment;->mBase:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->setSelection(I)V

    .line 50
    return-void
.end method
