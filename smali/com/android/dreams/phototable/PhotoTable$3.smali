.class Lcom/android/dreams/phototable/PhotoTable$3;
.super Ljava/lang/Object;
.source "PhotoTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/phototable/PhotoTable;->fling(Landroid/view/View;FFIZ)V
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
    .line 775
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable$3;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iput-object p2, p0, Lcom/android/dreams/phototable/PhotoTable$3;->val$photo:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$3;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$3;->val$photo:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/dreams/phototable/PhotoTable;->fadeAway(Landroid/view/View;Z)V

    .line 779
    return-void
.end method
