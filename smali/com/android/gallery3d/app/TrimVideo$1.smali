.class Lcom/android/gallery3d/app/TrimVideo$1;
.super Ljava/lang/Object;
.source "TrimVideo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/TrimVideo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/TrimVideo;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/TrimVideo;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/gallery3d/app/TrimVideo$1;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo$1;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    # invokes: Lcom/android/gallery3d/app/TrimVideo;->trimVideo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/TrimVideo;->access$000(Lcom/android/gallery3d/app/TrimVideo;)V

    .line 90
    return-void
.end method
