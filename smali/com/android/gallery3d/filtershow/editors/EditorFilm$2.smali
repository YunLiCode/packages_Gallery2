.class Lcom/android/gallery3d/filtershow/editors/EditorFilm$2;
.super Ljava/lang/Object;
.source "EditorFilm.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/EditorFilm;->showPopupMenu(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/editors/EditorFilm;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorFilm;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorFilm$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFilm;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/EditorFilm$2;->val$button:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 97
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorFilm$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFilm;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/editors/EditorFilm;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorFilm$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFilm;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/editors/EditorFilm;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v4

    instance-of v4, v4, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    if-eqz v4, :cond_0

    .line 98
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorFilm$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFilm;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/editors/EditorFilm;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    .line 99
    .local v0, "film":Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setParameterMode(I)V

    .line 100
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorFilm$2;->val$button:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getCurrentParameter()I

    move-result v3

    .line 102
    .local v3, "parameter":I
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getMaximum()I

    move-result v1

    .line 103
    .local v1, "max":I
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getMinimum()I

    move-result v2

    .line 104
    .local v2, "min":I
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorFilm$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFilm;

    iget-object v4, v4, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v5, v1, v2

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 105
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorFilm$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFilm;

    iget-object v4, v4, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v5, v3, v2

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 106
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorFilm$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFilm;

    iget-object v4, v4, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 107
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/EditorFilm$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFilm;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/editors/EditorFilm;->commitLocalRepresentation()V

    .line 109
    .end local v0    # "film":Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "parameter":I
    :cond_0
    const/4 v4, 0x1

    return v4
.end method
