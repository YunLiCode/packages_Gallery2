.class Lcom/android/gallery3d/app/AlbumPage$3;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .param p2, "x0"    # Lcom/android/gallery3d/ui/GLRoot;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 386
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 392
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 388
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$3;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/gallery3d/app/AlbumPage;->pickPhoto(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumPage;->access$900(Lcom/android/gallery3d/app/AlbumPage;I)V

    .line 394
    return-void

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
