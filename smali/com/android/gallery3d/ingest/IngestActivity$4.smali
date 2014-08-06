.class Lcom/android/gallery3d/ingest/IngestActivity$4;
.super Ljava/lang/Object;
.source "IngestActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ingest/IngestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ingest/IngestActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ingest/IngestActivity;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/gallery3d/ingest/IngestActivity$4;->this$0:Lcom/android/gallery3d/ingest/IngestActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 526
    iget-object v1, p0, Lcom/android/gallery3d/ingest/IngestActivity$4;->this$0:Lcom/android/gallery3d/ingest/IngestActivity;

    check-cast p2, Lcom/android/gallery3d/ingest/IngestService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/gallery3d/ingest/IngestService$LocalBinder;->getService()Lcom/android/gallery3d/ingest/IngestService;

    move-result-object v2

    # setter for: Lcom/android/gallery3d/ingest/IngestActivity;->mHelperService:Lcom/android/gallery3d/ingest/IngestService;
    invoke-static {v1, v2}, Lcom/android/gallery3d/ingest/IngestActivity;->access$1602(Lcom/android/gallery3d/ingest/IngestActivity;Lcom/android/gallery3d/ingest/IngestService;)Lcom/android/gallery3d/ingest/IngestService;

    .line 527
    iget-object v1, p0, Lcom/android/gallery3d/ingest/IngestActivity$4;->this$0:Lcom/android/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/android/gallery3d/ingest/IngestActivity;->mHelperService:Lcom/android/gallery3d/ingest/IngestService;
    invoke-static {v1}, Lcom/android/gallery3d/ingest/IngestActivity;->access$1600(Lcom/android/gallery3d/ingest/IngestActivity;)Lcom/android/gallery3d/ingest/IngestService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ingest/IngestActivity$4;->this$0:Lcom/android/gallery3d/ingest/IngestActivity;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ingest/IngestService;->setClientActivity(Lcom/android/gallery3d/ingest/IngestActivity;)V

    .line 528
    iget-object v1, p0, Lcom/android/gallery3d/ingest/IngestActivity$4;->this$0:Lcom/android/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/android/gallery3d/ingest/IngestActivity;->mHelperService:Lcom/android/gallery3d/ingest/IngestService;
    invoke-static {v1}, Lcom/android/gallery3d/ingest/IngestActivity;->access$1600(Lcom/android/gallery3d/ingest/IngestActivity;)Lcom/android/gallery3d/ingest/IngestService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ingest/IngestService;->getIndex()Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    move-result-object v0

    .line 529
    .local v0, "index":Lcom/android/gallery3d/ingest/MtpDeviceIndex;
    iget-object v1, p0, Lcom/android/gallery3d/ingest/IngestActivity$4;->this$0:Lcom/android/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/android/gallery3d/ingest/IngestActivity;->mAdapter:Lcom/android/gallery3d/ingest/adapter/MtpAdapter;
    invoke-static {v1}, Lcom/android/gallery3d/ingest/IngestActivity;->access$200(Lcom/android/gallery3d/ingest/IngestActivity;)Lcom/android/gallery3d/ingest/adapter/MtpAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->setMtpDeviceIndex(Lcom/android/gallery3d/ingest/MtpDeviceIndex;)V

    .line 530
    iget-object v1, p0, Lcom/android/gallery3d/ingest/IngestActivity$4;->this$0:Lcom/android/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/android/gallery3d/ingest/IngestActivity;->mPagerAdapter:Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;
    invoke-static {v1}, Lcom/android/gallery3d/ingest/IngestActivity;->access$1000(Lcom/android/gallery3d/ingest/IngestActivity;)Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ingest/IngestActivity$4;->this$0:Lcom/android/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/android/gallery3d/ingest/IngestActivity;->mPagerAdapter:Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;
    invoke-static {v1}, Lcom/android/gallery3d/ingest/IngestActivity;->access$1000(Lcom/android/gallery3d/ingest/IngestActivity;)Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->setMtpDeviceIndex(Lcom/android/gallery3d/ingest/MtpDeviceIndex;)V

    .line 531
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestActivity$4;->this$0:Lcom/android/gallery3d/ingest/IngestActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/gallery3d/ingest/IngestActivity;->mHelperService:Lcom/android/gallery3d/ingest/IngestService;
    invoke-static {v0, v1}, Lcom/android/gallery3d/ingest/IngestActivity;->access$1602(Lcom/android/gallery3d/ingest/IngestActivity;Lcom/android/gallery3d/ingest/IngestService;)Lcom/android/gallery3d/ingest/IngestService;

    .line 535
    return-void
.end method
