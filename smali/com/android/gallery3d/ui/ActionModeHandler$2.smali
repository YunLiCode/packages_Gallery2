.class Lcom/android/gallery3d/ui/ActionModeHandler$2;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/ActionModeHandler;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionModeHandler;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler$2;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 13
    .param p1, "jc"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/16 v12, 0x12c

    const/16 v2, 0xa

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 410
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # invokes: Lcom/android/gallery3d/ui/ActionModeHandler;->getSelectedMediaObjects(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    invoke-static {v1, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$100(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v10

    .line 411
    .local v10, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaObject;>;"
    if-nez v10, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$400(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/ActionModeHandler$2$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler$2$1;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler$2;Lcom/android/gallery3d/util/ThreadPool$JobContext;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 480
    :cond_0
    :goto_0
    return-object v11

    .line 423
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # invokes: Lcom/android/gallery3d/ui/ActionModeHandler;->computeMenuOptions(Ljava/util/ArrayList;)I
    invoke-static {v1, v10}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$500(Lcom/android/gallery3d/ui/ActionModeHandler;Ljava/util/ArrayList;)I

    move-result v3

    .line 424
    .local v3, "operation":I
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 428
    .local v9, "numSelected":I
    if-ge v9, v2, :cond_3

    move v4, v7

    .line 430
    .local v4, "canSharePanoramas":Z
    :goto_1
    if-ge v9, v12, :cond_4

    .line 433
    .local v7, "canShare":Z
    :goto_2
    if-eqz v4, :cond_5

    new-instance v5, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;

    invoke-direct {v5, v10, p1}, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;-><init>(Ljava/util/ArrayList;Lcom/android/gallery3d/util/ThreadPool$JobContext;)V

    .line 438
    .local v5, "supportCallback":Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;
    :goto_3
    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # invokes: Lcom/android/gallery3d/ui/ActionModeHandler;->computePanoramaSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/content/Intent;
    invoke-static {v0, p1, v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$600(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/content/Intent;

    move-result-object v6

    .line 441
    .local v6, "share_panorama_intent":Landroid/content/Intent;
    :goto_4
    if-eqz v7, :cond_7

    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # invokes: Lcom/android/gallery3d/ui/ActionModeHandler;->computeSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/content/Intent;
    invoke-static {v0, p1, v12}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$700(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/content/Intent;

    move-result-object v8

    .line 445
    .local v8, "share_intent":Landroid/content/Intent;
    :goto_5
    if-eqz v4, :cond_2

    .line 446
    invoke-virtual {v5}, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->waitForPanoramaSupport()V

    .line 448
    :cond_2
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$400(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/os/Handler;

    move-result-object v12

    new-instance v0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler$2;Lcom/android/gallery3d/util/ThreadPool$JobContext;IZLcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;Landroid/content/Intent;ZLandroid/content/Intent;)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v4    # "canSharePanoramas":Z
    .end local v5    # "supportCallback":Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;
    .end local v6    # "share_panorama_intent":Landroid/content/Intent;
    .end local v7    # "canShare":Z
    .end local v8    # "share_intent":Landroid/content/Intent;
    :cond_3
    move v4, v0

    .line 428
    goto :goto_1

    .restart local v4    # "canSharePanoramas":Z
    :cond_4
    move v7, v0

    .line 430
    goto :goto_2

    .restart local v7    # "canShare":Z
    :cond_5
    move-object v5, v11

    .line 433
    goto :goto_3

    .line 438
    .restart local v5    # "supportCallback":Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;
    :cond_6
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    goto :goto_4

    .line 441
    .restart local v6    # "share_panorama_intent":Landroid/content/Intent;
    :cond_7
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    goto :goto_5
.end method
