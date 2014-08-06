.class public abstract Lcom/android/gallery3d/app/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    }
.end annotation


# instance fields
.field protected mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field protected mBackgroundColor:[F

.field private mContentPane:Lcom/android/gallery3d/ui/GLView;

.field protected mData:Landroid/os/Bundle;

.field private mDestroyed:Z

.field protected mFlags:I

.field private mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

.field mIsFinishing:Z

.field private mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

.field private mPlugged:Z

.field mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

.field protected mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mIsFinishing:Z

    .line 69
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 133
    new-instance v0, Lcom/android/gallery3d/app/ActivityState$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/ActivityState$1;-><init>(Lcom/android/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/ActivityState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/app/ActivityState;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/ActivityState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/ActivityState;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/ActivityState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/ActivityState;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;->setScreenFlags()V

    return-void
.end method

.method private setScreenFlags()V
    .locals 4

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 150
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 151
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 153
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 157
    :goto_0
    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 158
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 162
    :goto_1
    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_3

    .line 163
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 167
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 168
    return-void

    .line 155
    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 160
    :cond_2
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 165
    :cond_3
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2
.end method


# virtual methods
.method protected clearStateResult()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method protected getBackgroundColor()[F
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mBackgroundColor:[F

    return-object v0
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 118
    const v0, 0x7f09002f

    return v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getSupportMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method initialize(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 89
    iput-object p2, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    .line 90
    return-void
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    return v0
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 98
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 107
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "storedState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getBackgroundColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mBackgroundColor:[F

    .line 128
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    .line 263
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 187
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    sget-object v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    if-eq v0, v1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v0

    const-string v1, "transition-in"

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->prepareFadeOutTexture(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;)V

    .line 193
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 195
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v1

    const-string v2, "fade_texture"

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/glrenderer/RawTexture;

    .line 243
    .local v0, "fade":Lcom/android/gallery3d/glrenderer/RawTexture;
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v1

    const-string v2, "transition-in"

    sget-object v3, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 245
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    sget-object v2, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    if-eq v1, v2, :cond_0

    .line 246
    new-instance v1, Lcom/android/gallery3d/anim/StateTransitionAnimation;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-direct {v1, v2, v0}, Lcom/android/gallery3d/anim/StateTransitionAnimation;-><init>(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;Lcom/android/gallery3d/glrenderer/RawTexture;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    .line 247
    sget-object v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 249
    :cond_0
    return-void
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 113
    return-void
.end method

.method protected performHapticFeedback(I)V
    .locals 2
    .param p1, "feedbackConstant"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 184
    return-void
.end method

.method resume()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 199
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 200
    .local v1, "activity":Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 201
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 202
    iget v6, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    .line 203
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 207
    :goto_0
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v5

    .line 208
    .local v5, "stateCount":I
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v9

    if-le v5, v7, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6, v7}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 210
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 213
    .end local v5    # "stateCount":I
    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    .line 215
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;->setScreenFlags()V

    .line 217
    iget v6, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    move v4, v7

    .line 218
    .local v4, "lightsOut":Z
    :goto_2
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 220
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    .line 221
    .local v2, "entry":Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    if-eqz v2, :cond_1

    .line 222
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    .line 223
    iget v6, v2, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->requestCode:I

    iget v7, v2, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v8, v2, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/gallery3d/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    .line 226
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 228
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 229
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v6, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 236
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/app/TransitionStore;->clear()V

    .line 237
    return-void

    .line 205
    .end local v2    # "entry":Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    .end local v4    # "lightsOut":Z
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    .restart local v5    # "stateCount":I
    :cond_4
    move v6, v8

    .line 208
    goto :goto_1

    .end local v5    # "stateCount":I
    :cond_5
    move v4, v8

    .line 217
    goto :goto_2
.end method

.method protected setContentPane(Lcom/android/gallery3d/ui/GLView;)V
    .locals 2
    .param p1, "content"    # Lcom/android/gallery3d/ui/GLView;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->setIntroAnimation(Lcom/android/gallery3d/anim/StateTransitionAnimation;)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getBackgroundColor()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->setBackgroundColor([F)V

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 85
    return-void
.end method

.method protected setStateResult(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iput p1, v0, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iput-object p2, v0, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    goto :goto_0
.end method

.method protected transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/gallery3d/app/ActivityState;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/gallery3d/app/ActivityState;",
            ">;",
            "Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    const-class v0, Lcom/android/gallery3d/app/SinglePhotoPage;

    if-ne p1, v0, :cond_0

    const-class v0, Lcom/android/gallery3d/app/AlbumPage;

    if-ne p2, v0, :cond_0

    .line 173
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 179
    :goto_0
    return-void

    .line 174
    :cond_0
    const-class v0, Lcom/android/gallery3d/app/AlbumPage;

    if-ne p1, v0, :cond_1

    const-class v0, Lcom/android/gallery3d/app/SinglePhotoPage;

    if-ne p2, v0, :cond_1

    .line 175
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->PhotoIncoming:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    goto :goto_0

    .line 177
    :cond_1
    iput-object p3, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    goto :goto_0
.end method
