.class Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$1;
.super Ljava/lang/Object;
.source "ColorGridDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/colorpicker/RGBListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;

.field final synthetic val$c:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;I)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$1;->this$0:Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;

    iput p2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$1;->val$c:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$1;->this$0:Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;->mCallback:Lcom/android/gallery3d/filtershow/colorpicker/RGBListener;

    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$1;->val$c:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/filtershow/colorpicker/RGBListener;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$1;->this$0:Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;->dismiss()V

    .line 57
    return-void
.end method
