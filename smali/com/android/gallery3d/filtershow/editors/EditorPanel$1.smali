.class Lcom/android/gallery3d/filtershow/editors/EditorPanel$1;
.super Ljava/lang/Object;
.source "EditorPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/EditorPanel;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/editors/EditorPanel;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorPanel;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel$1;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel$1;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorPanel;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->cancelCurrentFilter()V

    .line 87
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorPanel$1;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorPanel;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 88
    .local v0, "activity":Lcom/android/gallery3d/filtershow/FilterShowActivity;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->backToMain()V

    .line 89
    return-void
.end method
