.class Lcom/android/gallery3d/app/AlbumSetPage$2;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .param p2, "x0"    # Lcom/android/gallery3d/ui/GLRoot;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 338
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 343
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 340
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/gallery3d/app/AlbumSetPage;->pickAlbum(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1100(Lcom/android/gallery3d/app/AlbumSetPage;I)V

    .line 345
    return-void

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
