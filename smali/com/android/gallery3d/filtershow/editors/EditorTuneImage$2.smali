.class Lcom/android/gallery3d/filtershow/editors/EditorTuneImage$2;
.super Ljava/lang/Object;
.source "EditorTuneImage.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;->showPopupMenu(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage$2;->val$button:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 100
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v4

    instance-of v4, v4, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    if-eqz v4, :cond_0

    .line 101
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    .line 102
    .local v3, "tuneimage":Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setParameterMode(I)V

    .line 103
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage$2;->val$button:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getCurrentParameter()I

    move-result v2

    .line 105
    .local v2, "parameter":I
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getMaximum()I

    move-result v0

    .line 106
    .local v0, "max":I
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getMinimum()I

    move-result v1

    .line 107
    .local v1, "min":I
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;

    iget-object v4, v4, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v5, v0, v1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 108
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;

    iget-object v4, v4, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 109
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;

    iget-object v4, v4, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 110
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;->commitLocalRepresentation()V

    .line 112
    .end local v0    # "max":I
    .end local v1    # "min":I
    .end local v2    # "parameter":I
    .end local v3    # "tuneimage":Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;
    :cond_0
    const/4 v4, 0x1

    return v4
.end method
