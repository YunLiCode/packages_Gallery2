.class Lcom/android/gallery3d/filtershow/upoint/EditorUPoint$2;
.super Ljava/lang/Object;
.source "EditorUPoint.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->setUpPopupMenu(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint$2;->this$0:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    .line 168
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint$2;->this$0:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    .line 170
    .local v2, "tmpRep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 171
    check-cast v1, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    .line 172
    .local v1, "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 173
    .local v0, "cmdID":I
    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint$2;->this$0:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    # invokes: Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->updateMenuItems(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;)V
    invoke-static {v3, v1}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->access$200(Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;)V

    .line 188
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint$2;->this$0:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->updateSeekBar(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;)V

    .line 190
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint$2;->this$0:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->commitLocalRepresentation()V

    .line 191
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint$2;->this$0:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    # getter for: Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->access$300(Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 193
    .end local v0    # "cmdID":I
    .end local v1    # "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    :cond_0
    return v5

    .line 175
    .restart local v0    # "cmdID":I
    .restart local v1    # "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    :pswitch_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint$2;->this$0:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    const/4 v4, 0x0

    # setter for: Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mSliderMode:I
    invoke-static {v3, v4}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->access$102(Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;I)I

    .line 176
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint$2;->this$0:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mEffectName:Ljava/lang/String;

    goto :goto_0

    .line 179
    :pswitch_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint$2;->this$0:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    const/4 v4, 0x2

    # setter for: Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mSliderMode:I
    invoke-static {v3, v4}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->access$102(Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;I)I

    .line 180
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint$2;->this$0:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mEffectName:Ljava/lang/String;

    goto :goto_0

    .line 183
    :pswitch_2
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint$2;->this$0:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    # setter for: Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mSliderMode:I
    invoke-static {v3, v5}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->access$102(Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;I)I

    .line 184
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint$2;->this$0:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mEffectName:Ljava/lang/String;

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x7f0a0229
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
