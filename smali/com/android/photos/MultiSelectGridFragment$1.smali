.class Lcom/android/photos/MultiSelectGridFragment$1;
.super Ljava/lang/Object;
.source "MultiSelectGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/MultiSelectGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/MultiSelectGridFragment;


# direct methods
.method constructor <init>(Lcom/android/photos/MultiSelectGridFragment;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/photos/MultiSelectGridFragment$1;->this$0:Lcom/android/photos/MultiSelectGridFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/photos/MultiSelectGridFragment$1;->this$0:Lcom/android/photos/MultiSelectGridFragment;

    iget-object v0, v0, Lcom/android/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/photos/MultiSelectGridFragment$1;->this$0:Lcom/android/photos/MultiSelectGridFragment;

    iget-object v1, v1, Lcom/android/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->focusableViewAvailable(Landroid/view/View;)V

    .line 44
    return-void
.end method
