.class Lcom/android/dreams/phototable/PhotoTable$5;
.super Ljava/lang/Object;
.source "PhotoTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/phototable/PhotoTable;->pickUp(Landroid/view/View;)V
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
    .line 914
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable$5;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iput-object p2, p0, Lcom/android/dreams/phototable/PhotoTable$5;->val$photo:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 917
    const-string v0, "endtimes: %f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoTable$5;->val$photo:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    # invokes: Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->access$100(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 918
    return-void
.end method
