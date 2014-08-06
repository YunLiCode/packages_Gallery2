.class public Lcom/android/gallery3d/filtershow/state/StateAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/gallery3d/filtershow/state/State;",
        ">;"
    }
.end annotation


# instance fields
.field private mOrientation:I

.field private mOriginalText:Ljava/lang/String;

.field private mResultText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 41
    const v0, 0x7f0b019c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateAdapter;->mOriginalText:Ljava/lang/String;

    .line 42
    const v0, 0x7f0b019d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateAdapter;->mResultText:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public addOriginal()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/android/gallery3d/filtershow/state/State;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/StateAdapter;->mOriginalText:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/state/State;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->add(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public contains(Lcom/android/gallery3d/filtershow/state/State;)Z
    .locals 2
    .param p1, "state"    # Lcom/android/gallery3d/filtershow/state/State;

    .prologue
    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 70
    const/4 v1, 0x1

    .line 73
    :goto_1
    return v1

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public fill(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/state/State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "states":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/state/State;>;"
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->same(Ljava/util/Vector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->clear()V

    .line 103
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->addOriginal()V

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->addAll(Ljava/util/Collection;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, "view":Lcom/android/gallery3d/filtershow/state/StateView;
    if-nez p2, :cond_0

    .line 49
    new-instance p2, Lcom/android/gallery3d/filtershow/state/StateView;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Lcom/android/gallery3d/filtershow/state/StateView;-><init>(Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    move-object v3, p2

    .line 51
    check-cast v3, Lcom/android/gallery3d/filtershow/state/StateView;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/state/State;

    .line 53
    .local v1, "state":Lcom/android/gallery3d/filtershow/state/State;
    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/state/StateView;->setState(Lcom/android/gallery3d/filtershow/state/State;)V

    .line 54
    iget v4, p0, Lcom/android/gallery3d/filtershow/state/StateAdapter;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/state/StateView;->setOrientation(I)V

    .line 55
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 56
    .local v0, "currentRep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/state/State;->getFilterRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    .line 57
    .local v2, "stateRep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getEditorId()I

    move-result v4

    const v5, 0x7f0a0054

    if-eq v4, v5, :cond_1

    .line 60
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/state/StateView;->setSelected(Z)V

    .line 64
    :goto_0
    return-object v3

    .line 62
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/state/StateView;->setSelected(Z)V

    goto :goto_0
.end method

.method public remove(Lcom/android/gallery3d/filtershow/state/State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/gallery3d/filtershow/state/State;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/state/State;->getFilterRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    .line 112
    .local v1, "filterRepresentation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 113
    .local v0, "activity":Lcom/android/gallery3d/filtershow/FilterShowActivity;
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->removeFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 114
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Lcom/android/gallery3d/filtershow/state/State;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->remove(Lcom/android/gallery3d/filtershow/state/State;)V

    return-void
.end method

.method public same(Ljava/util/Vector;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/state/State;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "states":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/state/State;>;"
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->getCount()I

    move-result v4

    if-eq v2, v4, :cond_0

    move v2, v3

    .line 95
    :goto_0
    return v2

    .line 89
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/state/State;

    .line 91
    .local v1, "state":Lcom/android/gallery3d/filtershow/state/State;
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/state/State;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/state/State;->equals(Lcom/android/gallery3d/filtershow/state/State;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 92
    goto :goto_0

    .line 89
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    .end local v1    # "state":Lcom/android/gallery3d/filtershow/state/State;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/gallery3d/filtershow/state/StateAdapter;->mOrientation:I

    .line 78
    return-void
.end method
