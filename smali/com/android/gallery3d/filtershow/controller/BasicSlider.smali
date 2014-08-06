.class public Lcom/android/gallery3d/filtershow/controller/BasicSlider;
.super Ljava/lang/Object;
.source "BasicSlider.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/controller/Control;


# instance fields
.field mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

.field private mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/controller/BasicSlider;)Lcom/android/gallery3d/filtershow/controller/ParameterInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/controller/BasicSlider;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    return-object v0
.end method


# virtual methods
.method public setPrameter(Lcom/android/gallery3d/filtershow/controller/Parameter;)V
    .locals 1
    .param p1, "parameter"    # Lcom/android/gallery3d/filtershow/controller/Parameter;

    .prologue
    .line 76
    check-cast p1, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    .end local p1    # "parameter":Lcom/android/gallery3d/filtershow/controller/Parameter;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->updateUI()V

    .line 80
    :cond_0
    return-void
.end method

.method public setUp(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/Parameter;Lcom/android/gallery3d/filtershow/editors/Editor;)V
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "parameter"    # Lcom/android/gallery3d/filtershow/controller/Parameter;
    .param p3, "editor"    # Lcom/android/gallery3d/filtershow/editors/Editor;

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 38
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, "context":Landroid/content/Context;
    check-cast p2, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    .end local p2    # "parameter":Lcom/android/gallery3d/filtershow/controller/Parameter;
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    .line 41
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 43
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04003c

    const/4 v4, 0x1

    invoke-virtual {v1, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 45
    .local v2, "lp":Landroid/widget/LinearLayout;
    const v3, 0x7f0a00f1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->mSeekBar:Landroid/widget/SeekBar;

    .line 47
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->updateUI()V

    .line 48
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Lcom/android/gallery3d/filtershow/controller/BasicSlider$1;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/filtershow/controller/BasicSlider$1;-><init>(Lcom/android/gallery3d/filtershow/controller/BasicSlider;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 67
    return-void
.end method

.method public updateUI()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;->getMaximum()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    invoke-interface {v2}, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;->getMinimum()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/controller/BasicSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    invoke-interface {v2}, Lcom/android/gallery3d/filtershow/controller/ParameterInteger;->getMinimum()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 86
    return-void
.end method
