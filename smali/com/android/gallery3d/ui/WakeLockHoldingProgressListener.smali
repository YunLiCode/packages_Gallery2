.class public Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;
.super Ljava/lang/Object;
.source "WakeLockHoldingProgressListener.java"

# interfaces
.implements Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V
    .locals 3
    .param p1, "galleryActivity"    # Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 36
    iget-object v1, p0, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 38
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 39
    return-void
.end method


# virtual methods
.method public onConfirmDialogDismissed(Z)V
    .locals 0
    .param p1, "confirmed"    # Z

    .prologue
    .line 61
    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onProgressComplete(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 44
    return-void
.end method

.method public onProgressStart()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 49
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 57
    return-void
.end method
