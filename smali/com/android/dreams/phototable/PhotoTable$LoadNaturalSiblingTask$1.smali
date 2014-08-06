.class Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask$1;
.super Ljava/lang/Object;
.source "PhotoTable.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->onPostExecute(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;


# direct methods
.method constructor <init>(Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask$1;->this$1:Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask$1;->this$1:Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask$1;->this$1:Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;

    # getter for: Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->mSlot:I
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->access$1000(Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;)I

    move-result v1

    # invokes: Lcom/android/dreams/phototable/PhotoTable;->placeOnDeck(Landroid/view/View;I)V
    invoke-static {v0, p1, v1}, Lcom/android/dreams/phototable/PhotoTable;->access$1100(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;I)V

    .line 528
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 529
    return-void
.end method
