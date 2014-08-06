.class public Lcom/android/gallery3d/filtershow/state/StateView;
.super Landroid/view/View;
.source "StateView.java"


# static fields
.field public static BEGIN:I

.field public static DEFAULT:I

.field public static DOWN:I

.field public static END:I

.field public static LEFT:I

.field public static RIGHT:I

.field public static UP:I

.field private static sArrowHeight:I

.field private static sArrowWidth:I

.field private static sMargin:I


# instance fields
.field private mAlpha:F

.field private mBackgroundColor:I

.field private mDirection:I

.field private mDuplicateButton:Z

.field private mEndsBackgroundColor:I

.field private mEndsTextColor:I

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mSelectedBackgroundColor:I

.field private mSelectedTextColor:I

.field private mState:Lcom/android/gallery3d/filtershow/state/State;

.field private mText:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColor:I

.field private mTextSize:F

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/android/gallery3d/filtershow/state/StateView;->DEFAULT:I

    .line 39
    sput v1, Lcom/android/gallery3d/filtershow/state/StateView;->BEGIN:I

    .line 40
    sput v2, Lcom/android/gallery3d/filtershow/state/StateView;->END:I

    .line 42
    sput v1, Lcom/android/gallery3d/filtershow/state/StateView;->UP:I

    .line 43
    sput v2, Lcom/android/gallery3d/filtershow/state/StateView;->DOWN:I

    .line 44
    const/4 v0, 0x3

    sput v0, Lcom/android/gallery3d/filtershow/state/StateView;->LEFT:I

    .line 45
    const/4 v0, 0x4

    sput v0, Lcom/android/gallery3d/filtershow/state/StateView;->RIGHT:I

    .line 51
    sput v3, Lcom/android/gallery3d/filtershow/state/StateView;->sMargin:I

    .line 52
    sput v3, Lcom/android/gallery3d/filtershow/state/StateView;->sArrowHeight:I

    .line 53
    const/16 v0, 0x8

    sput v0, Lcom/android/gallery3d/filtershow/state/StateView;->sArrowWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    sget v0, Lcom/android/gallery3d/filtershow/state/StateView;->DEFAULT:I

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/state/StateView;-><init>(Landroid/content/Context;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    .line 36
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    .line 47
    sget v1, Lcom/android/gallery3d/filtershow/state/StateView;->DEFAULT:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mType:I

    .line 48
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mAlpha:F

    .line 49
    const-string v1, "Default"

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mText:Ljava/lang/String;

    .line 50
    const/high16 v1, 0x42000000

    iput v1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mTextSize:F

    .line 54
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mOrientation:I

    .line 55
    sget v1, Lcom/android/gallery3d/filtershow/state/StateView;->DOWN:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mDirection:I

    .line 65
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mTextBounds:Landroid/graphics/Rect;

    .line 73
    iput p2, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mType:I

    .line 74
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mEndsBackgroundColor:I

    .line 76
    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mEndsTextColor:I

    .line 77
    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mBackgroundColor:I

    .line 78
    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mTextColor:I

    .line 79
    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mSelectedBackgroundColor:I

    .line 80
    const v1, 0x7f09006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mSelectedTextColor:I

    .line 81
    const v1, 0x7f0e00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mTextSize:F

    .line 82
    return-void
.end method

.method private drawHorizontalPath(FFFF)V
    .locals 4
    .param p1, "w"    # F
    .param p2, "h"    # F
    .param p3, "r"    # F
    .param p4, "d"    # F

    .prologue
    const/4 v3, 0x0

    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 184
    iget v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mType:I

    sget v1, Lcom/android/gallery3d/filtershow/state/StateView;->END:I

    if-ne v0, v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 195
    iget v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mType:I

    sget v1, Lcom/android/gallery3d/filtershow/state/StateView;->BEGIN:I

    if-eq v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float v1, p3, p4

    add-float/2addr v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float v1, p3, p4

    invoke-virtual {v0, p4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v3, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 201
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    sub-float v1, p1, p4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    sub-float v1, p1, p4

    invoke-virtual {v0, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float v1, p3, p4

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    sub-float v1, p1, p4

    add-float v2, p3, p4

    add-float/2addr v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    sub-float v1, p1, p4

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method private drawVerticalDownPath(FFFF)V
    .locals 4
    .param p1, "w"    # F
    .param p2, "h"    # F
    .param p3, "r"    # F
    .param p4, "d"    # F

    .prologue
    const/4 v3, 0x0

    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 226
    iget v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mType:I

    sget v1, Lcom/android/gallery3d/filtershow/state/StateView;->BEGIN:I

    if-eq v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 228
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float v1, p3, p4

    invoke-virtual {v0, v1, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 229
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float v1, p3, p4

    add-float/2addr v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 233
    iget v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mType:I

    sget v1, Lcom/android/gallery3d/filtershow/state/StateView;->END:I

    if-eq v0, v1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    sub-float v1, p2, p4

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 236
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float v1, p3, p4

    add-float/2addr v1, p3

    sub-float v2, p2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 237
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float v1, p3, p4

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 238
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    sub-float v1, p2, p4

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    sub-float v1, p2, p4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 247
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method private drawVerticalPath(FFFF)V
    .locals 4
    .param p1, "w"    # F
    .param p2, "h"    # F
    .param p3, "r"    # F
    .param p4, "d"    # F

    .prologue
    const/4 v3, 0x0

    .line 204
    iget v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mType:I

    sget v1, Lcom/android/gallery3d/filtershow/state/StateView;->BEGIN:I

    if-ne v0, v1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 215
    iget v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mType:I

    sget v1, Lcom/android/gallery3d/filtershow/state/StateView;->END:I

    if-eq v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float v1, p3, p4

    add-float/2addr v1, p3

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float v1, p3, p4

    sub-float v2, p2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 221
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 222
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v3, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float v1, p3, p4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    add-float v1, p3, p4

    add-float/2addr v1, p3

    invoke-virtual {v0, v1, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method


# virtual methods
.method public drawText(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 126
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mText:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 145
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 130
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mSelectedTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    :goto_1
    iget v2, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mType:I

    sget v3, Lcom/android/gallery3d/filtershow/state/StateView;->BEGIN:I

    if-ne v2, v3, :cond_1

    .line 136
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mEndsTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 139
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mTextSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 141
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 143
    .local v0, "x":I
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 144
    .local v1, "y":I
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mText:Ljava/lang/String;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 133
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mAlpha:F

    return v0
.end method

.method public getState()Lcom/android/gallery3d/filtershow/state/State;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mState:Lcom/android/gallery3d/filtershow/state/State;

    return-object v0
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mState:Lcom/android/gallery3d/filtershow/state/State;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/state/State;->isDraggable()Z

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 148
    invoke-virtual {p1, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 149
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    .line 150
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 153
    .local v3, "w":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v1, v4

    .line 154
    .local v1, "h":F
    sget v4, Lcom/android/gallery3d/filtershow/state/StateView;->sArrowHeight:I

    int-to-float v2, v4

    .line 155
    .local v2, "r":F
    sget v4, Lcom/android/gallery3d/filtershow/state/StateView;->sArrowWidth:I

    int-to-float v0, v4

    .line 157
    .local v0, "d":F
    iget v4, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mOrientation:I

    if-nez v4, :cond_1

    .line 158
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/android/gallery3d/filtershow/state/StateView;->drawHorizontalPath(FFFF)V

    .line 167
    :goto_0
    iget v4, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mType:I

    sget v5, Lcom/android/gallery3d/filtershow/state/StateView;->DEFAULT:I

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mType:I

    sget v5, Lcom/android/gallery3d/filtershow/state/StateView;->END:I

    if-ne v4, v5, :cond_5

    .line 168
    :cond_0
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mDuplicateButton:Z

    if-eqz v4, :cond_3

    .line 169
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 178
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/state/StateView;->drawText(Landroid/graphics/Canvas;)V

    .line 180
    return-void

    .line 160
    :cond_1
    iget v4, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mDirection:I

    sget v5, Lcom/android/gallery3d/filtershow/state/StateView;->DOWN:I

    if-ne v4, v5, :cond_2

    .line 161
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/android/gallery3d/filtershow/state/StateView;->drawVerticalDownPath(FFFF)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/android/gallery3d/filtershow/state/StateView;->drawVerticalPath(FFFF)V

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateView;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 171
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mSelectedBackgroundColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 173
    :cond_4
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mBackgroundColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 176
    :cond_5
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mEndsBackgroundColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 111
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/android/gallery3d/filtershow/state/PanelTrack;

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/state/PanelTrack;

    invoke-interface {v1, p1, p0}, Lcom/android/gallery3d/filtershow/state/PanelTrack;->onTouch(Landroid/view/MotionEvent;Lcom/android/gallery3d/filtershow/state/StateView;)V

    .line 114
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mType:I

    sget v2, Lcom/android/gallery3d/filtershow/state/StateView;->BEGIN:I

    if-ne v1, v2, :cond_1

    .line 115
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setShowsOriginal(Z)V

    .line 118
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 120
    :cond_2
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setShowsOriginal(Z)V

    .line 122
    :cond_3
    return v3
.end method

.method public resetPosition()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/state/StateView;->setTranslationX(F)V

    .line 284
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/state/StateView;->setTranslationY(F)V

    .line 285
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/state/StateView;->setBackgroundAlpha(F)V

    .line 286
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 250
    iget v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mType:I

    sget v1, Lcom/android/gallery3d/filtershow/state/StateView;->BEGIN:I

    if-ne v0, v1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 253
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mAlpha:F

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/state/StateView;->setAlpha(F)V

    .line 255
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateView;->invalidate()V

    goto :goto_0
.end method

.method public setDuplicateButton(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mDuplicateButton:Z

    .line 268
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateView;->invalidate()V

    .line 269
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 263
    iput p1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mOrientation:I

    .line 264
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 101
    if-nez p1, :cond_0

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mDuplicateButton:Z

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateView;->invalidate()V

    .line 105
    return-void
.end method

.method public setState(Lcom/android/gallery3d/filtershow/state/State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/gallery3d/filtershow/state/State;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mState:Lcom/android/gallery3d/filtershow/state/State;

    .line 277
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mState:Lcom/android/gallery3d/filtershow/state/State;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/state/State;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mText:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mState:Lcom/android/gallery3d/filtershow/state/State;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/state/State;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mType:I

    .line 279
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateView;->invalidate()V

    .line 280
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/android/gallery3d/filtershow/state/StateView;->mType:I

    .line 95
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StateView;->invalidate()V

    .line 96
    return-void
.end method
