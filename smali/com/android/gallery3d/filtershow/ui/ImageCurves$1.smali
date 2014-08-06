.class Lcom/android/gallery3d/filtershow/ui/ImageCurves$1;
.super Ljava/lang/Object;
.source "ImageCurves.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/ui/ImageCurves;->showPopupMenu(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/ui/ImageCurves;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves$1;->this$0:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves$1;->val$button:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves$1;->this$0:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->setChannel(I)V

    .line 116
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves$1;->val$button:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves$1;->this$0:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mIdStrLut:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const/4 v0, 0x1

    return v0
.end method
