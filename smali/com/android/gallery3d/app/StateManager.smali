.class public Lcom/android/gallery3d/app/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/StateManager$StateEntry;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mIsResumed:Z

.field private mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

.field private mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/gallery3d/app/StateManager$StateEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/StateManager;->mIsResumed:Z

    .line 45
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    .line 49
    iput-object p1, p0, Lcom/android/gallery3d/app/StateManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 50
    return-void
.end method


# virtual methods
.method public clearActivityResult()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/ActivityState;->clearStateResult()V

    .line 145
    :cond_0
    return-void
.end method

.method public clearTasks()V
    .locals 2

    .prologue
    .line 176
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/android/gallery3d/app/ActivityState;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method public createOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/ActivityState;->onCreateActionBar(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "StateManager"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/android/gallery3d/app/ActivityState;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 269
    return-void
.end method

.method finishState(Lcom/android/gallery3d/app/ActivityState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/gallery3d/app/ActivityState;

    .prologue
    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;Z)V

    .line 172
    return-void
.end method

.method finishState(Lcom/android/gallery3d/app/ActivityState;Z)V
    .locals 7
    .param p1, "state"    # Lcom/android/gallery3d/app/ActivityState;
    .param p2, "fireOnPause"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 184
    iget-object v2, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 185
    iget-object v2, p0, Lcom/android/gallery3d/app/StateManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 186
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/android/gallery3d/app/StateManager;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/android/gallery3d/app/StateManager;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iget v2, v2, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v4, p0, Lcom/android/gallery3d/app/StateManager;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {v0, v2, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 189
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 190
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 191
    const-string v2, "StateManager"

    const-string v3, "finish is rejected, keep the last state"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    :goto_0
    return-void

    .line 194
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_2
    const-string v2, "StateManager"

    const-string v4, "no more state, finish activity"

    invoke-static {v2, v4}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_3
    const-string v2, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v2, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/android/gallery3d/app/ActivityState;

    if-eq p1, v2, :cond_5

    .line 199
    invoke-virtual {p1}, Lcom/android/gallery3d/app/ActivityState;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 200
    const-string v2, "StateManager"

    const-string v3, "The state is already destroyed"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The stateview to be finished is not at the top of the stack: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/android/gallery3d/app/ActivityState;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 210
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 211
    iput-boolean v6, p1, Lcom/android/gallery3d/app/ActivityState;->mIsFinishing:Z

    .line 212
    iget-object v2, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/StateManager$StateEntry;

    iget-object v1, v2, Lcom/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/android/gallery3d/app/ActivityState;

    .line 213
    .local v1, "top":Lcom/android/gallery3d/app/ActivityState;
    :goto_1
    iget-boolean v2, p0, Lcom/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    .line 214
    if-eqz v1, :cond_6

    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {p1, v2, v4, v5}, Lcom/android/gallery3d/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)V

    .line 218
    :cond_6
    invoke-virtual {p1}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 220
    :cond_7
    iget-object v2, p0, Lcom/android/gallery3d/app/StateManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/GLRoot;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 221
    invoke-virtual {p1}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 223
    if-eqz v1, :cond_8

    iget-boolean v2, p0, Lcom/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/android/gallery3d/app/ActivityState;->resume()V

    .line 224
    :cond_8
    if-eqz v1, :cond_1

    .line 225
    const-string v2, "Gallery"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "top":Lcom/android/gallery3d/app/ActivityState;
    :cond_9
    move-object v1, v3

    .line 212
    goto :goto_1
.end method

.method public getStateCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getTopState()Lcom/android/gallery3d/app/ActivityState;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/android/gallery3d/app/ActivityState;

    return-object v0

    .line 330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStateClass(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/gallery3d/app/ActivityState;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/gallery3d/app/ActivityState;>;"
    iget-object v2, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/StateManager$StateEntry;

    .line 322
    .local v0, "entry":Lcom/android/gallery3d/app/StateManager$StateEntry;
    iget-object v2, v0, Lcom/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/android/gallery3d/app/ActivityState;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    const/4 v2, 0x1

    .line 326
    .end local v0    # "entry":Lcom/android/gallery3d/app/StateManager$StateEntry;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public itemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 152
    iget-object v1, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/ActivityState;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_2

    .line 155
    iget-object v1, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 161
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    .line 168
    :cond_0
    return-void
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 120
    iget-object v2, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/StateManager$StateEntry;

    .line 121
    .local v0, "entry":Lcom/android/gallery3d/app/StateManager$StateEntry;
    iget-object v2, v0, Lcom/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/android/gallery3d/app/ActivityState;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 123
    .end local v0    # "entry":Lcom/android/gallery3d/app/StateManager$StateEntry;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/StateManager;->mIsResumed:Z

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    goto :goto_0
.end method

.method public restoreFromState(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 273
    const-string v13, "StateManager"

    const-string v14, "restoreFromState"

    invoke-static {v13, v14}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v13, "activity-state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    .line 275
    .local v9, "list":[Landroid/os/Parcelable;
    const/4 v12, 0x0

    .line 276
    .local v12, "topState":Lcom/android/gallery3d/app/ActivityState;
    move-object v2, v9

    .local v2, "arr$":[Landroid/os/Parcelable;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v10, v2, v6

    .local v10, "parcelable":Landroid/os/Parcelable;
    move-object v3, v10

    .line 277
    check-cast v3, Landroid/os/Bundle;

    .line 278
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v13, "class"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 281
    .local v7, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/gallery3d/app/ActivityState;>;"
    const-string v13, "data"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 282
    .local v4, "data":Landroid/os/Bundle;
    const-string v13, "bundle"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 286
    .local v11, "state":Landroid/os/Bundle;
    :try_start_0
    const-string v13, "StateManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "restoreFromState "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .local v1, "activityState":Lcom/android/gallery3d/app/ActivityState;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/StateManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v13, v4}, Lcom/android/gallery3d/app/ActivityState;->initialize(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 292
    invoke-virtual {v1, v4, v11}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v14, Lcom/android/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v14, v4, v1}, Lcom/android/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/android/gallery3d/app/ActivityState;)V

    invoke-virtual {v13, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    move-object v12, v1

    .line 276
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "activityState":Lcom/android/gallery3d/app/ActivityState;
    :catch_0
    move-exception v5

    .line 289
    .local v5, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 296
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "data":Landroid/os/Bundle;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/gallery3d/app/ActivityState;>;"
    .end local v10    # "parcelable":Landroid/os/Parcelable;
    .end local v11    # "state":Landroid/os/Bundle;
    :cond_0
    if-eqz v12, :cond_1

    .line 297
    const-string v13, "Gallery"

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/StateManager;->mIsResumed:Z

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/ActivityState;->resume()V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 303
    const-string v7, "StateManager"

    const-string v8, "saveState"

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v7, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    new-array v5, v7, [Landroid/os/Parcelable;

    .line 306
    .local v5, "list":[Landroid/os/Parcelable;
    const/4 v2, 0x0

    .line 307
    .local v2, "i":I
    iget-object v7, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/StateManager$StateEntry;

    .line 308
    .local v1, "entry":Lcom/android/gallery3d/app/StateManager$StateEntry;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "class"

    iget-object v8, v1, Lcom/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/android/gallery3d/app/ActivityState;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 310
    const-string v7, "data"

    iget-object v8, v1, Lcom/android/gallery3d/app/StateManager$StateEntry;->data:Landroid/os/Bundle;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 311
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 312
    .local v6, "state":Landroid/os/Bundle;
    iget-object v7, v1, Lcom/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/android/gallery3d/app/ActivityState;

    invoke-virtual {v7, v6}, Lcom/android/gallery3d/app/ActivityState;->onSaveState(Landroid/os/Bundle;)V

    .line 313
    const-string v7, "bundle"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 314
    const-string v7, "StateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveState "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/android/gallery3d/app/ActivityState;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-object v0, v5, v2

    move v2, v3

    .line 316
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 317
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "entry":Lcom/android/gallery3d/app/StateManager$StateEntry;
    .end local v6    # "state":Landroid/os/Bundle;
    :cond_0
    const-string v7, "activity-state"

    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 318
    return-void
.end method

.method public startState(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 7
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/gallery3d/app/ActivityState;>;"
    const-string v4, "StateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v2, 0x0

    .line 57
    .local v2, "state":Lcom/android/gallery3d/app/ActivityState;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "state":Lcom/android/gallery3d/app/ActivityState;
    check-cast v2, Lcom/android/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .restart local v2    # "state":Lcom/android/gallery3d/app/ActivityState;
    iget-object v4, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v3

    .line 63
    .local v3, "top":Lcom/android/gallery3d/app/ActivityState;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v3, v4, p1, v5}, Lcom/android/gallery3d/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)V

    .line 65
    iget-boolean v4, p0, Lcom/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 68
    .end local v3    # "top":Lcom/android/gallery3d/app/ActivityState;
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/StateManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    instance-of v4, v4, Lcom/android/camera/CameraActivity;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .line 70
    .local v1, "ignoreHit":Z
    :goto_0
    if-nez v1, :cond_1

    .line 71
    const-string v4, "Gallery"

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/StateManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v4, p2}, Lcom/android/gallery3d/app/ActivityState;->initialize(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 77
    iget-object v4, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v5, Lcom/android/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v5, p2, v2}, Lcom/android/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/android/gallery3d/app/ActivityState;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/4 v4, 0x0

    invoke-virtual {v2, p2, v4}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 79
    iget-boolean v4, p0, Lcom/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/ActivityState;->resume()V

    .line 80
    :cond_2
    return-void

    .line 58
    .end local v1    # "ignoreHit":Z
    .end local v2    # "state":Lcom/android/gallery3d/app/ActivityState;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "state":Lcom/android/gallery3d/app/ActivityState;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 6
    .param p2, "requestCode"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/gallery3d/app/ActivityState;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/gallery3d/app/ActivityState;>;"
    const-string v3, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startStateForResult "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v2, 0x0

    .line 87
    .local v2, "state":Lcom/android/gallery3d/app/ActivityState;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "state":Lcom/android/gallery3d/app/ActivityState;
    check-cast v2, Lcom/android/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .restart local v2    # "state":Lcom/android/gallery3d/app/ActivityState;
    iget-object v3, p0, Lcom/android/gallery3d/app/StateManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v3, p3}, Lcom/android/gallery3d/app/ActivityState;->initialize(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 92
    new-instance v3, Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    invoke-direct {v3}, Lcom/android/gallery3d/app/ActivityState$ResultEntry;-><init>()V

    iput-object v3, v2, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    .line 93
    iget-object v3, v2, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iput p2, v3, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->requestCode:I

    .line 95
    iget-object v3, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    .line 97
    .local v0, "as":Lcom/android/gallery3d/app/ActivityState;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v0, v3, p1, v4}, Lcom/android/gallery3d/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)V

    .line 99
    iget-object v3, v2, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iput-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    .line 100
    iget-boolean v3, p0, Lcom/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 104
    .end local v0    # "as":Lcom/android/gallery3d/app/ActivityState;
    :cond_0
    :goto_0
    const-string v3, "Gallery"

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v4, Lcom/android/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v4, p3, v2}, Lcom/android/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/android/gallery3d/app/ActivityState;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 108
    iget-boolean v3, p0, Lcom/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/gallery3d/app/ActivityState;->resume()V

    .line 109
    :cond_1
    return-void

    .line 88
    .end local v2    # "state":Lcom/android/gallery3d/app/ActivityState;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 102
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "state":Lcom/android/gallery3d/app/ActivityState;
    :cond_2
    iget-object v3, v2, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iput-object v3, p0, Lcom/android/gallery3d/app/StateManager;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    goto :goto_0
.end method

.method public switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "oldState"    # Lcom/android/gallery3d/app/ActivityState;
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/app/ActivityState;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 232
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/gallery3d/app/ActivityState;>;"
    const-string v2, "StateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v2, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/android/gallery3d/app/ActivityState;

    if-eq p1, v2, :cond_0

    .line 234
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The stateview to be finished is not at the top of the stack: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/android/gallery3d/app/ActivityState;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 240
    const-string v2, "app-bridge"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {p1, v2, p2, v3}, Lcom/android/gallery3d/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)V

    .line 245
    :cond_1
    iget-boolean v2, p0, Lcom/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 246
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 249
    const/4 v1, 0x0

    .line 251
    .local v1, "state":Lcom/android/gallery3d/app/ActivityState;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "state":Lcom/android/gallery3d/app/ActivityState;
    check-cast v1, Lcom/android/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .restart local v1    # "state":Lcom/android/gallery3d/app/ActivityState;
    iget-object v2, p0, Lcom/android/gallery3d/app/StateManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v2, p3}, Lcom/android/gallery3d/app/ActivityState;->initialize(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 256
    iget-object v2, p0, Lcom/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v3, Lcom/android/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v3, p3, v1}, Lcom/android/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/android/gallery3d/app/ActivityState;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 258
    iget-boolean v2, p0, Lcom/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/gallery3d/app/ActivityState;->resume()V

    .line 259
    :cond_3
    const-string v2, "Gallery"

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void

    .line 252
    .end local v1    # "state":Lcom/android/gallery3d/app/ActivityState;
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
