.class Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/app/AlbumSetPage;
    .param p2, "x1"    # Lcom/android/gallery3d/app/AlbumSetPage$1;

    .prologue
    .line 726
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 2
    .param p1, "loadingFailed"    # Z

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v1, 0x1

    # invokes: Lcom/android/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1700(Lcom/android/gallery3d/app/AlbumSetPage;I)V

    .line 735
    return-void
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v1, 0x1

    # invokes: Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1900(Lcom/android/gallery3d/app/AlbumSetPage;I)V

    .line 730
    return-void
.end method
