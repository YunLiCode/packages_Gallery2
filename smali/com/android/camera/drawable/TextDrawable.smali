.class public Lcom/android/camera/drawable/TextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TextDrawable.java"


# instance fields
.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/CharSequence;

.field private mUseDropShadow:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 43
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/android/camera/drawable/TextDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/android/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    .line 48
    invoke-direct {p0}, Lcom/android/camera/drawable/TextDrawable;->updatePaint()V

    .line 49
    const/4 v1, 0x2

    const/high16 v2, 0x41700000

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 51
    .local v0, "textSize":F
    iget-object v1, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    iget-object v1, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/android/camera/drawable/TextDrawable;->mIntrinsicWidth:I

    .line 53
    iget-object v1, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/drawable/TextDrawable;->mIntrinsicHeight:I

    .line 54
    return-void
.end method

.method private updatePaint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 62
    iget-boolean v0, p0, Lcom/android/camera/drawable/TextDrawable;->mUseDropShadow:Z

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 64
    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 67
    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/camera/drawable/TextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 86
    .local v7, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 89
    .end local v7    # "bounds":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/android/camera/drawable/TextDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/camera/drawable/TextDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 114
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 119
    return-void
.end method

.method public setDropShadow(Z)V
    .locals 0
    .param p1, "shadow"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/camera/drawable/TextDrawable;->mUseDropShadow:Z

    .line 93
    invoke-direct {p0}, Lcom/android/camera/drawable/TextDrawable;->updatePaint()V

    .line 94
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "txt"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 72
    iput-object p1, p0, Lcom/android/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    .line 73
    if-nez p1, :cond_0

    .line 74
    iput v3, p0, Lcom/android/camera/drawable/TextDrawable;->mIntrinsicWidth:I

    .line 75
    iput v3, p0, Lcom/android/camera/drawable/TextDrawable;->mIntrinsicHeight:I

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/camera/drawable/TextDrawable;->mIntrinsicWidth:I

    .line 78
    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/drawable/TextDrawable;->mIntrinsicHeight:I

    goto :goto_0
.end method
