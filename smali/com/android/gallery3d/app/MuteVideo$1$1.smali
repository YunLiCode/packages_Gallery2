.class Lcom/android/gallery3d/app/MuteVideo$1$1;
.super Ljava/lang/Object;
.source "MuteVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MuteVideo$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/MuteVideo$1;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MuteVideo$1;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/gallery3d/app/MuteVideo$1$1;->this$1:Lcom/android/gallery3d/app/MuteVideo$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 73
    iget-object v1, p0, Lcom/android/gallery3d/app/MuteVideo$1$1;->this$1:Lcom/android/gallery3d/app/MuteVideo$1;

    iget-object v1, v1, Lcom/android/gallery3d/app/MuteVideo$1;->this$0:Lcom/android/gallery3d/app/MuteVideo;

    # getter for: Lcom/android/gallery3d/app/MuteVideo;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/gallery3d/app/MuteVideo;->access$200(Lcom/android/gallery3d/app/MuteVideo;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MuteVideo$1$1;->this$1:Lcom/android/gallery3d/app/MuteVideo$1;

    iget-object v2, v2, Lcom/android/gallery3d/app/MuteVideo$1;->this$0:Lcom/android/gallery3d/app/MuteVideo;

    # getter for: Lcom/android/gallery3d/app/MuteVideo;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/gallery3d/app/MuteVideo;->access$200(Lcom/android/gallery3d/app/MuteVideo;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b023c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/gallery3d/app/MuteVideo$1$1;->this$1:Lcom/android/gallery3d/app/MuteVideo$1;

    iget-object v5, v5, Lcom/android/gallery3d/app/MuteVideo$1;->this$0:Lcom/android/gallery3d/app/MuteVideo;

    # getter for: Lcom/android/gallery3d/app/MuteVideo;->mDstFileInfo:Lcom/android/gallery3d/util/SaveVideoFileInfo;
    invoke-static {v5}, Lcom/android/gallery3d/app/MuteVideo;->access$100(Lcom/android/gallery3d/app/MuteVideo;)Lcom/android/gallery3d/util/SaveVideoFileInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mFolderName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 79
    iget-object v1, p0, Lcom/android/gallery3d/app/MuteVideo$1$1;->this$1:Lcom/android/gallery3d/app/MuteVideo$1;

    iget-object v1, v1, Lcom/android/gallery3d/app/MuteVideo$1;->this$0:Lcom/android/gallery3d/app/MuteVideo;

    # getter for: Lcom/android/gallery3d/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/gallery3d/app/MuteVideo;->access$400(Lcom/android/gallery3d/app/MuteVideo;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/gallery3d/app/MuteVideo$1$1;->this$1:Lcom/android/gallery3d/app/MuteVideo$1;

    iget-object v1, v1, Lcom/android/gallery3d/app/MuteVideo$1;->this$0:Lcom/android/gallery3d/app/MuteVideo;

    # getter for: Lcom/android/gallery3d/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/gallery3d/app/MuteVideo;->access$400(Lcom/android/gallery3d/app/MuteVideo;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 81
    iget-object v1, p0, Lcom/android/gallery3d/app/MuteVideo$1$1;->this$1:Lcom/android/gallery3d/app/MuteVideo$1;

    iget-object v1, v1, Lcom/android/gallery3d/app/MuteVideo$1;->this$0:Lcom/android/gallery3d/app/MuteVideo;

    const/4 v2, 0x0

    # setter for: Lcom/android/gallery3d/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MuteVideo;->access$402(Lcom/android/gallery3d/app/MuteVideo;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery3d/app/MuteVideo$1$1;->this$1:Lcom/android/gallery3d/app/MuteVideo$1;

    iget-object v1, v1, Lcom/android/gallery3d/app/MuteVideo$1;->this$0:Lcom/android/gallery3d/app/MuteVideo;

    # getter for: Lcom/android/gallery3d/app/MuteVideo;->mDstFileInfo:Lcom/android/gallery3d/util/SaveVideoFileInfo;
    invoke-static {v1}, Lcom/android/gallery3d/app/MuteVideo;->access$100(Lcom/android/gallery3d/app/MuteVideo;)Lcom/android/gallery3d/util/SaveVideoFileInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v1, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/android/gallery3d/app/MuteVideo$1$1;->this$1:Lcom/android/gallery3d/app/MuteVideo$1;

    iget-object v1, v1, Lcom/android/gallery3d/app/MuteVideo$1;->this$0:Lcom/android/gallery3d/app/MuteVideo;

    # getter for: Lcom/android/gallery3d/app/MuteVideo;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/gallery3d/app/MuteVideo;->access$200(Lcom/android/gallery3d/app/MuteVideo;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 90
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
