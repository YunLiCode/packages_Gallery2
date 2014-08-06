.class Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$2;
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


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$2;->this$0:Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$2;->this$0:Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;->showColorPicker()V

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$2;->this$0:Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;->dismiss()V

    .line 69
    return-void
.end method
