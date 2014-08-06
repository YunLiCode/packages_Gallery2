.class Lcom/android/gallery3d/filtershow/editors/EditorFlip$1;
.super Ljava/lang/Object;
.source "EditorFlip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/EditorFlip;->openUtilityPanel(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/editors/EditorFlip;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorFlip;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorFlip$1;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFlip;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorFlip$1;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFlip;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/editors/EditorFlip;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->flip()V

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorFlip$1;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorFlip;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/editors/EditorFlip;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->saveAndSetPreset()V

    .line 59
    return-void
.end method
