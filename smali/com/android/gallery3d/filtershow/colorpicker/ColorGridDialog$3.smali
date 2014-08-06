.class Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$3;
.super Ljava/lang/Object;
.source "ColorGridDialog.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;->showColorPicker()V
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
    .line 87
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$3;->this$0:Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setColor([F)V
    .locals 4
    .param p1, "hsvo"    # [F

    .prologue
    .line 90
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const v3, 0xffffff

    and-int v1, v2, v3

    .line 91
    .local v1, "c":I
    const/4 v2, 0x3

    aget v2, p1, v2

    const/high16 v3, 0x437f0000

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 92
    .local v0, "alpha":I
    shl-int/lit8 v2, v0, 0x18

    or-int/2addr v1, v2

    .line 93
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$3;->this$0:Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;

    iget-object v2, v2, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;->mCallback:Lcom/android/gallery3d/filtershow/colorpicker/RGBListener;

    invoke-interface {v2, v1}, Lcom/android/gallery3d/filtershow/colorpicker/RGBListener;->setColor(I)V

    .line 94
    return-void
.end method
