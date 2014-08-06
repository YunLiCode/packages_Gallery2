.class Lcom/android/gallery3d/ui/ActionModeHandler$2$2;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ActionModeHandler$2;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

.field final synthetic val$canShare:Z

.field final synthetic val$canSharePanoramas:Z

.field final synthetic val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

.field final synthetic val$operation:I

.field final synthetic val$share_intent:Landroid/content/Intent;

.field final synthetic val$share_panorama_intent:Landroid/content/Intent;

.field final synthetic val$supportCallback:Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionModeHandler$2;Lcom/android/gallery3d/util/ThreadPool$JobContext;IZLcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;Landroid/content/Intent;ZLandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iput-object p2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    iput p3, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$operation:I

    iput-boolean p4, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$canSharePanoramas:Z

    iput-object p5, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$supportCallback:Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;

    iput-object p6, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$share_panorama_intent:Landroid/content/Intent;

    iput-boolean p7, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$canShare:Z

    iput-object p8, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$share_intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 454
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    const/4 v3, 0x0

    # setter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v0, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$202(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 455
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$300(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/Menu;

    move-result-object v0

    iget v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$operation:I

    invoke-static {v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuOperation(Landroid/view/Menu;I)V

    .line 457
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$300(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/Menu;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$canSharePanoramas:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$supportCallback:Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mAllPanorama360:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$canSharePanoramas:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$supportCallback:Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;

    iget-boolean v3, v3, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mHasPanorama360:Z

    if-eqz v3, :cond_4

    move v3, v1

    :goto_2
    invoke-static {v4, v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuForPanorama(Landroid/view/Menu;ZZ)V

    .line 460
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$800(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$800(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 462
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$canSharePanoramas:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$supportCallback:Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mAllPanorama360:Z

    if-eqz v0, :cond_5

    .line 463
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$900(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 464
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$900(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1000(Lcom/android/gallery3d/ui/ActionModeHandler;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 472
    :goto_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1100(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/widget/ShareActionProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$share_panorama_intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$900(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$900(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$canShare:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 476
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1200(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/widget/ShareActionProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->val$share_intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 457
    goto/16 :goto_1

    :cond_4
    move v3, v2

    goto/16 :goto_2

    .line 467
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$800(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 468
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$900(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 469
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$900(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$2;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1000(Lcom/android/gallery3d/ui/ActionModeHandler;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_3
.end method
