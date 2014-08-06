.class public Lcom/google/android/pano/dialog/BaseActionFragment;
.super Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;
.source "BaseActionFragment.java"

# interfaces
.implements Lcom/google/android/pano/dialog/ActionAdapter$Listener;
.implements Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;
.implements Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;


# instance fields
.field private mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

.field private mAddedSavedActions:Z

.field private final mFragment:Lcom/google/android/pano/dialog/LiteFragment;

.field private mIndexToSelect:I

.field private mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

.field private mName:Ljava/lang/String;

.field private mSelectFirstChecked:Z


# direct methods
.method public constructor <init>(Lcom/google/android/pano/dialog/LiteFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/google/android/pano/dialog/LiteFragment;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;-><init>(Lcom/google/android/pano/dialog/LiteFragment;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    .line 57
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mIndexToSelect:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mSelectFirstChecked:Z

    .line 60
    return-void
.end method

.method public static buildArgs(Ljava/util/ArrayList;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "actions"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 68
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-object v0
.end method

.method private loadActionsFromArgumentsIfNecessary()V
    .locals 5

    .prologue
    .line 177
    iget-object v3, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v3}, Lcom/google/android/pano/dialog/LiteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAddedSavedActions:Z

    if-nez v3, :cond_1

    .line 178
    iget-object v3, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v3}, Lcom/google/android/pano/dialog/LiteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "actions"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 180
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 182
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 183
    iget-boolean v3, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mSelectFirstChecked:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v3}, Lcom/google/android/pano/dialog/Action;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mIndexToSelect:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 185
    iput v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mIndexToSelect:I

    .line 187
    :cond_0
    iget-object v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v4, v3}, Lcom/google/android/pano/dialog/ActionAdapter;->addAction(Lcom/google/android/pano/dialog/Action;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    .end local v1    # "index":I
    .end local v2    # "size":I
    :cond_1
    return-void
.end method


# virtual methods
.method public onActionClicked(Lcom/google/android/pano/dialog/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    invoke-interface {v1, p1}, Lcom/google/android/pano/dialog/ActionAdapter$Listener;->onActionClicked(Lcom/google/android/pano/dialog/Action;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    .line 123
    .local v0, "listener":Lcom/google/android/pano/dialog/ActionAdapter$Listener;
    invoke-interface {v0, p1}, Lcom/google/android/pano/dialog/ActionAdapter$Listener;->onActionClicked(Lcom/google/android/pano/dialog/Action;)V

    goto :goto_0
.end method

.method public onActionFocused(Lcom/google/android/pano/dialog/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;

    .line 132
    .local v0, "listener":Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;
    invoke-interface {v0, p1}, Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;->onActionFocused(Lcom/google/android/pano/dialog/Action;)V

    .line 134
    .end local v0    # "listener":Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;
    :cond_0
    return-void
.end method

.method public onActionSelect(Lcom/google/android/pano/dialog/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 138
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    .line 141
    .local v0, "listener":Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;
    invoke-interface {v0, p1}, Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;->onActionSelect(Lcom/google/android/pano/dialog/Action;)V

    .line 143
    .end local v0    # "listener":Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;
    :cond_0
    return-void
.end method

.method public onActionUnselect(Lcom/google/android/pano/dialog/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 147
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    .line 150
    .local v0, "listener":Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;
    invoke-interface {v0, p1}, Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;->onActionUnselect(Lcom/google/android/pano/dialog/Action;)V

    .line 152
    .end local v0    # "listener":Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    new-instance v4, Lcom/google/android/pano/dialog/ActionAdapter;

    iget-object v5, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v5}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/pano/dialog/ActionAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    .line 74
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAddedSavedActions:Z

    .line 75
    if-eqz p1, :cond_2

    .line 76
    const-string v4, "actions"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 77
    .local v1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    const-string v4, "index"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 78
    .local v3, "savedIndex":I
    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/Action;

    .line 80
    .local v0, "action":Lcom/google/android/pano/dialog/Action;
    iget-object v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    invoke-virtual {v4, v0}, Lcom/google/android/pano/dialog/ActionAdapter;->addAction(Lcom/google/android/pano/dialog/Action;)V

    goto :goto_0

    .line 82
    .end local v0    # "action":Lcom/google/android/pano/dialog/Action;
    :cond_0
    if-ltz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 83
    iput v3, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mIndexToSelect:I

    .line 85
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAddedSavedActions:Z

    .line 88
    .end local v1    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "savedIndex":I
    :cond_2
    iget-object v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v4}, Lcom/google/android/pano/dialog/LiteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mName:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Lcom/google/android/pano/dialog/BaseActionFragment;->loadActionsFromArgumentsIfNecessary()V

    .line 90
    iget-object v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    invoke-virtual {v4, p0}, Lcom/google/android/pano/dialog/ActionAdapter;->setListener(Lcom/google/android/pano/dialog/ActionAdapter$Listener;)V

    .line 91
    iget-object v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    invoke-virtual {v4, p0}, Lcom/google/android/pano/dialog/ActionAdapter;->setOnFocusListener(Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;)V

    .line 92
    iget-object v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    invoke-virtual {v4, p0}, Lcom/google/android/pano/dialog/ActionAdapter;->setOnKeyListener(Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;)V

    .line 93
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 96
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseActionFragment;->getScrollAdapterView()Lcom/google/android/pano/widget/ScrollAdapterView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/pano/dialog/ActionAdapter;->setScrollAdapterView(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/pano/dialog/BaseActionFragment;->setAdapter(Lcom/google/android/pano/widget/ScrollAdapter;)V

    .line 98
    iget v0, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mIndexToSelect:I

    if-eq v0, v2, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseActionFragment;->getScrollAdapterView()Lcom/google/android/pano/widget/ScrollAdapterView;

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mIndexToSelect:I

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->setSelection(I)V

    .line 100
    iput v2, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mIndexToSelect:I

    .line 102
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseActionFragment;->hasCreatedView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "actions"

    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    invoke-virtual {v1}, Lcom/google/android/pano/dialog/ActionAdapter;->getActions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 108
    const-string v0, "index"

    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseActionFragment;->getScrollAdapterView()Lcom/google/android/pano/widget/ScrollAdapterView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    :cond_0
    return-void
.end method
