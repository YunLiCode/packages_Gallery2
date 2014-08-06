.class Lcom/android/gallery3d/filtershow/editors/EditorRotate$1;
.super Ljava/lang/Object;
.source "EditorRotate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/EditorRotate;->openUtilityPanel(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/editors/EditorRotate;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorRotate;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorRotate$1;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorRotate;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/EditorRotate$1;->val$button:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorRotate$1;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorRotate;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/editors/EditorRotate;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->rotate()V

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorRotate$1;->val$button:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorRotate$1;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorRotate;

    iget-object v2, v2, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/EditorRotate$1;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorRotate;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/editors/EditorRotate;->getTextId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorRotate$1;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorRotate;

    iget-object v2, v2, Lcom/android/gallery3d/filtershow/editors/EditorRotate;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->getLocalValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorRotate$1;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorRotate;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/editors/EditorRotate;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->saveAndSetPreset()V

    .line 60
    return-void
.end method
