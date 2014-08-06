.class public Lcom/android/gallery3d/filtershow/controller/StyleChooser;
.super Ljava/lang/Object;
.source "StyleChooser.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/controller/Control;


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field protected mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

.field private mIconButton:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mLayoutID:I

.field protected mLinearLayout:Landroid/widget/LinearLayout;

.field protected mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterStyles;

.field private mTopView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "StyleChooser"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->LOGTAG:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->mIconButton:Ljava/util/Vector;

    .line 27
    const v0, 0x7f040031

    iput v0, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->mLayoutID:I

    return-void
.end method


# virtual methods
.method public setPrameter(Lcom/android/gallery3d/filtershow/controller/Parameter;)V
    .locals 0
    .param p1, "parameter"    # Lcom/android/gallery3d/filtershow/controller/Parameter;

    .prologue
    .line 77
    check-cast p1, Lcom/android/gallery3d/filtershow/controller/ParameterStyles;

    .end local p1    # "parameter":Lcom/android/gallery3d/filtershow/controller/Parameter;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterStyles;

    .line 78
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->updateUI()V

    .line 79
    return-void
.end method

.method public setUp(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/Parameter;Lcom/android/gallery3d/filtershow/editors/Editor;)V
    .locals 10
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "parameter"    # Lcom/android/gallery3d/filtershow/controller/Parameter;
    .param p3, "editor"    # Lcom/android/gallery3d/filtershow/editors/Editor;

    .prologue
    const/16 v9, 0x78

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->mEditor:Lcom/android/gallery3d/filtershow/editors/Editor;

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 34
    .local v2, "context":Landroid/content/Context;
    check-cast p2, Lcom/android/gallery3d/filtershow/controller/ParameterStyles;

    .end local p2    # "parameter":Lcom/android/gallery3d/filtershow/controller/Parameter;
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterStyles;

    .line 35
    const-string v7, "layout_inflater"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 37
    .local v4, "inflater":Landroid/view/LayoutInflater;
    iget v7, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->mLayoutID:I

    const/4 v8, 0x1

    invoke-virtual {v4, v7, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->mTopView:Landroid/view/View;

    .line 38
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->mTopView:Landroid/view/View;

    const v8, 0x7f0a00e7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 39
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->mTopView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterStyles;

    invoke-interface {v7}, Lcom/android/gallery3d/filtershow/controller/ParameterStyles;->getNumberOfStyles()I

    move-result v6

    .line 41
    .local v6, "n":I
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->mIconButton:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 42
    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 43
    .local v5, "lp":Landroid/app/ActionBar$LayoutParams;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 44
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "button":Landroid/widget/ImageButton;
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    const v7, 0x106000d

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 48
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->mIconButton:Ljava/util/Vector;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 49
    move v1, v3

    .line 50
    .local v1, "buttonNo":I
    new-instance v7, Lcom/android/gallery3d/filtershow/controller/StyleChooser$1;

    invoke-direct {v7, p0, v1}, Lcom/android/gallery3d/filtershow/controller/StyleChooser$1;-><init>(Lcom/android/gallery3d/filtershow/controller/StyleChooser;I)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterStyles;

    new-instance v8, Lcom/android/gallery3d/filtershow/controller/StyleChooser$2;

    invoke-direct {v8, p0, v0}, Lcom/android/gallery3d/filtershow/controller/StyleChooser$2;-><init>(Lcom/android/gallery3d/filtershow/controller/StyleChooser;Landroid/widget/ImageButton;)V

    invoke-interface {v7, v3, v8}, Lcom/android/gallery3d/filtershow/controller/ParameterStyles;->getIcon(ILcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;)V

    .line 43
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "button":Landroid/widget/ImageButton;
    .end local v1    # "buttonNo":I
    :cond_0
    return-void
.end method

.method public updateUI()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterStyles;

    if-nez v0, :cond_0

    .line 86
    :cond_0
    return-void
.end method
