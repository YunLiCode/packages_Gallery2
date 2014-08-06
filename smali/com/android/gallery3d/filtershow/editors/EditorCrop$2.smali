.class Lcom/android/gallery3d/filtershow/editors/EditorCrop$2;
.super Ljava/lang/Object;
.source "EditorCrop.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/EditorCrop;->showPopupMenu(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/editors/EditorCrop;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorCrop;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorCrop;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorCrop$2;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorCrop;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/editors/EditorCrop;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectButton(I)V

    .line 95
    const/4 v0, 0x1

    return v0
.end method
