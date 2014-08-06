.class Lcom/android/gallery3d/app/MuteVideo$1;
.super Ljava/lang/Object;
.source "MuteVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MuteVideo;->muteInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MuteVideo;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MuteVideo;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/gallery3d/app/MuteVideo$1;->this$0:Lcom/android/gallery3d/app/MuteVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MuteVideo$1;->this$0:Lcom/android/gallery3d/app/MuteVideo;

    # getter for: Lcom/android/gallery3d/app/MuteVideo;->mFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/gallery3d/app/MuteVideo;->access$000(Lcom/android/gallery3d/app/MuteVideo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MuteVideo$1;->this$0:Lcom/android/gallery3d/app/MuteVideo;

    # getter for: Lcom/android/gallery3d/app/MuteVideo;->mDstFileInfo:Lcom/android/gallery3d/util/SaveVideoFileInfo;
    invoke-static {v2}, Lcom/android/gallery3d/app/MuteVideo;->access$100(Lcom/android/gallery3d/app/MuteVideo;)Lcom/android/gallery3d/util/SaveVideoFileInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/VideoUtils;->startMute(Ljava/lang/String;Lcom/android/gallery3d/util/SaveVideoFileInfo;)V

    .line 63
    iget-object v1, p0, Lcom/android/gallery3d/app/MuteVideo$1;->this$0:Lcom/android/gallery3d/app/MuteVideo;

    # getter for: Lcom/android/gallery3d/app/MuteVideo;->mDstFileInfo:Lcom/android/gallery3d/util/SaveVideoFileInfo;
    invoke-static {v1}, Lcom/android/gallery3d/app/MuteVideo;->access$100(Lcom/android/gallery3d/app/MuteVideo;)Lcom/android/gallery3d/util/SaveVideoFileInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MuteVideo$1;->this$0:Lcom/android/gallery3d/app/MuteVideo;

    # getter for: Lcom/android/gallery3d/app/MuteVideo;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/gallery3d/app/MuteVideo;->access$200(Lcom/android/gallery3d/app/MuteVideo;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MuteVideo$1;->this$0:Lcom/android/gallery3d/app/MuteVideo;

    # getter for: Lcom/android/gallery3d/app/MuteVideo;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/gallery3d/app/MuteVideo;->access$300(Lcom/android/gallery3d/app/MuteVideo;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/util/SaveVideoFileUtils;->insertContent(Lcom/android/gallery3d/util/SaveVideoFileInfo;Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MuteVideo$1;->this$0:Lcom/android/gallery3d/app/MuteVideo;

    # getter for: Lcom/android/gallery3d/app/MuteVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MuteVideo;->access$500(Lcom/android/gallery3d/app/MuteVideo;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/app/MuteVideo$1$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MuteVideo$1$1;-><init>(Lcom/android/gallery3d/app/MuteVideo$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/gallery3d/app/MuteVideo$1;->this$0:Lcom/android/gallery3d/app/MuteVideo;

    # getter for: Lcom/android/gallery3d/app/MuteVideo;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/gallery3d/app/MuteVideo;->access$200(Lcom/android/gallery3d/app/MuteVideo;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MuteVideo$1;->this$0:Lcom/android/gallery3d/app/MuteVideo;

    # getter for: Lcom/android/gallery3d/app/MuteVideo;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/gallery3d/app/MuteVideo;->access$200(Lcom/android/gallery3d/app/MuteVideo;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b01d7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
