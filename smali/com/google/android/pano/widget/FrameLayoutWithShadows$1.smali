.class Lcom/google/android/pano/widget/FrameLayoutWithShadows$1;
.super Ljava/lang/Object;
.source "FrameLayoutWithShadows.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/widget/FrameLayoutWithShadows;->prune()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/FrameLayoutWithShadows;

.field final synthetic val$views:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/FrameLayoutWithShadows;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$1;->this$0:Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    iput-object p2, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$1;->val$views:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$1;->val$views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v2, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$1;->this$0:Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    iget-object v1, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$1;->val$views:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->removeView(Landroid/view/View;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method
