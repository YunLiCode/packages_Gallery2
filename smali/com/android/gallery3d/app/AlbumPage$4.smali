.class Lcom/android/gallery3d/app/AlbumPage$4;
.super Lcom/android/gallery3d/ui/SlotView$SimpleListener;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    # invokes: Lcom/android/gallery3d/app/AlbumPage;->onDown(I)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->access$1000(Lcom/android/gallery3d/app/AlbumPage;I)V

    .line 481
    return-void
.end method

.method public onLongTap(I)V
    .locals 1
    .param p1, "slotIndex"    # I

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onLongTap(I)V

    .line 496
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .param p1, "slotIndex"    # I

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    # invokes: Lcom/android/gallery3d/app/AlbumPage;->onSingleTapUp(I)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->access$1200(Lcom/android/gallery3d/app/AlbumPage;I)V

    .line 491
    return-void
.end method

.method public onUp(Z)V
    .locals 1
    .param p1, "followedByLongPress"    # Z

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    # invokes: Lcom/android/gallery3d/app/AlbumPage;->onUp(Z)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->access$1100(Lcom/android/gallery3d/app/AlbumPage;Z)V

    .line 486
    return-void
.end method
