.class public Lcom/android/gallery3d/ui/MenuExecutor;
.super Ljava/lang/Object;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;,
        Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;,
        Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mWaitOnStop:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .param p2, "selectionManager"    # Lcom/android/gallery3d/ui/SelectionManager;

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 94
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 95
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor$1;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$1;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/MenuExecutor;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/ui/SelectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/MenuExecutor;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/MenuExecutor;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/MenuExecutor;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mPaused:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/MenuExecutor;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/MenuExecutor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/MenuExecutor;
    .param p1, "x1"    # Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressStart(Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/MenuExecutor;
    .param p1, "x1"    # Lcom/android/gallery3d/data/DataManager;
    .param p2, "x2"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/gallery3d/data/Path;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/MenuExecutor;->execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/MenuExecutor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressUpdate(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/MenuExecutor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method private static createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleId"    # I
    .param p2, "progressMax"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 74
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 77
    if-le p2, v2, :cond_0

    .line 78
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 80
    :cond_0
    return-object v0
.end method

.method private execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z
    .locals 13
    .param p1, "manager"    # Lcom/android/gallery3d/data/DataManager;
    .param p2, "jc"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;
    .param p3, "cmd"    # I
    .param p4, "path"    # Lcom/android/gallery3d/data/Path;

    .prologue
    .line 368
    const/4 v5, 0x1

    .line 369
    .local v5, "result":Z
    const-string v8, "MenuExecutor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Execute cmd: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 372
    .local v6, "startTime":J
    sparse-switch p3, :sswitch_data_0

    .line 403
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 374
    :sswitch_0
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->delete(Lcom/android/gallery3d/data/Path;)V

    .line 405
    :cond_0
    :goto_0
    const-string v8, "MenuExecutor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "It takes "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms to execute cmd for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return v5

    .line 377
    :sswitch_1
    const/16 v8, 0x5a

    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v8}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 380
    :sswitch_2
    const/16 v8, -0x5a

    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v8}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 383
    :sswitch_3
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    .line 384
    .local v4, "obj":Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getCacheFlag()I

    move-result v1

    .line 385
    .local v1, "cacheFlag":I
    const/4 v8, 0x2

    if-ne v1, v8, :cond_1

    .line 386
    const/4 v1, 0x1

    .line 390
    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/gallery3d/data/MediaObject;->cache(I)V

    goto :goto_0

    .line 388
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    .line 394
    .end local v1    # "cacheFlag":I
    .end local v4    # "obj":Lcom/android/gallery3d/data/MediaObject;
    :sswitch_4
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .line 395
    .local v2, "item":Lcom/android/gallery3d/data/MediaItem;
    const/4 v8, 0x2

    new-array v3, v8, [D

    .line 396
    .local v3, "latlng":[D
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/MediaItem;->getLatLong([D)V

    .line 397
    const/4 v8, 0x0

    aget-wide v8, v3, v8

    const/4 v10, 0x1

    aget-wide v10, v3, v10

    invoke-static {v8, v9, v10, v11}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 398
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v9, 0x0

    aget-wide v9, v3, v9

    const/4 v11, 0x1

    aget-wide v11, v3, v11

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/gallery3d/util/GalleryUtils;->showOnMap(Landroid/content/Context;DD)V

    goto :goto_0

    .line 372
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a005b -> :sswitch_3
        0x7f0a024a -> :sswitch_0
        0x7f0a024c -> :sswitch_2
        0x7f0a024d -> :sswitch_1
        0x7f0a0251 -> :sswitch_4
    .end sparse-switch
.end method

.method private getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 219
    .local v0, "manager":Lcom/android/gallery3d/data/DataManager;
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 220
    .local v2, "path":Lcom/android/gallery3d/data/Path;
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "mimeType":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public static getMimeType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 357
    packed-switch p0, :pswitch_data_0

    .line 362
    :pswitch_0
    const-string v0, "*/*"

    :goto_0
    return-object v0

    .line 359
    :pswitch_1
    const-string v0, "image/*"

    goto :goto_0

    .line 361
    :pswitch_2
    const-string v0, "video/*"

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSingleSelectedPath()Lcom/android/gallery3d/data/Path;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 212
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 213
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 214
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/Path;

    return-object v1

    :cond_0
    move v1, v2

    .line 213
    goto :goto_0
.end method

.method private onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "listener"    # Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 225
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 226
    return-void
.end method

.method private onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "listener"    # Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    return-void
.end method

.method private onProgressStart(Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    return-void
.end method

.method private onProgressUpdate(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "listener"    # Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    return-void
.end method

.method private static setMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 1
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "itemId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 207
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 208
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 209
    :cond_0
    return-void
.end method

.method private stopTaskAndDismissDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_2

    .line 134
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 136
    :cond_1
    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 137
    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 139
    :cond_2
    return-void
.end method

.method public static updateMenuForPanorama(Landroid/view/Menu;ZZ)V
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "shareAsPanorama360"    # Z
    .param p2, "disablePanorama360Options"    # Z

    .prologue
    const/4 v1, 0x0

    .line 199
    const v0, 0x7f0a0249

    invoke-static {p0, v0, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 200
    if-eqz p2, :cond_0

    .line 201
    const v0, 0x7f0a024c

    invoke-static {p0, v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 202
    const v0, 0x7f0a024d

    invoke-static {p0, v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 204
    :cond_0
    return-void
.end method

.method public static updateMenuOperation(Landroid/view/Menu;I)V
    .locals 13
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "supported"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 169
    and-int/lit8 v12, p1, 0x1

    if-eqz v12, :cond_0

    move v2, v4

    .line 170
    .local v2, "supportDelete":Z
    :goto_0
    and-int/lit8 v12, p1, 0x2

    if-eqz v12, :cond_1

    move v6, v4

    .line 171
    .local v6, "supportRotate":Z
    :goto_1
    and-int/lit8 v12, p1, 0x8

    if-eqz v12, :cond_2

    move v1, v4

    .line 172
    .local v1, "supportCrop":Z
    :goto_2
    and-int/lit16 v12, p1, 0x800

    if-eqz v12, :cond_3

    move v10, v4

    .line 173
    .local v10, "supportTrim":Z
    :goto_3
    const/high16 v12, 0x10000

    and-int/2addr v12, p1

    if-eqz v12, :cond_4

    move v5, v4

    .line 174
    .local v5, "supportMute":Z
    :goto_4
    and-int/lit8 v12, p1, 0x4

    if-eqz v12, :cond_5

    move v8, v4

    .line 175
    .local v8, "supportShare":Z
    :goto_5
    and-int/lit8 v12, p1, 0x20

    if-eqz v12, :cond_6

    move v7, v4

    .line 176
    .local v7, "supportSetAs":Z
    :goto_6
    and-int/lit8 v12, p1, 0x10

    if-eqz v12, :cond_7

    move v9, v4

    .line 177
    .local v9, "supportShowOnMap":Z
    :goto_7
    and-int/lit16 v12, p1, 0x100

    if-eqz v12, :cond_8

    move v0, v4

    .line 178
    .local v0, "supportCache":Z
    :goto_8
    and-int/lit16 v12, p1, 0x200

    if-eqz v12, :cond_9

    move v3, v4

    .line 179
    .local v3, "supportEdit":Z
    :goto_9
    and-int/lit16 v12, p1, 0x400

    if-eqz v12, :cond_a

    .line 181
    .local v4, "supportInfo":Z
    :goto_a
    const v12, 0x7f0a024a

    invoke-static {p0, v12, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 182
    const v12, 0x7f0a024c

    invoke-static {p0, v12, v6}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 183
    const v12, 0x7f0a024d

    invoke-static {p0, v12, v6}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 184
    const v12, 0x7f0a024e

    invoke-static {p0, v12, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 185
    const v12, 0x7f0a0255

    invoke-static {p0, v12, v10}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 186
    const v12, 0x7f0a0256

    invoke-static {p0, v12, v5}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 188
    const v12, 0x7f0a0249

    invoke-static {p0, v12, v11}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 189
    const v11, 0x7f0a0247

    invoke-static {p0, v11, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 190
    const v11, 0x7f0a024f

    invoke-static {p0, v11, v7}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 191
    const v11, 0x7f0a0251

    invoke-static {p0, v11, v9}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 192
    const v11, 0x7f0a024b

    invoke-static {p0, v11, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 194
    const v11, 0x7f0a0250

    invoke-static {p0, v11, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 195
    return-void

    .end local v0    # "supportCache":Z
    .end local v1    # "supportCrop":Z
    .end local v2    # "supportDelete":Z
    .end local v3    # "supportEdit":Z
    .end local v4    # "supportInfo":Z
    .end local v5    # "supportMute":Z
    .end local v6    # "supportRotate":Z
    .end local v7    # "supportSetAs":Z
    .end local v8    # "supportShare":Z
    .end local v9    # "supportShowOnMap":Z
    .end local v10    # "supportTrim":Z
    :cond_0
    move v2, v11

    .line 169
    goto :goto_0

    .restart local v2    # "supportDelete":Z
    :cond_1
    move v6, v11

    .line 170
    goto :goto_1

    .restart local v6    # "supportRotate":Z
    :cond_2
    move v1, v11

    .line 171
    goto :goto_2

    .restart local v1    # "supportCrop":Z
    :cond_3
    move v10, v11

    .line 172
    goto :goto_3

    .restart local v10    # "supportTrim":Z
    :cond_4
    move v5, v11

    .line 173
    goto :goto_4

    .restart local v5    # "supportMute":Z
    :cond_5
    move v8, v11

    .line 174
    goto :goto_5

    .restart local v8    # "supportShare":Z
    :cond_6
    move v7, v11

    .line 175
    goto :goto_6

    .restart local v7    # "supportSetAs":Z
    :cond_7
    move v9, v11

    .line 176
    goto :goto_7

    .restart local v9    # "supportShowOnMap":Z
    :cond_8
    move v0, v11

    .line 177
    goto :goto_8

    .restart local v0    # "supportCache":Z
    :cond_9
    move v3, v11

    .line 178
    goto :goto_9

    .restart local v3    # "supportEdit":Z
    :cond_a
    move v4, v11

    .line 179
    goto :goto_a
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 153
    return-void
.end method

.method public onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 8
    .param p1, "action"    # I
    .param p2, "listener"    # Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    .param p3, "waitOnStop"    # Z
    .param p4, "showDialog"    # Z

    .prologue
    const/4 v1, 0x1

    .line 231
    sparse-switch p1, :sswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 233
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    goto :goto_0

    .line 240
    :sswitch_1
    const-string v0, "com.android.camera.action.CROP"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 241
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 245
    .end local v7    # "intent":Landroid/content/Intent;
    :sswitch_2
    const-string v0, "android.intent.action.EDIT"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    .line 247
    .restart local v7    # "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-static {v7, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 251
    .end local v7    # "intent":Landroid/content/Intent;
    :sswitch_3
    const-string v0, "android.intent.action.ATTACH_DATA"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    .line 253
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v0, "mimeType"

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 255
    .local v6, "activity":Landroid/app/Activity;
    const v0, 0x7f0b01d6

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 260
    .end local v6    # "activity":Landroid/app/Activity;
    .end local v7    # "intent":Landroid/content/Intent;
    :sswitch_4
    const v2, 0x7f0b01bd

    .local v2, "title":I
    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 274
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    goto :goto_0

    .line 263
    .end local v2    # "title":I
    :sswitch_5
    const v2, 0x7f0b01cd

    .line 264
    .restart local v2    # "title":I
    goto :goto_1

    .line 266
    .end local v2    # "title":I
    :sswitch_6
    const v2, 0x7f0b01cc

    .line 267
    .restart local v2    # "title":I
    goto :goto_1

    .line 269
    .end local v2    # "title":I
    :sswitch_7
    const v2, 0x7f0b01cb

    .line 270
    .restart local v2    # "title":I
    goto :goto_1

    .line 231
    :sswitch_data_0
    .sparse-switch
        0x7f0a005c -> :sswitch_0
        0x7f0a024a -> :sswitch_4
        0x7f0a024b -> :sswitch_2
        0x7f0a024c -> :sswitch_6
        0x7f0a024d -> :sswitch_5
        0x7f0a024e -> :sswitch_1
        0x7f0a024f -> :sswitch_3
        0x7f0a0251 -> :sswitch_7
    .end sparse-switch
.end method

.method public onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "confirmMsg"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 310
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 312
    .local v0, "action":I
    if-eqz p2, :cond_1

    .line 313
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogShown()V

    .line 314
    :cond_0
    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    invoke-direct {v1, p0, v0, p3}, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 315
    .local v1, "cdl":Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0042

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b01bf

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 324
    .end local v1    # "cdl":Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mPaused:Z

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 149
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mPaused:Z

    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 144
    :cond_0
    return-void
.end method

.method public startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 6
    .param p1, "action"    # I
    .param p2, "title"    # I
    .param p3, "listener"    # Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 327
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 328
    return-void
.end method

.method public startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 6
    .param p1, "action"    # I
    .param p2, "title"    # I
    .param p3, "listener"    # Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    .param p4, "waitOnStop"    # Z
    .param p5, "showDialog"    # Z

    .prologue
    const/4 v5, 0x0

    .line 332
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 333
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 335
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 336
    .local v0, "activity":Landroid/app/Activity;
    if-eqz p5, :cond_0

    .line 337
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, p2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 338
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 342
    :goto_0
    new-instance v2, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;

    invoke-direct {v2, p0, p1, v1, p3}, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 343
    .local v2, "operation":Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getBatchServiceThreadPoolIfAvailable()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 344
    iput-boolean p4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    .line 345
    return-void

    .line 340
    .end local v2    # "operation":Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;
    :cond_0
    iput-object v5, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method public startSingleItemAction(ILcom/android/gallery3d/data/Path;)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "targetPath"    # Lcom/android/gallery3d/data/Path;

    .prologue
    const/4 v3, 0x0

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 349
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iput-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 351
    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;

    invoke-direct {v1, p0, p1, v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 352
    .local v1, "operation":Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getBatchServiceThreadPoolIfAvailable()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 353
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    .line 354
    return-void
.end method
