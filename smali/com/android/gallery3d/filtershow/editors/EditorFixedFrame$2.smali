.class Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame$2;
.super Ljava/lang/Object;
.source "EditorFixedFrame.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;->showPopupMenu(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame$2;->val$button:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 98
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;

    # invokes: Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;->isRepresentationValid()Z
    invoke-static {v6}, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;->access$100(Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 99
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    .line 100
    .local v5, "rep":Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 101
    .local v1, "i":I
    const v6, 0x7f0a01ed

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->setmParameterMode(I)V

    .line 103
    packed-switch v1, :pswitch_data_0

    .line 123
    invoke-virtual {v5, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->setmParameterMode(I)V

    .line 125
    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->getCurrentParameter()I

    move-result v4

    .line 126
    .local v4, "parameter":I
    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->getMaximum()I

    move-result v2

    .line 127
    .local v2, "max":I
    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->getMinimum()I

    move-result v3

    .line 129
    .local v3, "min":I
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;

    iget-object v6, v6, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v7, v2, v3

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 130
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;

    iget-object v6, v6, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    sub-int v7, v4, v3

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 132
    .end local v2    # "max":I
    .end local v3    # "min":I
    .end local v4    # "parameter":I
    :goto_0
    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->showParameterValue()Z

    move-result v0

    .line 133
    .local v0, "f":Z
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;

    iget-object v7, v6, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 136
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame$2;->val$button:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;

    iget-object v6, v6, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 138
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;->commitLocalRepresentation()V

    .line 140
    .end local v0    # "f":Z
    .end local v1    # "i":I
    .end local v5    # "rep":Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;
    :cond_0
    const/4 v6, 0x1

    return v6

    .line 120
    .restart local v1    # "i":I
    .restart local v5    # "rep":Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;
    :pswitch_0
    invoke-virtual {v5, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->setFrameTexture(I)V

    goto :goto_0

    .line 133
    .restart local v0    # "f":Z
    :cond_1
    const/4 v6, 0x4

    goto :goto_1

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01ee
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
