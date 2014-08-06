.class Lcom/android/gallery3d/filtershow/editors/EditorDetails$1;
.super Ljava/lang/Object;
.source "EditorDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/EditorDetails;->openUtilityPanel(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/editors/EditorDetails;

.field final synthetic val$accessoryViewList:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorDetails;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails$1;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDetails;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails$1;->val$accessoryViewList:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails$1;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDetails;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails$1;->val$accessoryViewList:Landroid/widget/LinearLayout;

    # invokes: Lcom/android/gallery3d/filtershow/editors/EditorDetails;->showPopupMenu(Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->access$000(Lcom/android/gallery3d/filtershow/editors/EditorDetails;Landroid/widget/LinearLayout;)V

    .line 110
    return-void
.end method
