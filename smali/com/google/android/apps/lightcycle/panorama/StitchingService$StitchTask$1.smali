.class Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask$1;
.super Ljava/lang/Object;
.source "StitchingService.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/panorama/LightCycleView$ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/StitchingService;->stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->access$200(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->outputFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->access$000(Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->imageUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->access$100(Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->onStitchingProgress(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 367
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/StitchingService;->inProgressNotification:Landroid/app/Notification;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->access$300(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/StitchingService;->inProgressNotification:Landroid/app/Notification;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->access$300(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x102000d

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 370
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/StitchingService;->notificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->access$400(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    iget-object v2, v2, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/StitchingService;->inProgressNotification:Landroid/app/Notification;
    invoke-static {v2}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->access$300(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask$1;->this$1:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    # invokes: Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->waitIfSuspended()V
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->access$500(Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;)V

    .line 375
    return-void
.end method
