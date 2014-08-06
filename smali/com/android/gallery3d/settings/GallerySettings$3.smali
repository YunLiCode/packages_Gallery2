.class Lcom/android/gallery3d/settings/GallerySettings$3;
.super Ljava/lang/Object;
.source "GallerySettings.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/settings/GallerySettings;->onResume()V
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
.field final synthetic this$0:Lcom/android/gallery3d/settings/GallerySettings;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/settings/GallerySettings;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/gallery3d/settings/GallerySettings$3;->this$0:Lcom/android/gallery3d/settings/GallerySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/settings/GallerySettings$3;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4
    .param p1, "jc"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/gallery3d/settings/GallerySettings$3;->this$0:Lcom/android/gallery3d/settings/GallerySettings;

    # invokes: Lcom/android/gallery3d/settings/GallerySettings;->getGoogleAccounts(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;)[Landroid/accounts/Account;
    invoke-static {p1, v1}, Lcom/android/gallery3d/settings/GallerySettings;->access$200(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 240
    .local v0, "accounts":[Landroid/accounts/Account;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/gallery3d/settings/GallerySettings$3;->this$0:Lcom/android/gallery3d/settings/GallerySettings;

    # getter for: Lcom/android/gallery3d/settings/GallerySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/settings/GallerySettings;->access$300(Lcom/android/gallery3d/settings/GallerySettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/settings/GallerySettings$3;->this$0:Lcom/android/gallery3d/settings/GallerySettings;

    # getter for: Lcom/android/gallery3d/settings/GallerySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/settings/GallerySettings;->access$300(Lcom/android/gallery3d/settings/GallerySettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
