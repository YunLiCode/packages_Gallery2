.class public Lcom/android/gallery3d/filtershow/category/CategoryView;
.super Landroid/view/View;
.source "CategoryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sMargin:I

.field private static sTextSize:I


# instance fields
.field private mAction:Lcom/android/gallery3d/filtershow/category/Action;

.field mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

.field private mBackgroundColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderStroke:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectPaint:Landroid/graphics/Paint;

.field private mSelectionStroke:I

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x10

    sput v0, Lcom/android/gallery3d/filtershow/category/CategoryView;->sMargin:I

    .line 41
    const/16 v0, 0x20

    sput v0, Lcom/android/gallery3d/filtershow/category/CategoryView;->sTextSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mTextBounds:Landroid/graphics/Rect;

    .line 60
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/filtershow/category/CategoryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/CategoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mBackgroundColor:I

    .line 63
    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mTextColor:I

    .line 64
    const v1, 0x7f0e00cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mSelectionStroke:I

    .line 65
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mSelectPaint:Landroid/graphics/Paint;

    .line 66
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mSelectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mSelectPaint:Landroid/graphics/Paint;

    const v2, 0x7f09006e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mSelectPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mBorderPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mSelectionStroke:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mBorderStroke:I

    .line 71
    return-void
.end method

.method public static setMargin(I)V
    .locals 0
    .param p0, "margin"    # I

    .prologue
    .line 55
    sput p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->sMargin:I

    .line 56
    return-void
.end method

.method public static setTextSize(I)V
    .locals 0
    .param p0, "size"    # I

    .prologue
    .line 51
    sput p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->sTextSize:I

    .line 52
    return-void
.end method


# virtual methods
.method public drawText(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 74
    if-nez p2, :cond_0

    .line 85
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 78
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/android/gallery3d/filtershow/category/CategoryView;->sTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 79
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 80
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 81
    .local v0, "textWidth":F
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p2, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    sget v4, Lcom/android/gallery3d/filtershow/category/CategoryView;->sMargin:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v1, v3

    .line 83
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    sget v4, Lcom/android/gallery3d/filtershow/category/CategoryView;->sMargin:I

    sub-int v2, v3, v4

    .line 84
    .local v2, "y":I
    int-to-float v3, v1

    int-to-float v4, v2

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 129
    .local v0, "activity":Lcom/android/gallery3d/filtershow/FilterShowActivity;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/Action;->getRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->showRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 130
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->setSelected(Landroid/view/View;)V

    .line 131
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 89
    iget v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/Action;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/category/Action;->setImageFrame(Landroid/graphics/Rect;)V

    .line 105
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/Action;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/category/CategoryView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/Action;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/category/CategoryView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 114
    :cond_1
    return-void

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/Action;->getImage()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 97
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->isSelected(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/CategoryView;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/CategoryView;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mSelectionStroke:I

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mSelectPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mBorderStroke:I

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v8}, Lcom/android/gallery3d/filtershow/ui/SelectionRenderer;->drawSelection(Landroid/graphics/Canvas;IIIIILandroid/graphics/Paint;ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setAction(Lcom/android/gallery3d/filtershow/category/Action;Lcom/android/gallery3d/filtershow/category/CategoryAdapter;)V
    .locals 0
    .param p1, "action"    # Lcom/android/gallery3d/filtershow/category/Action;
    .param p2, "adapter"    # Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    .line 118
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/category/CategoryView;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .line 119
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/CategoryView;->invalidate()V

    .line 120
    return-void
.end method
