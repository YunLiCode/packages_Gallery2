.class Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect$2;
.super Ljava/lang/Object;
.source "EditorAutoCorrect.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;->showPopupMenu(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect$2;->val$button:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 100
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v3

    instance-of v3, v3, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    .line 102
    .local v0, "autoCorrect":Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->setParameterMode(I)V

    .line 103
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect$2;->val$button:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getMinimum()I

    move-result v1

    .line 105
    .local v1, "min":I
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getCurrentParameter()I

    move-result v2

    .line 106
    .local v2, "parameter":I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;

    iget-object v3, v3, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v4, v2, v1

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 107
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;

    iget-object v3, v3, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 108
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;->commitLocalRepresentation()V

    .line 110
    .end local v0    # "autoCorrect":Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;
    .end local v1    # "min":I
    .end local v2    # "parameter":I
    :cond_0
    const/4 v3, 0x1

    return v3
.end method
