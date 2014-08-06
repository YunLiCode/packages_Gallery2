.class Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;

.field final synthetic val$cl:Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog$1;->this$0:Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog$1;->val$cl:Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog$1;->this$0:Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->dismiss()V

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog$1;->val$cl:Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog$1;->val$cl:Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog$1;->this$0:Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;

    iget-object v1, v1, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->mHSVO:[F

    invoke-interface {v0, v1}, Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;->setColor([F)V

    .line 58
    :cond_0
    return-void
.end method
