.class Lcom/android/gallery3d/filtershow/controller/TitledSlider$1;
.super Ljava/lang/Object;
.source "TitledSlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/controller/TitledSlider;->setUp(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/Parameter;Lcom/android/gallery3d/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/controller/TitledSlider;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/controller/TitledSlider;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/TitledSlider;

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
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/TitledSlider;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/TitledSlider;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/TitledSlider;

    iget-object v1, v1, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;->getMinimum()I

    move-result v1

    add-int/2addr v1, p2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;->setValue(I)V

    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/TitledSlider;

    # getter for: Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mControlName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->access$000(Lcom/android/gallery3d/filtershow/controller/TitledSlider;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/TitledSlider;

    # getter for: Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mControlName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->access$000(Lcom/android/gallery3d/filtershow/controller/TitledSlider;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/TitledSlider;

    iget-object v1, v1, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;->getParameterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/TitledSlider;

    # getter for: Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mControlValue:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->access$100(Lcom/android/gallery3d/filtershow/controller/TitledSlider;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/TitledSlider;

    # getter for: Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mControlValue:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->access$100(Lcom/android/gallery3d/filtershow/controller/TitledSlider;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/TitledSlider;

    iget-object v1, v1, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/TitledSlider;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/Editor;->commitLocalRepresentation()V

    .line 77
    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 63
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 59
    return-void
.end method
