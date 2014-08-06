.class Lcom/android/gallery3d/filtershow/editors/EditorDrama$2;
.super Ljava/lang/Object;
.source "EditorDrama.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/EditorDrama;->openUtilityPanel(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/editors/EditorDrama;

.field final synthetic val$popupMenu:Landroid/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorDrama;Landroid/widget/PopupMenu;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDrama;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama$2;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama$2;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 93
    return-void
.end method
