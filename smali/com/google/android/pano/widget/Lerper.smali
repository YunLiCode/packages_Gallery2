.class public final Lcom/google/android/pano/widget/Lerper;
.super Ljava/lang/Object;
.source "Lerper.java"


# instance fields
.field private mDivisor:F

.field private mMinDelta:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/high16 v0, 0x40000000

    iput v0, p0, Lcom/google/android/pano/widget/Lerper;->mDivisor:F

    .line 12
    const v0, 0x3a83126f

    iput v0, p0, Lcom/google/android/pano/widget/Lerper;->mMinDelta:F

    return-void
.end method


# virtual methods
.method public getValue(II)I
    .locals 4
    .param p1, "currentValue"    # I
    .param p2, "targetValue"    # I

    .prologue
    .line 32
    sub-int v0, p2, p1

    .line 34
    .local v0, "delta":I
    if-lez v0, :cond_2

    .line 36
    int-to-float v2, v0

    iget v3, p0, Lcom/google/android/pano/widget/Lerper;->mDivisor:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 37
    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 40
    :cond_0
    add-int v1, p1, v0

    .line 41
    .local v1, "retValue":I
    if-le v1, p2, :cond_1

    .line 42
    move v1, p2

    .line 57
    :cond_1
    :goto_0
    return v1

    .line 44
    .end local v1    # "retValue":I
    :cond_2
    if-gez v0, :cond_4

    .line 46
    int-to-float v2, v0

    iget v3, p0, Lcom/google/android/pano/widget/Lerper;->mDivisor:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 47
    if-nez v0, :cond_3

    .line 48
    const/4 v0, -0x1

    .line 50
    :cond_3
    add-int v1, p1, v0

    .line 51
    .restart local v1    # "retValue":I
    if-ge v1, p2, :cond_1

    .line 52
    move v1, p2

    goto :goto_0

    .line 55
    .end local v1    # "retValue":I
    :cond_4
    move v1, p2

    .restart local v1    # "retValue":I
    goto :goto_0
.end method

.method public setDivisor(F)V
    .locals 1
    .param p1, "divisor"    # F

    .prologue
    .line 15
    const/high16 v0, 0x3f800000

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 16
    :cond_0
    iput p1, p0, Lcom/google/android/pano/widget/Lerper;->mDivisor:F

    .line 17
    return-void
.end method
