.class public Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;


# instance fields
.field mHSVO:[F

.field mSelectRect:Landroid/graphics/drawable/GradientDrawable;

.field mSelectedButton:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cl"    # Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;

    .prologue
    const v9, 0x7f0a00e2

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 33
    new-array v6, v7, [F

    iput-object v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->mHSVO:[F

    .line 38
    const v6, 0x7f04002f

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->setContentView(I)V

    .line 39
    const v6, 0x7f0a00e1

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;

    .line 40
    .local v0, "csv":Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;
    const v6, 0x7f0a00df

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;

    .line 41
    .local v2, "cwv":Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;
    const v6, 0x7f0a00e0

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;

    .line 42
    .local v1, "cvv":Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;
    new-array v3, v7, [F

    fill-array-data v3, :array_0

    .line 45
    .local v3, "hsvo":[F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020096

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    iput-object v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->mSelectRect:Landroid/graphics/drawable/GradientDrawable;

    .line 47
    invoke-virtual {p0, v9}, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 48
    .local v5, "selButton":Landroid/widget/Button;
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->mSelectRect:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5, v8, v8, v6, v8}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {p0, v9}, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 51
    .local v4, "sel":Landroid/widget/Button;
    new-instance v6, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog$1;

    invoke-direct {v6, p0, p2}, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog$1;-><init>(Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->setColor([F)V

    .line 62
    invoke-virtual {v1, v3}, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->setColor([F)V

    .line 63
    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->setColor([F)V

    .line 64
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->addColorListener(Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;)V

    .line 65
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->addColorListener(Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->addColorListener(Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;)V

    .line 67
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->addColorListener(Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;)V

    .line 68
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->addColorListener(Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;)V

    .line 69
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->addColorListener(Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;)V

    .line 70
    invoke-virtual {v1, p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->addColorListener(Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;)V

    .line 71
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->addColorListener(Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;)V

    .line 72
    invoke-virtual {v2, p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->addColorListener(Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;)V

    .line 74
    return-void

    .line 42
    nop

    :array_0
    .array-data 4
        0x42f60000
        0x3f666666
        0x3f800000
        0x3f800000
    .end array-data
.end method

.method private setButtonColor(Landroid/widget/ToggleButton;[F)V
    .locals 7
    .param p1, "button"    # Landroid/widget/ToggleButton;
    .param p2, "hsv"    # [F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 109
    if-nez p1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {p2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 113
    .local v0, "color":I
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setBackgroundColor(I)V

    .line 114
    const/4 v2, 0x3

    new-array v1, v2, [F

    aget v2, p2, v4

    const/high16 v3, 0x43340000

    add-float/2addr v2, v3

    const/high16 v3, 0x43b40000

    rem-float/2addr v2, v3

    aput v2, v1, v4

    aget v2, p2, v5

    aput v2, v1, v5

    aget v2, p2, v6

    const/high16 v3, 0x3f000000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const v2, 0x3dcccccd

    :goto_1
    aput v2, v1, v6

    .line 119
    .local v1, "fg":[F
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 120
    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    .end local v1    # "fg":[F
    :cond_1
    const v2, 0x3f666666

    goto :goto_1
.end method


# virtual methods
.method public setColor([F)V
    .locals 4
    .param p1, "hsvo"    # [F

    .prologue
    const/4 v3, 0x0

    .line 102
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->mHSVO:[F

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->mHSVO:[F

    array-length v2, v2

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 104
    .local v0, "color":I
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->mSelectRect:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 105
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->mSelectedButton:Landroid/widget/ToggleButton;

    invoke-direct {p0, v1, p1}, Lcom/android/gallery3d/filtershow/colorpicker/ColorPickerDialog;->setButtonColor(Landroid/widget/ToggleButton;[F)V

    .line 106
    return-void
.end method
