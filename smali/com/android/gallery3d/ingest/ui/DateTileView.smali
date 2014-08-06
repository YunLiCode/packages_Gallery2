.class public Lcom/android/gallery3d/ingest/ui/DateTileView;
.super Landroid/widget/FrameLayout;
.source "DateTileView.java"


# static fields
.field private static sLocale:Ljava/util/Locale;

.field private static sMonthNames:[Ljava/lang/String;


# instance fields
.field private mDate:I

.field private mDateTextView:Landroid/widget/TextView;

.field private mMonth:I

.field private mMonthNames:[Ljava/lang/String;

.field private mMonthTextView:Landroid/widget/TextView;

.field private mYear:I

.field private mYearTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Ljava/text/DateFormatSymbols;->getInstance()Ljava/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/ingest/ui/DateTileView;->sMonthNames:[Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/android/gallery3d/ingest/ui/DateTileView;->refreshLocale()Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonth:I

    .line 53
    iput v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mYear:I

    .line 54
    iput v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mDate:I

    .line 55
    sget-object v0, Lcom/android/gallery3d/ingest/ui/DateTileView;->sMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonthNames:[Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonth:I

    .line 53
    iput v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mYear:I

    .line 54
    iput v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mDate:I

    .line 55
    sget-object v0, Lcom/android/gallery3d/ingest/ui/DateTileView;->sMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonthNames:[Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, -0x1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonth:I

    .line 53
    iput v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mYear:I

    .line 54
    iput v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mDate:I

    .line 55
    sget-object v0, Lcom/android/gallery3d/ingest/ui/DateTileView;->sMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonthNames:[Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static refreshLocale()Z
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 40
    .local v0, "currentLocale":Ljava/util/Locale;
    sget-object v1, Lcom/android/gallery3d/ingest/ui/DateTileView;->sLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    sput-object v0, Lcom/android/gallery3d/ingest/ui/DateTileView;->sLocale:Ljava/util/Locale;

    .line 42
    sget-object v1, Lcom/android/gallery3d/ingest/ui/DateTileView;->sLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/ingest/ui/DateTileView;->sMonthNames:[Ljava/lang/String;

    .line 43
    const/4 v1, 0x1

    .line 45
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 78
    const v0, 0x7f0a0115

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ingest/ui/DateTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mDateTextView:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0a0113

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ingest/ui/DateTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonthTextView:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0a0114

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ingest/ui/DateTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mYearTextView:Landroid/widget/TextView;

    .line 81
    return-void
.end method

.method public onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 72
    invoke-super {p0, p1, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 73
    return-void
.end method

.method public setDate(III)V
    .locals 3
    .param p1, "date"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I

    .prologue
    .line 88
    iget v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mDate:I

    if-eq p1, v0, :cond_0

    .line 89
    iput p1, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mDate:I

    .line 90
    iget-object v1, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mDateTextView:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mDate:I

    const/16 v2, 0x9

    if-le v0, v2, :cond_4

    iget v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mDate:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonthNames:[Ljava/lang/String;

    sget-object v1, Lcom/android/gallery3d/ingest/ui/DateTileView;->sMonthNames:[Ljava/lang/String;

    if-eq v0, v1, :cond_1

    .line 93
    sget-object v0, Lcom/android/gallery3d/ingest/ui/DateTileView;->sMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonthNames:[Ljava/lang/String;

    .line 94
    iget v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonth:I

    if-ne p2, v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonthTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonthNames:[Ljava/lang/String;

    iget v2, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonth:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonth:I

    if-eq p2, v0, :cond_2

    .line 99
    iput p2, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonth:I

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonthTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonthNames:[Ljava/lang/String;

    iget v2, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mMonth:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mYear:I

    if-eq p3, v0, :cond_3

    .line 103
    iput p3, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mYear:I

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mYearTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mYear:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_3
    return-void

    .line 90
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/gallery3d/ingest/ui/DateTileView;->mDate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setDate(Lcom/android/gallery3d/ingest/SimpleDate;)V
    .locals 3
    .param p1, "date"    # Lcom/android/gallery3d/ingest/SimpleDate;

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/android/gallery3d/ingest/SimpleDate;->getDay()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/gallery3d/ingest/SimpleDate;->getMonth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/gallery3d/ingest/SimpleDate;->getYear()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/ingest/ui/DateTileView;->setDate(III)V

    .line 85
    return-void
.end method
