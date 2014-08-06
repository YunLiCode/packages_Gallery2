.class public Lcom/android/gallery3d/ui/ActionModeHandler;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/android/gallery3d/ui/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;,
        Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mDeleteProgressListener:Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;

.field private mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMenu:Landroid/view/Menu;

.field private final mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field private mMenuTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSelectionMenu:Lcom/android/gallery3d/ui/SelectionMenu;

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mShareMenuItem:Landroid/view/MenuItem;

.field private mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

.field private mSharePanoramaMenuItem:Landroid/view/MenuItem;

.field private final mShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .param p2, "selectionManager"    # Lcom/android/gallery3d/ui/SelectionManager;

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Lcom/android/gallery3d/ui/ActionModeHandler$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/ActionModeHandler$1;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 127
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 128
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 129
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct {v0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/ActionModeHandler;)Lcom/android/gallery3d/ui/SelectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/ActionModeHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/ActionModeHandler;
    .param p1, "x1"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->getSelectedMediaObjects(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/ActionModeHandler;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/ActionModeHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/widget/ShareActionProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/ActionModeHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/widget/ShareActionProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/ActionModeHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/ActionModeHandler;
    .param p1, "x1"    # Lcom/android/gallery3d/util/Future;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/Menu;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/ActionModeHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/ActionModeHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/ActionModeHandler;Ljava/util/ArrayList;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/ActionModeHandler;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->computeMenuOptions(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/ActionModeHandler;
    .param p1, "x1"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/ActionModeHandler;->computePanoramaSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/ActionModeHandler;
    .param p1, "x1"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/ActionModeHandler;->computeSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/ActionModeHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/ActionModeHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method private computeMenuOptions(Ljava/util/ArrayList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaObject;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaObject;>;"
    const/4 v3, -0x1

    .line 289
    .local v3, "operation":I
    const/4 v5, 0x0

    .line 290
    .local v5, "type":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaObject;

    .line 291
    .local v1, "mediaObject":Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v4

    .line 292
    .local v4, "support":I
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v6

    or-int/2addr v5, v6

    .line 293
    and-int/2addr v3, v4

    .line 294
    goto :goto_0

    .line 296
    .end local v1    # "mediaObject":Lcom/android/gallery3d/data/MediaObject;
    .end local v4    # "support":I
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 304
    and-int/lit16 v3, v3, 0x107

    .line 307
    :cond_1
    :goto_1
    return v3

    .line 298
    :pswitch_0
    invoke-static {v5}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "mimeType":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6, v2}, Lcom/android/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 300
    and-int/lit16 v3, v3, -0x201

    goto :goto_1

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private computePanoramaSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/content/Intent;
    .locals 10
    .param p1, "jc"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;
    .param p2, "maxItems"    # I

    .prologue
    const/4 v9, 0x1

    .line 321
    iget-object v7, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7, v9, p2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(ZI)Ljava/util/ArrayList;

    move-result-object v0

    .line 322
    .local v0, "expandedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 323
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 347
    :cond_1
    :goto_0
    return-object v2

    .line 325
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v6, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v7, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    .line 327
    .local v3, "manager":Lcom/android/gallery3d/data/DataManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Path;

    .line 329
    .local v4, "path":Lcom/android/gallery3d/data/Path;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    .line 330
    :cond_3
    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 333
    .end local v4    # "path":Lcom/android/gallery3d/data/Path;
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 334
    .local v5, "size":I
    if-lez v5, :cond_1

    .line 335
    if-le v5, v9, :cond_5

    .line 336
    const-string v7, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v7, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 344
    :goto_2
    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 340
    :cond_5
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v7, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v8, "android.intent.extra.STREAM"

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private computeSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/content/Intent;
    .locals 13
    .param p1, "jc"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;
    .param p2, "maxItems"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 351
    iget-object v11, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v11, v12, p2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(ZI)Ljava/util/ArrayList;

    move-result-object v0

    .line 352
    .local v0, "expandedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 353
    :cond_0
    invoke-direct {p0, v10}, Lcom/android/gallery3d/ui/ActionModeHandler;->setNfcBeamPushUris([Landroid/net/Uri;)V

    .line 354
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 386
    :goto_0
    return-object v2

    .line 356
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v9, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v11, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    .line 358
    .local v3, "manager":Lcom/android/gallery3d/data/DataManager;
    const/4 v8, 0x0

    .line 359
    .local v8, "type":I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 360
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/Path;

    .line 361
    .local v5, "path":Lcom/android/gallery3d/data/Path;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v2, v10

    goto :goto_0

    .line 362
    :cond_3
    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/DataManager;->getSupportedOperations(Lcom/android/gallery3d/data/Path;)I

    move-result v7

    .line 363
    .local v7, "support":I
    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v11

    or-int/2addr v8, v11

    .line 365
    and-int/lit8 v11, v7, 0x4

    if-eqz v11, :cond_2

    .line 366
    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 370
    .end local v5    # "path":Lcom/android/gallery3d/data/Path;
    .end local v7    # "support":I
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 371
    .local v6, "size":I
    if-lez v6, :cond_6

    .line 372
    invoke-static {v8}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "mimeType":Ljava/lang/String;
    if-le v6, v12, :cond_5

    .line 374
    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 380
    :goto_2
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 381
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/net/Uri;

    invoke-direct {p0, v10}, Lcom/android/gallery3d/ui/ActionModeHandler;->setNfcBeamPushUris([Landroid/net/Uri;)V

    goto :goto_0

    .line 377
    :cond_5
    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v11, "android.intent.extra.STREAM"

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Parcelable;

    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 383
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, v10}, Lcom/android/gallery3d/ui/ActionModeHandler;->setNfcBeamPushUris([Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method private getSelectedMediaObjects(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "jc"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 266
    iget-object v6, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 267
    .local v4, "unexpandedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v5

    .line 281
    :cond_0
    :goto_0
    return-object v3

    .line 272
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v3, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaObject;>;"
    iget-object v6, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 274
    .local v1, "manager":Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/Path;

    .line 275
    .local v2, "path":Lcom/android/gallery3d/data/Path;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v3, v5

    .line 276
    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setNfcBeamPushUris([Landroid/net/Uri;)V
    .locals 3
    .param p1, "uris"    # [Landroid/net/Uri;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    .line 314
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, p1, v1}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 316
    :cond_0
    return-void
.end method

.method private updateSelectionMenu()V
    .locals 5

    .prologue
    .line 212
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 213
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110002

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "format":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionMenu:Lcom/android/gallery3d/ui/SelectionMenu;

    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SelectionMenu;->updateSelectAllMode(Z)V

    .line 220
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->destroy()V

    .line 495
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 147
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 161
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v4

    .line 162
    .local v4, "root":Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 169
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    if-eqz v5, :cond_0

    .line 170
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    invoke-interface {v5, p2}, Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;->onActionItemClicked(Landroid/view/MenuItem;)Z

    move-result v3

    .line 171
    .local v3, "result":Z
    if-eqz v3, :cond_0

    .line 172
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 192
    .end local v3    # "result":Z
    :goto_0
    return v3

    .line 176
    :cond_0
    const/4 v2, 0x0

    .line 177
    .local v2, "listener":Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    const/4 v1, 0x0

    .line 178
    .local v1, "confirmMsg":Ljava/lang/String;
    :try_start_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 179
    .local v0, "action":I
    const v5, 0x7f0a024a

    if-ne v0, v5, :cond_2

    .line 180
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f110001

    iget-object v7, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mDeleteProgressListener:Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;

    if-nez v5, :cond_1

    .line 183
    new-instance v5, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;

    iget-object v6, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v7, "Gallery Delete Progress Listener"

    invoke-direct {v5, v6, v7}, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mDeleteProgressListener:Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mDeleteProgressListener:Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;

    .line 188
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v5, p2, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 192
    const/4 v3, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "action":I
    .end local v1    # "confirmMsg":Ljava/lang/String;
    .end local v2    # "listener":Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v5
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f12001b

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 240
    iput-object p2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    .line 241
    const v0, 0x7f0a0249

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaMenuItem:Landroid/view/MenuItem;

    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v0

    check-cast v0, Landroid/widget/ShareActionProvider;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    .line 245
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 247
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    const-string v1, "panorama_share_history.xml"

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 249
    :cond_0
    const v0, 0x7f0a0247

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;

    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v0

    check-cast v0, Landroid/widget/ShareActionProvider;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 255
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    const-string v1, "share_history.xml"

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 257
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 263
    return-void
.end method

.method public onPopupItemClick(I)Z
    .locals 6
    .param p1, "itemId"    # I

    .prologue
    const/4 v5, 0x1

    .line 197
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 198
    .local v0, "root":Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 200
    const v1, 0x7f0a005c

    if-ne p1, v1, :cond_0

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 202
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_0
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return v5

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->pause()V

    .line 491
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->resume()V

    .line 500
    return-void
.end method

.method public setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    .line 155
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionMenu:Lcom/android/gallery3d/ui/SelectionMenu;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public startActionMode()V
    .locals 5

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 136
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionMode:Landroid/view/ActionMode;

    .line 137
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, "customView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 140
    new-instance v3, Lcom/android/gallery3d/ui/SelectionMenu;

    const v2, 0x7f0a006c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-direct {v3, v0, v2, p0}, Lcom/android/gallery3d/ui/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/gallery3d/ui/PopupList$OnPopupItemClickListener;)V

    iput-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionMenu:Lcom/android/gallery3d/ui/SelectionMenu;

    .line 142
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSelectionMenu()V

    .line 143
    return-void
.end method

.method public updateSupportedOperation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSelectionMenu()V

    .line 401
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/ActionModeHandler$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/ActionModeHandler$2;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    .line 483
    return-void
.end method

.method public updateSupportedOperation(Lcom/android/gallery3d/data/Path;Z)V
    .locals 0
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;
    .param p2, "selected"    # Z

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 392
    return-void
.end method
