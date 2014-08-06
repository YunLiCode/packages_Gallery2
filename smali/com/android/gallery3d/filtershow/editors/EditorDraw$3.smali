.class Lcom/android/gallery3d/filtershow/editors/EditorDraw$3;
.super Ljava/lang/Object;
.source "EditorDraw.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/EditorDraw;->showSizeDialog(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

.field final synthetic val$bar:Landroid/widget/SeekBar;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorDraw;Landroid/widget/SeekBar;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$3;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$3;->val$bar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$3;->val$bar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 138
    .local v1, "p":I
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$3;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    iget-object v0, v2, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;

    .line 139
    .local v0, "idraw":Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->setSize(I)V

    .line 140
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 141
    return-void
.end method
