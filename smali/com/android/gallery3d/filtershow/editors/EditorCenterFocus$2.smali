.class Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus$2;
.super Ljava/lang/Object;
.source "EditorCenterFocus.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->showPopupMenu(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus$2;->val$button:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    instance-of v1, v1, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    .line 115
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setParameterMode(I)V

    .line 116
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    # setter for: Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->mSliderMode:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->access$102(Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;I)I

    .line 117
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus$2;->val$button:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;

    # invokes: Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->updateSeekBar(Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->access$200(Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;)V

    .line 119
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->commitLocalRepresentation()V

    .line 120
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;

    iget-object v1, v1, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 122
    .end local v0    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
