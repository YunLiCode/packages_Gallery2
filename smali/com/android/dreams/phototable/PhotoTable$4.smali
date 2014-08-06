.class Lcom/android/dreams/phototable/PhotoTable$4;
.super Ljava/lang/Object;
.source "PhotoTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/phototable/PhotoTable;->dropOnTable(Landroid/view/View;Landroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoTable;

.field final synthetic val$photo:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable$4;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iput-object p2, p0, Lcom/android/dreams/phototable/PhotoTable$4;->val$photo:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$4;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mAnimating:Ljava/util/List;
    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoTable;->access$1800(Lcom/android/dreams/phototable/PhotoTable;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$4;->val$photo:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 841
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$4;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mAnimating:Ljava/util/List;
    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoTable;->access$1800(Lcom/android/dreams/phototable/PhotoTable;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$4;->val$photo:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$4;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$4;->val$photo:Landroid/view/View;

    # invokes: Lcom/android/dreams/phototable/PhotoTable;->moveToBackground(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->access$1900(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)V

    .line 844
    :cond_0
    return-void
.end method
