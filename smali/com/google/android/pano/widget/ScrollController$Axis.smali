.class public Lcom/google/android/pano/widget/ScrollController$Axis;
.super Ljava/lang/Object;
.source "ScrollController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Axis"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;,
        Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    }
.end annotation


# instance fields
.field private mAlignExtraOffset:I

.field private mDragOffset:F

.field private mExpandedSize:I

.field private mExtraSpaceHigh:I

.field private mExtraSpaceLow:I

.field private mLerper:Lcom/google/android/pano/widget/Lerper;

.field private mMaxEdge:I

.field private mMinEdge:I

.field private mName:Ljava/lang/String;

.field private mOperationMode:I

.field private mPaddingHigh:I

.field private mPaddingLow:I

.field private mScrollCenter:I

.field private mScrollCenterOffset:I

.field private mScrollCenterOffsetPercent:F

.field private mScrollCenterStrategy:I

.field private mScrollItemAlign:I

.field private mScrollMax:I

.field private mScrollMin:I

.field private mSelectedTakesMoreSpace:Z

.field private mSize:I

.field private mTouchScrollMax:I

.field private mTouchScrollMin:I

.field public final window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;


# direct methods
.method public constructor <init>(Lcom/google/android/pano/widget/Lerper;Ljava/lang/String;)V
    .locals 2
    .param p1, "lerper"    # Lcom/google/android/pano/widget/Lerper;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 500
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mOperationMode:I

    .line 154
    iput v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollItemAlign:I

    .line 156
    iput-boolean v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSelectedTakesMoreSpace:Z

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    .line 198
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffsetPercent:F

    .line 488
    new-instance v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    invoke-direct {v0}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    .line 501
    iput v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    .line 502
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mLerper:Lcom/google/android/pano/widget/Lerper;

    .line 503
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->reset()V

    .line 504
    iput-object p2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mName:Ljava/lang/String;

    .line 505
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/pano/widget/ScrollController$Axis;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollController$Axis;

    .prologue
    .line 104
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/pano/widget/ScrollController$Axis;F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollController$Axis;
    .param p1, "x1"    # F

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->dragBy(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/pano/widget/ScrollController$Axis;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollController$Axis;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollCenter(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/pano/widget/ScrollController$Axis;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollController$Axis;

    .prologue
    .line 104
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/pano/widget/ScrollController$Axis;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollController$Axis;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->updateFromDrag()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/pano/widget/ScrollController$Axis;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollController$Axis;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->reset()V

    return-void
.end method

.method private calculateWindowCenter(I)I
    .locals 16
    .param p1, "scrollCenter"    # I

    .prologue
    .line 725
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis;->window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    invoke-virtual {v13}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->isValid()Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis;->window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    invoke-virtual {v13}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->getActualCount()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_5

    .line 726
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis;->window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    invoke-virtual {v13}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->getItemBeforeLow()Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-result-object v6

    .line 727
    .local v6, "lowItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis;->window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    invoke-virtual {v13}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->getItemAfterHigh()Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-result-object v4

    .line 728
    .local v4, "highItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->isValid()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getCenter()I

    move-result v13

    move/from16 v0, p1

    if-lt v0, v13, :cond_1

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->isValid()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getCenter()I

    move-result v13

    move/from16 v0, p1

    if-le v0, v13, :cond_2

    .line 731
    :cond_1
    const-string v13, "ScrollController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "scrollCenter out of range "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/ScrollController$Axis;->window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .end local v4    # "highItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .end local v6    # "lowItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .end local p1    # "scrollCenter":I
    :goto_0
    return p1

    .line 734
    .restart local v4    # "highItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .restart local v6    # "lowItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .restart local p1    # "scrollCenter":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis;->window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    invoke-virtual {v13}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->getFirstItem()Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-result-object v3

    .line 735
    .local v3, "firstItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis;->window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    invoke-virtual {v13}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->getLastItem()Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-result-object v5

    .line 736
    .local v5, "lastItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getCenter()I

    move-result v13

    move/from16 v0, p1

    if-ge v0, v13, :cond_3

    .line 738
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis;->window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/pano/widget/ScrollController$Axis;->window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    invoke-virtual {v14}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->getActualCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-virtual {v13, v14}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->getItem(I)Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-result-object v10

    .line 742
    .local v10, "nextLastItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getCenter()I

    move-result v13

    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getCenter()I

    move-result v14

    sub-int v2, v13, v14

    .line 743
    .local v2, "dist":I
    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getLow()I

    move-result v13

    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getHigh()I

    move-result v14

    add-int/2addr v13, v14

    div-int/lit8 v11, v13, 0x2

    .line 744
    .local v11, "oldCenter":I
    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getLow()I

    move-result v13

    invoke-virtual {v10}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getHigh()I

    move-result v14

    add-int/2addr v13, v14

    div-int/lit8 v8, v13, 0x2

    .line 745
    .local v8, "newCenter":I
    sub-int v12, v11, v8

    .line 746
    .local v12, "systemDist":I
    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getCenter()I

    move-result v13

    sub-int v7, v13, p1

    .line 747
    .local v7, "moved":I
    int-to-float v13, v11

    int-to-float v14, v7

    int-to-float v15, v2

    div-float/2addr v14, v15

    int-to-float v15, v12

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    float-to-int v1, v13

    .end local v2    # "dist":I
    .end local v3    # "firstItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .end local v4    # "highItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .end local v5    # "lastItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .end local v6    # "lowItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .end local v7    # "moved":I
    .end local v8    # "newCenter":I
    .end local v10    # "nextLastItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .end local v11    # "oldCenter":I
    .end local v12    # "systemDist":I
    .local v1, "center":I
    :goto_1
    move/from16 p1, v1

    .line 764
    goto :goto_0

    .line 748
    .end local v1    # "center":I
    .restart local v3    # "firstItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .restart local v4    # "highItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .restart local v5    # "lastItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .restart local v6    # "lowItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getCenter()I

    move-result v13

    move/from16 v0, p1

    if-le v0, v13, :cond_4

    .line 750
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis;->window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->getItem(I)Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-result-object v9

    .line 751
    .local v9, "nextFirstItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getCenter()I

    move-result v13

    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getCenter()I

    move-result v14

    sub-int v2, v13, v14

    .line 752
    .restart local v2    # "dist":I
    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getLow()I

    move-result v13

    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getHigh()I

    move-result v14

    add-int/2addr v13, v14

    div-int/lit8 v11, v13, 0x2

    .line 753
    .restart local v11    # "oldCenter":I
    invoke-virtual {v9}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getLow()I

    move-result v13

    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getHigh()I

    move-result v14

    add-int/2addr v13, v14

    div-int/lit8 v8, v13, 0x2

    .line 754
    .restart local v8    # "newCenter":I
    sub-int v12, v8, v11

    .line 755
    .restart local v12    # "systemDist":I
    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getCenter()I

    move-result v13

    sub-int v7, p1, v13

    .line 756
    .restart local v7    # "moved":I
    int-to-float v13, v11

    int-to-float v14, v7

    int-to-float v15, v2

    div-float/2addr v14, v15

    int-to-float v15, v12

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v1, v13

    .line 757
    .restart local v1    # "center":I
    goto :goto_1

    .line 759
    .end local v1    # "center":I
    .end local v2    # "dist":I
    .end local v7    # "moved":I
    .end local v8    # "newCenter":I
    .end local v9    # "nextFirstItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .end local v11    # "oldCenter":I
    .end local v12    # "systemDist":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis;->window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    invoke-virtual {v13}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->getFirstItem()Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getLow()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/pano/widget/ScrollController$Axis;->window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    invoke-virtual {v14}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->getLastItem()Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getHigh()I

    move-result v14

    add-int/2addr v13, v14

    div-int/lit8 v1, v13, 0x2

    .restart local v1    # "center":I
    goto :goto_1

    .line 762
    .end local v1    # "center":I
    .end local v3    # "firstItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .end local v4    # "highItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .end local v5    # "lastItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .end local v6    # "lowItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    :cond_5
    move/from16 v1, p1

    .restart local v1    # "center":I
    goto :goto_1
.end method

.method private dragBy(F)V
    .locals 1
    .param p1, "distanceX"    # F

    .prologue
    .line 649
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    .line 650
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    const/high16 v0, -0x80000000

    .line 653
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I

    .line 654
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    .line 655
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    .line 656
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMin:I

    .line 657
    iput v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    .line 658
    iput v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    .line 659
    iput v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMax:I

    .line 660
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    .line 661
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->clear()V

    .line 662
    return-void
.end method

.method private scrollMax()I
    .locals 2

    .prologue
    .line 561
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mOperationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMax:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    goto :goto_0
.end method

.method private scrollMin()I
    .locals 2

    .prologue
    .line 557
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mOperationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMin:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    goto :goto_0
.end method

.method private updateFromDrag()V
    .locals 3

    .prologue
    .line 644
    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 645
    .local v0, "scrollTarget":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollCenter(IZ)Z

    .line 646
    return-void
.end method

.method private updateScrollCenter(IZ)Z
    .locals 5
    .param p1, "scrollTarget"    # I
    .param p2, "lerper"    # Z

    .prologue
    .line 620
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    .line 621
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->scrollMin()I

    move-result v2

    .line 622
    .local v2, "scrollMin":I
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->scrollMax()I

    move-result v1

    .line 623
    .local v1, "scrollMax":I
    const/4 v0, 0x0

    .line 624
    .local v0, "overScroll":Z
    if-lt v2, v1, :cond_1

    .line 625
    iget p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I

    .line 626
    const/4 v0, 0x1

    .line 634
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 635
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mLerper:Lcom/google/android/pano/widget/Lerper;

    iget v4, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I

    invoke-virtual {v3, v4, p1}, Lcom/google/android/pano/widget/Lerper;->getValue(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I

    .line 639
    :goto_1
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    iget v4, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I

    invoke-virtual {v3, v4}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->updateScrollCenter(I)V

    .line 640
    return v0

    .line 627
    :cond_1
    if-ge p1, v2, :cond_2

    .line 628
    move p1, v2

    .line 629
    const/4 v0, 0x1

    goto :goto_0

    .line 630
    :cond_2
    if-le p1, v1, :cond_0

    .line 631
    move p1, v1

    .line 632
    const/4 v0, 0x1

    goto :goto_0

    .line 637
    :cond_3
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I

    goto :goto_1
.end method


# virtual methods
.method public findWindowIndexContainingScrollCenter()I
    .locals 4

    .prologue
    .line 710
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    # getter for: Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I
    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->access$100(Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 711
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->window:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    invoke-virtual {v2, v0}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->getItem(I)Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-result-object v1

    .line 712
    .local v1, "item":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getLow()I

    move-result v2

    iget v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getHigh()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 716
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    :goto_1
    return v0

    .line 710
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    .end local v1    # "item":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final getPaddingHigh()I
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingHigh:I

    return v0
.end method

.method public final getPaddingLow()I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    return v0
.end method

.method public final getScrollCenter()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I

    return v0
.end method

.method public final getScrollItemAlign()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollItemAlign:I

    return v0
.end method

.method public final getSelectedTakesMoreSpace()Z
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSelectedTakesMoreSpace:Z

    return v0
.end method

.method public final getSizeForExpandableItem()I
    .locals 2

    .prologue
    .line 673
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingHigh:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getSystemScrollPos()I
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSystemScrollPos(I)I

    move-result v0

    return v0
.end method

.method public final getSystemScrollPos(I)I
    .locals 12
    .param p1, "scrollCenter"    # I

    .prologue
    .line 768
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mAlignExtraOffset:I

    add-int/2addr p1, v9

    .line 771
    iget-boolean v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSelectedTakesMoreSpace:Z

    if-eqz v9, :cond_0

    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    .line 772
    .local v2, "compensate":I
    :goto_0
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 773
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    sub-int v9, p1, v9

    add-int/2addr v9, v2

    .line 873
    :goto_1
    return v9

    .line 771
    .end local v2    # "compensate":I
    :cond_0
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    neg-int v2, v9

    goto :goto_0

    .line 774
    .restart local v2    # "compensate":I
    :cond_1
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 775
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    sub-int/2addr v9, v10

    sub-int v9, p1, v9

    add-int/2addr v9, v2

    goto :goto_1

    .line 776
    :cond_2
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 777
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    sub-int v9, p1, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    int-to-float v10, v10

    iget v11, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffsetPercent:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v2

    goto :goto_1

    .line 781
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->calculateWindowCenter(I)I

    move-result p1

    .line 782
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingHigh:I

    sub-int v1, v9, v10

    .line 787
    .local v1, "clientSize":I
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    if-ltz v9, :cond_4

    .line 788
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int v6, v9, v10

    .line 794
    .local v6, "middlePosition":I
    :goto_2
    sub-int v0, v1, v6

    .line 797
    .local v0, "afterMiddlePosition":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->isMinUnknown()Z

    move-result v5

    .line 798
    .local v5, "isMinUnknown":Z
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->isMaxUnknown()Z

    move-result v4

    .line 799
    .local v4, "isMaxUnknown":Z
    iget-boolean v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSelectedTakesMoreSpace:Z

    if-eqz v9, :cond_9

    .line 801
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollItemAlign()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 810
    iget v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    .line 813
    .local v3, "extraSpaceLow":I
    :goto_3
    if-nez v5, :cond_6

    if-nez v4, :cond_6

    .line 814
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    add-int/2addr v9, v10

    if-gt v9, v1, :cond_6

    .line 817
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    goto :goto_1

    .line 789
    .end local v0    # "afterMiddlePosition":I
    .end local v3    # "extraSpaceLow":I
    .end local v4    # "isMaxUnknown":Z
    .end local v5    # "isMinUnknown":Z
    .end local v6    # "middlePosition":I
    :cond_4
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffsetPercent:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_5

    .line 790
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    int-to-float v9, v9

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffsetPercent:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int v6, v9, v10

    .restart local v6    # "middlePosition":I
    goto :goto_2

    .line 792
    .end local v6    # "middlePosition":I
    :cond_5
    div-int/lit8 v6, v1, 0x2

    .restart local v6    # "middlePosition":I
    goto :goto_2

    .line 803
    .restart local v0    # "afterMiddlePosition":I
    .restart local v4    # "isMaxUnknown":Z
    .restart local v5    # "isMinUnknown":Z
    :pswitch_0
    const/4 v3, 0x0

    .line 804
    .restart local v3    # "extraSpaceLow":I
    goto :goto_3

    .line 806
    .end local v3    # "extraSpaceLow":I
    :pswitch_1
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceHigh:I

    add-int v3, v9, v10

    .line 807
    .restart local v3    # "extraSpaceLow":I
    goto :goto_3

    .line 820
    :cond_6
    if-nez v5, :cond_7

    .line 821
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    sub-int v9, p1, v9

    add-int/2addr v9, v3

    if-gt v9, v6, :cond_7

    .line 824
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    goto/16 :goto_1

    .line 827
    :cond_7
    if-nez v4, :cond_8

    .line 828
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    sub-int v8, v9, v3

    .line 829
    .local v8, "spaceAfterScrollCenter":I
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    sub-int/2addr v9, p1

    add-int/2addr v9, v8

    if-gt v9, v0, :cond_8

    .line 832
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    sub-int v10, v1, v10

    sub-int/2addr v9, v10

    goto/16 :goto_1

    .line 836
    .end local v8    # "spaceAfterScrollCenter":I
    :cond_8
    sub-int v9, p1, v6

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    add-int/2addr v9, v3

    goto/16 :goto_1

    .line 839
    .end local v3    # "extraSpaceLow":I
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollItemAlign()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    .line 848
    const/4 v7, 0x0

    .line 851
    .local v7, "shift":I
    :goto_4
    if-nez v5, :cond_a

    if-nez v4, :cond_a

    .line 852
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    add-int/2addr v9, v10

    if-gt v9, v1, :cond_a

    .line 855
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    goto/16 :goto_1

    .line 841
    .end local v7    # "shift":I
    :pswitch_2
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    neg-int v7, v9

    .line 842
    .restart local v7    # "shift":I
    goto :goto_4

    .line 844
    .end local v7    # "shift":I
    :pswitch_3
    iget v7, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceHigh:I

    .line 845
    .restart local v7    # "shift":I
    goto :goto_4

    .line 858
    :cond_a
    if-nez v5, :cond_b

    .line 859
    add-int v9, p1, v7

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    sub-int/2addr v9, v10

    if-gt v9, v6, :cond_b

    .line 862
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    goto/16 :goto_1

    .line 865
    :cond_b
    if-nez v4, :cond_c

    .line 866
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    sub-int/2addr v9, p1

    sub-int/2addr v9, v7

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    add-int/2addr v9, v10

    if-gt v9, v0, :cond_c

    .line 869
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    sub-int v10, v1, v10

    sub-int/2addr v9, v10

    goto/16 :goto_1

    .line 873
    :cond_c
    sub-int v9, p1, v6

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    add-int/2addr v9, v7

    goto/16 :goto_1

    .line 801
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 839
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public invalidateScrollMax()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 601
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    .line 602
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    .line 603
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMax:I

    .line 604
    return-void
.end method

.method public invalidateScrollMin()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 580
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    .line 581
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    .line 582
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMin:I

    .line 583
    return-void
.end method

.method public final isMaxUnknown()Z
    .locals 2

    .prologue
    .line 669
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMinUnknown()Z
    .locals 2

    .prologue
    .line 665
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setAlignExtraOffset(I)V
    .locals 0
    .param p1, "extraOffset"    # I

    .prologue
    .line 693
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mAlignExtraOffset:I

    .line 694
    return-void
.end method

.method public final setExpandedSize(I)V
    .locals 0
    .param p1, "expandedSize"    # I

    .prologue
    .line 681
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    .line 682
    return-void
.end method

.method public final setExtraSpaceHigh(I)V
    .locals 0
    .param p1, "extraSpaceHigh"    # I

    .prologue
    .line 689
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceHigh:I

    .line 690
    return-void
.end method

.method public final setExtraSpaceLow(I)V
    .locals 0
    .param p1, "extraSpaceLow"    # I

    .prologue
    .line 685
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    .line 686
    return-void
.end method

.method public final setOperationMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 553
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mOperationMode:I

    .line 554
    return-void
.end method

.method public final setPadding(II)V
    .locals 0
    .param p1, "paddingLow"    # I
    .param p2, "paddingHigh"    # I

    .prologue
    .line 697
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    .line 698
    iput p2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingHigh:I

    .line 699
    return-void
.end method

.method public final setScrollCenterOffset(I)V
    .locals 0
    .param p1, "scrollCenterOffset"    # I

    .prologue
    .line 520
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    .line 521
    return-void
.end method

.method public final setScrollCenterOffsetPercent(I)V
    .locals 2
    .param p1, "scrollCenterOffsetPercent"    # I

    .prologue
    .line 524
    if-gez p1, :cond_1

    .line 525
    const/4 p1, 0x0

    .line 529
    :cond_0
    :goto_0
    int-to-float v0, p1

    const/high16 v1, 0x42c80000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffsetPercent:F

    .line 530
    return-void

    .line 526
    :cond_1
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 527
    const/16 p1, 0x64

    goto :goto_0
.end method

.method public final setScrollCenterStrategy(I)V
    .locals 0
    .param p1, "scrollCenterStrategy"    # I

    .prologue
    .line 512
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    .line 513
    return-void
.end method

.method public final setScrollItemAlign(I)V
    .locals 0
    .param p1, "align"    # I

    .prologue
    .line 541
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollItemAlign:I

    .line 542
    return-void
.end method

.method public final setSelectedTakesMoreSpace(Z)V
    .locals 0
    .param p1, "selectedTakesMoreSpace"    # Z

    .prologue
    .line 533
    iput-boolean p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSelectedTakesMoreSpace:Z

    .line 534
    return-void
.end method

.method public final setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 677
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    .line 678
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "center: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateScrollMax(II)V
    .locals 3
    .param p1, "scrollMax"    # I
    .param p2, "maxEdge"    # I

    .prologue
    .line 587
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    .line 588
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    if-le v0, v1, :cond_0

    .line 589
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I

    .line 591
    :cond_0
    iput p2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    .line 592
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    .line 594
    :cond_1
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMax:I

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_2
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMax:I

    goto :goto_0
.end method

.method public final updateScrollMin(II)V
    .locals 3
    .param p1, "scrollMin"    # I
    .param p2, "minEdge"    # I

    .prologue
    .line 566
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    .line 567
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    if-ge v0, v1, :cond_0

    .line 568
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I

    .line 570
    :cond_0
    iput p2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    .line 571
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    .line 573
    :cond_1
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMin:I

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_2
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMin:I

    goto :goto_0
.end method
