.class public abstract Lcom/google/android/pano/widget/ViewsStateBundle;
.super Ljava/lang/Object;
.source "ViewsStateBundle.java"


# instance fields
.field private final childStates:Landroid/os/Bundle;

.field private limitNumber:I

.field private savePolicy:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "policy"    # I
    .param p2, "limit"    # I

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->savePolicy:I

    .line 48
    iput p2, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->limitNumber:I

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->childStates:Landroid/os/Bundle;

    .line 50
    return-void
.end method

.method static getSaveStatesKey(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 165
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getChildStates()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->childStates:Landroid/os/Bundle;

    return-object v0
.end method

.method public final loadView(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    .line 96
    invoke-static {p2}, Lcom/google/android/pano/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->childStates:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 98
    .local v0, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 101
    :cond_0
    return-void
.end method

.method public final saveInvisibleView(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    .line 150
    iget v0, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->savePolicy:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->childStates:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->limitNumber:I

    if-le v0, v1, :cond_0

    .line 157
    :cond_0
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/ViewsStateBundle;->saveViewUnchecked(Landroid/view/View;I)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final saveViewUnchecked(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    .line 110
    invoke-static {p2}, Lcom/google/android/pano/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "key":Ljava/lang/String;
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 112
    .local v0, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 113
    iget-object v2, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->childStates:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 114
    return-void
.end method

.method public final saveVisibleViews()V
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->savePolicy:I

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ViewsStateBundle;->saveVisibleViewsUnchecked()V

    .line 135
    :cond_0
    return-void
.end method

.method protected abstract saveVisibleViewsUnchecked()V
.end method
