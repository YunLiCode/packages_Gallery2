.class public Lcom/google/android/pano/dialog/ActionFragment;
.super Lcom/google/android/pano/dialog/ScrollAdapterFragment;
.source "ActionFragment.java"

# interfaces
.implements Lcom/google/android/pano/dialog/ActionAdapter$Listener;
.implements Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;
.implements Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;
.implements Lcom/google/android/pano/dialog/LiteFragment;


# instance fields
.field private final mBase:Lcom/google/android/pano/dialog/BaseActionFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/pano/dialog/ScrollAdapterFragment;-><init>()V

    .line 16
    new-instance v0, Lcom/google/android/pano/dialog/BaseActionFragment;

    invoke-direct {v0, p0}, Lcom/google/android/pano/dialog/BaseActionFragment;-><init>(Lcom/google/android/pano/dialog/LiteFragment;)V

    iput-object v0, p0, Lcom/google/android/pano/dialog/ActionFragment;->mBase:Lcom/google/android/pano/dialog/BaseActionFragment;

    .line 30
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionFragment;->mBase:Lcom/google/android/pano/dialog/BaseActionFragment;

    invoke-super {p0, v0}, Lcom/google/android/pano/dialog/ScrollAdapterFragment;->setBaseScrollAdapterFragment(Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;)V

    .line 31
    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lcom/google/android/pano/dialog/ActionFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;)",
            "Lcom/google/android/pano/dialog/ActionFragment;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/pano/dialog/ActionFragment;->newInstance(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/google/android/pano/dialog/ActionFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/google/android/pano/dialog/ActionFragment;
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
            "Lcom/google/android/pano/dialog/ActionFragment;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    new-instance v0, Lcom/google/android/pano/dialog/ActionFragment;

    invoke-direct {v0}, Lcom/google/android/pano/dialog/ActionFragment;-><init>()V

    .line 24
    .local v0, "fragment":Lcom/google/android/pano/dialog/ActionFragment;
    invoke-static {p0, p1}, Lcom/google/android/pano/dialog/BaseActionFragment;->buildArgs(Ljava/util/ArrayList;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/pano/dialog/ActionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public onActionClicked(Lcom/google/android/pano/dialog/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionFragment;->mBase:Lcom/google/android/pano/dialog/BaseActionFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/dialog/BaseActionFragment;->onActionClicked(Lcom/google/android/pano/dialog/Action;)V

    .line 54
    return-void
.end method

.method public onActionFocused(Lcom/google/android/pano/dialog/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionFragment;->mBase:Lcom/google/android/pano/dialog/BaseActionFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/dialog/BaseActionFragment;->onActionFocused(Lcom/google/android/pano/dialog/Action;)V

    .line 59
    return-void
.end method

.method public onActionSelect(Lcom/google/android/pano/dialog/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionFragment;->mBase:Lcom/google/android/pano/dialog/BaseActionFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/dialog/BaseActionFragment;->onActionSelect(Lcom/google/android/pano/dialog/Action;)V

    .line 64
    return-void
.end method

.method public onActionUnselect(Lcom/google/android/pano/dialog/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionFragment;->mBase:Lcom/google/android/pano/dialog/BaseActionFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/dialog/BaseActionFragment;->onActionUnselect(Lcom/google/android/pano/dialog/Action;)V

    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/android/pano/dialog/ScrollAdapterFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionFragment;->mBase:Lcom/google/android/pano/dialog/BaseActionFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/dialog/BaseActionFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/google/android/pano/dialog/ScrollAdapterFragment;->onResume()V

    .line 42
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionFragment;->mBase:Lcom/google/android/pano/dialog/BaseActionFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseActionFragment;->onResume()V

    .line 43
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/google/android/pano/dialog/ScrollAdapterFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionFragment;->mBase:Lcom/google/android/pano/dialog/BaseActionFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/dialog/BaseActionFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method
