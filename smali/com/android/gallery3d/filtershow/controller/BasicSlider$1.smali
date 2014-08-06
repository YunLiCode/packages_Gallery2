.class Lcom/android/gallery3d/filtershow/controller/BasicSlider$1;
.super Ljava/lang/Object;
.source "BasicSlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/controller/BasicSlider;->setUp(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/Parameter;Lcom/android/gallery3d/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/controller/BasicSlider;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/controller/BasicSlider;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/BasicSlider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/BasicSlider;

    # getter for: Lcom/android/gallery3d/filtershow/controller/BasicSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->access$000(Lcom/android/gallery3d/filtershow/controller/BasicSlider;)Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/BasicSlider;

    # getter for: Lcom/android/gallery3d/filtershow/controller/BasicSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->access$000(Lcom/android/gallery3d/filtershow/controller/BasicSlider;)Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/BasicSlider;

    # getter for: Lcom/android/gallery3d/filtershow/controller/BasicSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->access$000(Lcom/android/gallery3d/filtershow/controller/BasicSlider;)Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;->getMinimum()I

    move-result v1

    add-int/2addr v1, p2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;->setValue(I)V

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/BasicSlider;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/Editor;->commitLocalRepresentation()V

    .line 65
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 56
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 52
    return-void
.end method
