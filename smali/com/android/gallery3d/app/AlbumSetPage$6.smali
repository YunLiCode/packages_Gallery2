.class Lcom/android/gallery3d/app/AlbumSetPage$6;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage;->showDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    # invokes: Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1500(Lcom/android/gallery3d/app/AlbumSetPage;)V

    .line 694
    return-void
.end method
