.class Lcom/android/gallery3d/filtershow/category/MainPanel$2;
.super Ljava/lang/Object;
.source "MainPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/category/MainPanel;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/category/MainPanel;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/category/MainPanel;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/MainPanel$2;->this$0:Lcom/android/gallery3d/filtershow/category/MainPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/MainPanel$2;->this$0:Lcom/android/gallery3d/filtershow/category/MainPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/MainPanel;->showPanel(I)V

    .line 108
    return-void
.end method
