.class Lcom/android/gallery3d/filtershow/editors/EditorDrama$1;
.super Ljava/lang/Object;
.source "EditorDrama.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorDrama;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama$1;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDrama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama$1;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDrama;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->selectMenuItem(Landroid/view/MenuItem;)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method
