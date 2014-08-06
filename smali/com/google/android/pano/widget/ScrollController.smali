.class public Lcom/google/android/pano/widget/ScrollController;
.super Ljava/lang/Object;
.source "ScrollController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/ScrollController$Axis;
    }
.end annotation


# instance fields
.field public final horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

.field private mContext:Landroid/content/Context;

.field private mDragMode:I

.field private mFlingMode:I

.field private mFlingScroller:Landroid/widget/Scroller;

.field private mHorizontalForward:Z

.field private mLerper:Lcom/google/android/pano/widget/Lerper;

.field private mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

.field private mMainHorizontal:Z

.field private mOrientation:I

.field private mScrollMode:I

.field private mScrollScroller:Landroid/widget/Scroller;

.field private mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

.field private mState:I

.field private mVerticalForward:Z

.field public final vertical:Lcom/google/android/pano/widget/ScrollController$Axis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 946
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 902
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    .line 904
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    .line 906
    new-instance v0, Lcom/google/android/pano/widget/Lerper;

    invoke-direct {v0}, Lcom/google/android/pano/widget/Lerper;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mLerper:Lcom/google/android/pano/widget/Lerper;

    .line 908
    new-instance v0, Lcom/google/android/pano/widget/ScrollController$Axis;

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->mLerper:Lcom/google/android/pano/widget/Lerper;

    const-string v2, "vertical"

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/widget/ScrollController$Axis;-><init>(Lcom/google/android/pano/widget/Lerper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 910
    new-instance v0, Lcom/google/android/pano/widget/ScrollController$Axis;

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->mLerper:Lcom/google/android/pano/widget/Lerper;

    const-string v2, "horizontal"

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/widget/ScrollController$Axis;-><init>(Lcom/google/android/pano/widget/Lerper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 912
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 914
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 917
    iput v4, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingMode:I

    .line 920
    iput v4, p0, Lcom/google/android/pano/widget/ScrollController;->mDragMode:I

    .line 923
    iput v3, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollMode:I

    .line 927
    iput-boolean v3, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    .line 928
    iput-boolean v3, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    .line 947
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->mContext:Landroid/content/Context;

    .line 949
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    .line 950
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    .line 951
    return-void
.end method

.method private getMode(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1024
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->touchscreen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1027
    const/4 p1, 0x1

    .line 1032
    :cond_0
    :goto_0
    return p1

    .line 1029
    :cond_1
    const/4 p1, 0x2

    goto :goto_0
.end method

.method private updateDirection(FF)V
    .locals 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1036
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mMainHorizontal:Z

    .line 1037
    cmpl-float v0, p1, v4

    if-lez v0, :cond_3

    .line 1038
    iput-boolean v1, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    .line 1042
    :cond_0
    :goto_1
    cmpl-float v0, p2, v4

    if-lez v0, :cond_4

    .line 1043
    iput-boolean v1, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    .line 1047
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 1036
    goto :goto_0

    .line 1039
    :cond_3
    cmpg-float v0, p1, v4

    if-gez v0, :cond_0

    .line 1040
    iput-boolean v2, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    goto :goto_1

    .line 1044
    :cond_4
    cmpg-float v0, p2, v4

    if-gez v0, :cond_1

    .line 1045
    iput-boolean v2, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    goto :goto_2
.end method


# virtual methods
.method public final computeAndSetScrollPosition()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1220
    iget v1, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    if-ne v1, v3, :cond_2

    .line 1221
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    .line 1227
    .local v0, "scroller":Landroid/widget/Scroller;
    :goto_0
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    # getter for: Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$500(Lcom/google/android/pano/widget/ScrollController$Axis;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    # getter for: Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$500(Lcom/google/android/pano/widget/ScrollController$Axis;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_3

    .line 1228
    :cond_0
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    # invokes: Lcom/google/android/pano/widget/ScrollController$Axis;->updateFromDrag()V
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$600(Lcom/google/android/pano/widget/ScrollController$Axis;)V

    .line 1229
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    # invokes: Lcom/google/android/pano/widget/ScrollController$Axis;->updateFromDrag()V
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$600(Lcom/google/android/pano/widget/ScrollController$Axis;)V

    .line 1235
    .end local v0    # "scroller":Landroid/widget/Scroller;
    :cond_1
    :goto_1
    return-void

    .line 1222
    :cond_2
    iget v1, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1223
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    .restart local v0    # "scroller":Landroid/widget/Scroller;
    goto :goto_0

    .line 1230
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1231
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1232
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    # invokes: Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollCenter(IZ)Z
    invoke-static {v1, v2, v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$400(Lcom/google/android/pano/widget/ScrollController$Axis;IZ)Z

    .line 1233
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    # invokes: Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollCenter(IZ)Z
    invoke-static {v1, v2, v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$400(Lcom/google/android/pano/widget/ScrollController$Axis;IZ)Z

    goto :goto_1
.end method

.method public final dragBy(FF)Z
    .locals 2
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .prologue
    .line 1137
    iget v1, p0, Lcom/google/android/pano/widget/ScrollController;->mDragMode:I

    if-nez v1, :cond_0

    .line 1138
    const/4 v1, 0x0

    .line 1146
    :goto_0
    return v1

    .line 1140
    :cond_0
    iget v1, p0, Lcom/google/android/pano/widget/ScrollController;->mDragMode:I

    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/ScrollController;->getMode(I)I

    move-result v0

    .line 1141
    .local v0, "operationMode":I
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    .line 1142
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    .line 1143
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    # invokes: Lcom/google/android/pano/widget/ScrollController$Axis;->dragBy(F)V
    invoke-static {v1, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$300(Lcom/google/android/pano/widget/ScrollController$Axis;F)V

    .line 1144
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    # invokes: Lcom/google/android/pano/widget/ScrollController$Axis;->dragBy(F)V
    invoke-static {v1, p2}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$300(Lcom/google/android/pano/widget/ScrollController$Axis;F)V

    .line 1145
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/ScrollController;->updateDirection(FF)V

    .line 1146
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final fling(II)Z
    .locals 11
    .param p1, "velocity_x"    # I
    .param p2, "velocity_y"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v10, 0x1

    const/high16 v5, -0x80000000

    .line 1050
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingMode:I

    if-nez v0, :cond_0

    .line 1051
    const/4 v0, 0x0

    .line 1066
    :goto_0
    return v0

    .line 1053
    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingMode:I

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollController;->getMode(I)I

    move-result v9

    .line 1054
    .local v9, "operationMode":I
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0, v9}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    .line 1055
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0, v9}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    .line 1056
    iput v10, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    .line 1057
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    # getter for: Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$200(Lcom/google/android/pano/widget/ScrollController$Axis;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    # getter for: Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:I
    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$200(Lcom/google/android/pano/widget/ScrollController$Axis;)I

    move-result v2

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1065
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/pano/widget/ScrollController;->updateDirection(FF)V

    move v0, v10

    .line 1066
    goto :goto_0
.end method

.method public final getCurrVelocity()F
    .locals 2

    .prologue
    .line 1007
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    .line 1012
    :goto_0
    return v0

    .line 1009
    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1010
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    goto :goto_0

    .line 1012
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getLastDirection()I
    .locals 1

    .prologue
    .line 1207
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mMainHorizontal:Z

    if-eqz v0, :cond_1

    .line 1208
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x42

    .line 1210
    :goto_0
    return v0

    .line 1208
    :cond_0
    const/16 v0, 0x11

    goto :goto_0

    .line 1210
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x82

    goto :goto_0

    :cond_2
    const/16 v0, 0x21

    goto :goto_0
.end method

.method public final getScrollDuration(I)I
    .locals 3
    .param p1, "distance"    # I

    .prologue
    .line 1239
    int-to-float v1, p1

    const v2, 0x3f333333

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1240
    .local v0, "ms":I
    const/16 v1, 0xfa

    if-ge v0, v1, :cond_1

    .line 1241
    const/16 v0, 0xfa

    .line 1245
    :cond_0
    :goto_0
    return v0

    .line 1242
    :cond_1
    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 1243
    const/16 v0, 0x1f4

    goto :goto_0
.end method

.method public getScrollItemAlign()I
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollItemAlign()I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1182
    iget v3, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    if-ne v3, v1, :cond_1

    .line 1183
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    .line 1189
    .local v0, "scroller":Landroid/widget/Scroller;
    :goto_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1190
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1193
    .end local v0    # "scroller":Landroid/widget/Scroller;
    :cond_0
    :goto_1
    return v1

    .line 1184
    :cond_1
    iget v3, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    .restart local v0    # "scroller":Landroid/widget/Scroller;
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1190
    goto :goto_1

    :cond_3
    move v1, v2

    .line 1193
    goto :goto_1
.end method

.method public final isMainAxisMovingForward()Z
    .locals 1

    .prologue
    .line 1197
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    goto :goto_0
.end method

.method public final isSecondAxisMovingForward()Z
    .locals 1

    .prologue
    .line 1202
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    goto :goto_0
.end method

.method public final lerper()Lcom/google/android/pano/widget/Lerper;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mLerper:Lcom/google/android/pano/widget/Lerper;

    return-object v0
.end method

.method public final mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    return-object v0
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 1249
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v0

    # invokes: Lcom/google/android/pano/widget/ScrollController$Axis;->reset()V
    invoke-static {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$700(Lcom/google/android/pano/widget/ScrollController$Axis;)V

    .line 1250
    return-void
.end method

.method public final secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    return-object v0
.end method

.method public final setDragMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 995
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController;->mDragMode:I

    .line 996
    return-void
.end method

.method public final setFlingMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 987
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingMode:I

    .line 988
    return-void
.end method

.method public final setOrientation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, 0x0

    .line 954
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollItemAlign()I

    move-result v0

    .line 955
    .local v0, "align":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSelectedTakesMoreSpace()Z

    move-result v1

    .line 956
    .local v1, "selectedTakesMoreSpace":Z
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    .line 957
    iget v2, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    if-nez v2, :cond_0

    .line 958
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 959
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 964
    :goto_0
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v2, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->setScrollItemAlign(I)V

    .line 965
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v2, v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->setScrollItemAlign(I)V

    .line 966
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v2, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setSelectedTakesMoreSpace(Z)V

    .line 967
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v2, v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->setSelectedTakesMoreSpace(Z)V

    .line 968
    return-void

    .line 961
    :cond_0
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 962
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    goto :goto_0
.end method

.method public final setScrollCenter(II)V
    .locals 2
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .prologue
    const/4 v1, 0x0

    .line 1158
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    # invokes: Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollCenter(IZ)Z
    invoke-static {v0, p1, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$400(Lcom/google/android/pano/widget/ScrollController$Axis;IZ)Z

    .line 1159
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    # invokes: Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollCenter(IZ)Z
    invoke-static {v0, p2, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$400(Lcom/google/android/pano/widget/ScrollController$Axis;IZ)Z

    .line 1161
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result p1

    .line 1162
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result p2

    .line 1163
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 1164
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p2}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 1165
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1166
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 1167
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p2}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 1168
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1169
    return-void
.end method

.method public final setScrollCenterByMain(II)V
    .locals 1
    .param p1, "centerMain"    # I
    .param p2, "centerSecond"    # I

    .prologue
    .line 1150
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    if-nez v0, :cond_0

    .line 1151
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/ScrollController;->setScrollCenter(II)V

    .line 1155
    :goto_0
    return-void

    .line 1153
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/google/android/pano/widget/ScrollController;->setScrollCenter(II)V

    goto :goto_0
.end method

.method public setScrollItemAlign(I)V
    .locals 1
    .param p1, "align"    # I

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setScrollItemAlign(I)V

    .line 972
    return-void
.end method

.method public final startScroll(IIZI)V
    .locals 16
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "easeFling"    # Z
    .param p4, "duration"    # I

    .prologue
    .line 1070
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/ScrollController;->mScrollMode:I

    if-nez v4, :cond_0

    .line 1109
    :goto_0
    return-void

    .line 1073
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/ScrollController;->mScrollMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/pano/widget/ScrollController;->getMode(I)I

    move-result v12

    .line 1074
    .local v12, "operationMode":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v4, v12}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v4, v12}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    .line 1077
    if-eqz p3, :cond_3

    .line 1078
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    .line 1079
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    .line 1084
    .local v1, "scroller":Landroid/widget/Scroller;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v2

    .line 1085
    .local v2, "basex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v3

    .line 1086
    .local v3, "basey":I
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1089
    add-int v4, v2, p1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    sub-int p1, v4, v5

    .line 1090
    add-int v4, v3, p2

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    sub-int p2, v4, v5

    .line 1091
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1092
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1094
    :cond_1
    move/from16 v0, p1

    int-to-float v4, v0

    move/from16 v0, p2

    int-to-float v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/pano/widget/ScrollController;->updateDirection(FF)V

    .line 1095
    if-eqz p3, :cond_6

    .line 1096
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalX()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getStartX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v7, v4

    .line 1097
    .local v7, "curDx":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalY()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getStartY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v8, v4

    .line 1098
    .local v8, "curDy":F
    mul-float v4, v7, v7

    mul-float v5, v8, v8

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v11, v4

    .line 1099
    .local v11, "hyp":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v13

    .line 1100
    .local v13, "velocity":F
    mul-float v4, v13, v7

    div-float v14, v4, v11

    .line 1101
    .local v14, "velocityX":F
    mul-float v4, v13, v8

    div-float v15, v4, v11

    .line 1102
    .local v15, "velocityY":F
    const/4 v4, 0x0

    cmpl-float v4, v14, v4

    if-nez v4, :cond_4

    const/4 v9, 0x0

    .line 1103
    .local v9, "durationX":I
    :goto_2
    const/4 v4, 0x0

    cmpl-float v4, v15, v4

    if-nez v4, :cond_5

    const/4 v10, 0x0

    .line 1104
    .local v10, "durationY":I
    :goto_3
    if-nez p4, :cond_2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result p4

    .end local v7    # "curDx":F
    .end local v8    # "curDy":F
    .end local v9    # "durationX":I
    .end local v10    # "durationY":I
    .end local v11    # "hyp":F
    .end local v13    # "velocity":F
    .end local v14    # "velocityX":F
    .end local v15    # "velocityY":F
    :cond_2
    :goto_4
    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    .line 1108
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto/16 :goto_0

    .line 1081
    .end local v1    # "scroller":Landroid/widget/Scroller;
    .end local v2    # "basex":I
    .end local v3    # "basey":I
    :cond_3
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    .line 1082
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    .restart local v1    # "scroller":Landroid/widget/Scroller;
    goto/16 :goto_1

    .line 1102
    .restart local v2    # "basex":I
    .restart local v3    # "basey":I
    .restart local v7    # "curDx":F
    .restart local v8    # "curDy":F
    .restart local v11    # "hyp":F
    .restart local v13    # "velocity":F
    .restart local v14    # "velocityX":F
    .restart local v15    # "velocityY":F
    :cond_4
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-float v4, v4

    div-float/2addr v4, v14

    float-to-int v9, v4

    goto :goto_2

    .line 1103
    .restart local v9    # "durationX":I
    :cond_5
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-float v4, v4

    div-float/2addr v4, v15

    float-to-int v10, v4

    goto :goto_3

    .line 1106
    .end local v7    # "curDx":F
    .end local v8    # "curDy":F
    .end local v9    # "durationX":I
    .end local v11    # "hyp":F
    .end local v13    # "velocity":F
    .end local v14    # "velocityX":F
    .end local v15    # "velocityY":F
    :cond_6
    if-nez p4, :cond_2

    mul-int v4, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/pano/widget/ScrollController;->getScrollDuration(I)I

    move-result p4

    goto :goto_4
.end method

.method public final startScrollByMain(IIZI)V
    .locals 3
    .param p1, "deltaMain"    # I
    .param p2, "deltaSecond"    # I
    .param p3, "easeFling"    # Z
    .param p4, "duration"    # I

    .prologue
    .line 1126
    iget v2, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    if-nez v2, :cond_0

    .line 1127
    move v0, p1

    .line 1128
    .local v0, "dx":I
    move v1, p2

    .line 1133
    .local v1, "dy":I
    :goto_0
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/google/android/pano/widget/ScrollController;->startScroll(IIZI)V

    .line 1134
    return-void

    .line 1130
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :cond_0
    move v0, p2

    .line 1131
    .restart local v0    # "dx":I
    move v1, p1

    .restart local v1    # "dy":I
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1254
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "horizontal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "vertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
