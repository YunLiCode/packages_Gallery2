.class Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;
.super Ljava/lang/Object;
.source "AlbumSlotRenderer.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSlotRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataModelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSlotRenderer;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/AlbumSlotRenderer;Lcom/android/gallery3d/ui/AlbumSlotRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    .param p2, "x1"    # Lcom/android/gallery3d/ui/AlbumSlotRenderer$1;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    # getter for: Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->access$100(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 165
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    # getter for: Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->access$100(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 170
    return-void
.end method
