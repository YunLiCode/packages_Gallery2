.class Lcom/android/gallery3d/app/MoviePlayer$7;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->showResumeDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;

.field final synthetic val$bookmark:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;I)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$7;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iput p2, p0, Lcom/android/gallery3d/app/MoviePlayer$7;->val$bookmark:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$7;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    # getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer$7;->val$bookmark:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$7;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    # invokes: Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$800(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 268
    return-void
.end method
