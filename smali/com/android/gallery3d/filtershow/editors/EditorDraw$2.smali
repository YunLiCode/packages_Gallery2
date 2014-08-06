.class Lcom/android/gallery3d/filtershow/editors/EditorDraw$2;
.super Ljava/lang/Object;
.source "EditorDraw.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/EditorDraw;->showPopupMenu(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/editors/EditorDraw;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorDraw;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 98
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    iget-object v2, v2, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;

    .line 99
    .local v0, "filter":Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0a01e1

    if-ne v2, v3, :cond_1

    .line 100
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/editors/EditorDraw;->showColorGrid(Landroid/view/MenuItem;)V

    .line 117
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    iget-object v2, v2, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 118
    return v4

    .line 101
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0a01e0

    if-ne v2, v3, :cond_2

    .line 102
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/editors/EditorDraw;->showSizeDialog(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 103
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0a01de

    if-ne v2, v3, :cond_3

    .line 104
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    iget-object v1, v2, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;

    .line 105
    .local v1, "idraw":Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->setStyle(B)V

    goto :goto_0

    .line 106
    .end local v1    # "idraw":Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0a01df

    if-ne v2, v3, :cond_4

    .line 107
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    iget-object v1, v2, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;

    .line 108
    .restart local v1    # "idraw":Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;
    invoke-virtual {v1, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->setStyle(B)V

    goto :goto_0

    .line 109
    .end local v1    # "idraw":Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0a01dd

    if-ne v2, v3, :cond_5

    .line 110
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    iget-object v1, v2, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;

    .line 111
    .restart local v1    # "idraw":Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->setStyle(B)V

    goto :goto_0

    .line 112
    .end local v1    # "idraw":Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0a01e2

    if-ne v2, v3, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    iget-object v1, v2, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;

    .line 114
    .restart local v1    # "idraw":Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->resetParameter()V

    .line 115
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/editors/EditorDraw;->commitLocalRepresentation()V

    goto :goto_0
.end method
