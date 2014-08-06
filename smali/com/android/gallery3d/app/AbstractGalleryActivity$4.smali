.class Lcom/android/gallery3d/app/AbstractGalleryActivity$4;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$4;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$4;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    check-cast p2, Lcom/android/gallery3d/app/BatchService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/gallery3d/app/BatchService$LocalBinder;->getService()Lcom/android/gallery3d/app/BatchService;

    move-result-object v1

    # setter for: Lcom/android/gallery3d/app/AbstractGalleryActivity;->mBatchService:Lcom/android/gallery3d/app/BatchService;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$002(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/app/BatchService;)Lcom/android/gallery3d/app/BatchService;

    .line 316
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$4;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/gallery3d/app/AbstractGalleryActivity;->mBatchService:Lcom/android/gallery3d/app/BatchService;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$002(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/app/BatchService;)Lcom/android/gallery3d/app/BatchService;

    .line 320
    return-void
.end method
