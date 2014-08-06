.class Lcom/android/gallery3d/filtershow/editors/EditorDetails$2;
.super Ljava/lang/Object;
.source "EditorDetails.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/EditorDetails;->showPopupMenu(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/editors/EditorDetails;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorDetails;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDetails;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails$2;->val$button:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 124
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDetails;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDetails;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v4

    instance-of v4, v4, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    if-eqz v4, :cond_0

    .line 125
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDetails;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    .line 126
    .local v0, "details":Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setParameterMode(I)V

    .line 127
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails$2;->val$button:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getCurrentParameter()I

    move-result v3

    .line 129
    .local v3, "parameter":I
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getMaximum()I

    move-result v1

    .line 130
    .local v1, "max":I
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getMinimum()I

    move-result v2

    .line 131
    .local v2, "min":I
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDetails;

    iget-object v4, v4, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v5, v1, v2

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 132
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDetails;

    iget-object v4, v4, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v5, v3, v2

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 133
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDetails;

    iget-object v4, v4, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 134
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorDetails$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDetails;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;->commitLocalRepresentation()V

    .line 136
    .end local v0    # "details":Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "parameter":I
    :cond_0
    const/4 v4, 0x1

    return v4
.end method
