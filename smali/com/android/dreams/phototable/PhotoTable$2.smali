.class Lcom/android/dreams/phototable/PhotoTable$2;
.super Ljava/lang/Object;
.source "PhotoTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/phototable/PhotoTable;->fadeAway(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoTable;

.field final synthetic val$photo:Landroid/view/View;

.field final synthetic val$replace:Z


# direct methods
.method constructor <init>(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable$2;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iput-object p2, p0, Lcom/android/dreams/phototable/PhotoTable$2;->val$photo:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/dreams/phototable/PhotoTable$2;->val$replace:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$2;->val$photo:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$2;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v1}, Lcom/android/dreams/phototable/PhotoTable;->getFocus()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$2;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v0}, Lcom/android/dreams/phototable/PhotoTable;->clearFocus()V

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$2;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mStageLeft:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoTable;->access$2000(Lcom/android/dreams/phototable/PhotoTable;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$2;->val$photo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 649
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$2;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$2;->val$photo:Landroid/view/View;

    # invokes: Lcom/android/dreams/phototable/PhotoTable;->recycle(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->access$1200(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)V

    .line 650
    iget-boolean v0, p0, Lcom/android/dreams/phototable/PhotoTable$2;->val$replace:Z

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$2;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$2;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mNowDropDelay:I
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoTable;->access$2100(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->scheduleNext(I)V

    .line 653
    :cond_1
    return-void
.end method
