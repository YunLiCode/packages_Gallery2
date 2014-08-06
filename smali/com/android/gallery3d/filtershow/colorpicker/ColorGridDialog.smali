.class public Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;
.super Landroid/app/Dialog;
.source "ColorGridDialog.java"


# instance fields
.field mCallback:Lcom/android/gallery3d/filtershow/colorpicker/RGBListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/colorpicker/RGBListener;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cl"    # Lcom/android/gallery3d/filtershow/colorpicker/RGBListener;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;->mCallback:Lcom/android/gallery3d/filtershow/colorpicker/RGBListener;

    .line 38
    const v8, 0x7f0b0199

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;->setTitle(I)V

    .line 39
    const v8, 0x7f04002e

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;->setContentView(I)V

    .line 40
    const v8, 0x7f0a00dd

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 41
    .local v7, "sel":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-direct {p0, v8}, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;->getButtons(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 42
    .local v0, "b":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/Button;>;"
    const/4 v5, 0x0

    .line 43
    .local v5, "k":I
    const/4 v8, 0x3

    new-array v3, v8, [F

    .line 45
    .local v3, "hsv":[F
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 46
    .local v1, "button":Landroid/widget/Button;
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 47
    const/4 v8, 0x0

    rem-int/lit8 v9, v5, 0x5

    mul-int/lit16 v9, v9, 0x168

    div-int/lit8 v9, v9, 0x5

    int-to-float v9, v9

    aput v9, v3, v8

    .line 48
    const/4 v8, 0x1

    div-int/lit8 v9, v5, 0x5

    int-to-float v9, v9

    const/high16 v10, 0x40400000

    div-float/2addr v9, v10

    aput v9, v3, v8

    .line 49
    const/4 v9, 0x2

    const/4 v8, 0x5

    if-ge v5, v8, :cond_1

    int-to-float v8, v5

    const/high16 v10, 0x40800000

    div-float/2addr v8, v10

    :goto_1
    aput v8, v3, v9

    .line 50
    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v8

    const v9, 0xffffff

    and-int/2addr v8, v9

    const/high16 v9, -0x56000000

    or-int v2, v8, v9

    .line 51
    .local v2, "c":I
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    .line 52
    .local v6, "sd":Landroid/graphics/drawable/GradientDrawable;
    new-instance v8, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$1;

    invoke-direct {v8, p0, v2}, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$1;-><init>(Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;I)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 60
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 49
    .end local v2    # "c":I
    .end local v6    # "sd":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    const/high16 v8, 0x3f800000

    goto :goto_1

    .line 64
    .end local v1    # "button":Landroid/widget/Button;
    :cond_2
    new-instance v8, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$2;

    invoke-direct {v8, p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$2;-><init>(Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method private getButtons(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/Button;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 77
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 78
    check-cast v2, Landroid/widget/Button;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .restart local v2    # "v":Landroid/view/View;
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 80
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "v":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;->getButtons(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 83
    :cond_2
    return-object v1
.end method


# virtual methods
.method public showColorPicker()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog$3;-><init>(Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;)V

    .line 96
    .local v0, "cl":Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;
    new-instance v1, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;)V

    .line 97
    .local v1, "cpd":Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->show()V

    .line 98
    return-void
.end method
