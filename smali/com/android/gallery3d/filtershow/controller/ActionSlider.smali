.class public Lcom/android/gallery3d/filtershow/controller/ActionSlider;
.super Lcom/android/gallery3d/filtershow/controller/TitledSlider;
.source "ActionSlider.java"


# instance fields
.field mLeftButton:Landroid/widget/ImageButton;

.field mRightButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/controller/TitledSlider;-><init>()V

    .line 33
    const v0, 0x7f040030

    iput v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mLayoutID:I

    .line 34
    return-void
.end method


# virtual methods
.method public setUp(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/Parameter;Lcom/android/gallery3d/filtershow/editors/Editor;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "parameter"    # Lcom/android/gallery3d/filtershow/controller/Parameter;
    .param p3, "editor"    # Lcom/android/gallery3d/filtershow/editors/Editor;

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->setUp(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/Parameter;Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mTopView:Landroid/view/View;

    const v1, 0x7f0a00e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/controller/ActionSlider;->mLeftButton:Landroid/widget/ImageButton;

    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/ActionSlider;->mLeftButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/gallery3d/filtershow/controller/ActionSlider$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/controller/ActionSlider$1;-><init>(Lcom/android/gallery3d/filtershow/controller/ActionSlider;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mTopView:Landroid/view/View;

    const v1, 0x7f0a00e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/controller/ActionSlider;->mRightButton:Landroid/widget/ImageButton;

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/ActionSlider;->mRightButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/gallery3d/filtershow/controller/ActionSlider$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/controller/ActionSlider$2;-><init>(Lcom/android/gallery3d/filtershow/controller/ActionSlider;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/ActionSlider;->updateUI()V

    .line 57
    return-void
.end method

.method public updateUI()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->updateUI()V

    .line 62
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/ActionSlider;->mLeftButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    check-cast v1, Lcom/android/gallery3d/filtershow/controller/ParameterActionAndInt;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/controller/ParameterActionAndInt;->getLeftIcon()I

    move-result v0

    .line 64
    .local v0, "iconId":I
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/ActionSlider;->mLeftButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 66
    .end local v0    # "iconId":I
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/ActionSlider;->mRightButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    check-cast v1, Lcom/android/gallery3d/filtershow/controller/ParameterActionAndInt;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/controller/ParameterActionAndInt;->getRightIcon()I

    move-result v0

    .line 68
    .restart local v0    # "iconId":I
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/ActionSlider;->mRightButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 70
    .end local v0    # "iconId":I
    :cond_1
    return-void
.end method
