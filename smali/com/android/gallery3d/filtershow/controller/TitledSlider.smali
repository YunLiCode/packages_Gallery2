.class public Lcom/android/gallery3d/filtershow/controller/TitledSlider;
.super Ljava/lang/Object;
.source "TitledSlider.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/controller/Control;


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mControlName:Landroid/widget/TextView;

.field private mControlValue:Landroid/widget/TextView;

.field mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

.field protected mLayoutID:I

.field protected mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

.field private mSeekBar:Landroid/widget/SeekBar;

.field mTopView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "ParametricEditor"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->LOGTAG:Ljava/lang/String;

    .line 39
    const v0, 0x7f040032

    iput v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mLayoutID:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/controller/TitledSlider;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/controller/TitledSlider;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mControlName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/filtershow/controller/TitledSlider;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/controller/TitledSlider;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mControlValue:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public setPrameter(Lcom/android/gallery3d/filtershow/controller/Parameter;)V
    .locals 1
    .param p1, "parameter"    # Lcom/android/gallery3d/filtershow/controller/Parameter;

    .prologue
    .line 83
    check-cast p1, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    .end local p1    # "parameter":Lcom/android/gallery3d/filtershow/controller/Parameter;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->updateUI()V

    .line 86
    :cond_0
    return-void
.end method

.method public setUp(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/Parameter;Lcom/android/gallery3d/filtershow/editors/Editor;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "parameter"    # Lcom/android/gallery3d/filtershow/controller/Parameter;
    .param p3, "editor"    # Lcom/android/gallery3d/filtershow/editors/Editor;

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 44
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "context":Landroid/content/Context;
    check-cast p2, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    .end local p2    # "parameter":Lcom/android/gallery3d/filtershow/controller/Parameter;
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    .line 47
    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 49
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mLayoutID:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mTopView:Landroid/view/View;

    .line 50
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mTopView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mTopView:Landroid/view/View;

    const v3, 0x7f0a00e4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mSeekBar:Landroid/widget/SeekBar;

    .line 52
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mTopView:Landroid/view/View;

    const v3, 0x7f0a00e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mControlName:Landroid/widget/TextView;

    .line 53
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mTopView:Landroid/view/View;

    const v3, 0x7f0a00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mControlValue:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->updateUI()V

    .line 55
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/android/gallery3d/filtershow/controller/TitledSlider$1;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/filtershow/controller/TitledSlider$1;-><init>(Lcom/android/gallery3d/filtershow/controller/TitledSlider;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 79
    return-void
.end method

.method public updateUI()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mControlName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;->getParameterName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mControlName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;->getParameterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mControlValue:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mControlValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;->getMaximum()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    invoke-interface {v2}, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;->getMinimum()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    invoke-interface {v2}, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;->getMinimum()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/Editor;->commitLocalRepresentation()V

    .line 100
    return-void
.end method
