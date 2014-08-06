.class Lcom/google/android/pano/widget/ScrollAdapterView$3;
.super Ljava/lang/Object;
.source "ScrollAdapterView.java"

# interfaces
.implements Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/ScrollAdapterView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0

    .prologue
    .line 1365
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillItem(ILcom/google/android/pano/widget/ScrollController$Axis$Item;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    .prologue
    const/4 v4, 0x0

    .line 1373
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I
    invoke-static {v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2400(Lcom/google/android/pano/widget/ScrollAdapterView;)I

    move-result v3

    mul-int v0, p1, v3

    .line 1374
    .local v0, "idx":I
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I
    invoke-static {v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2300(Lcom/google/android/pano/widget/ScrollAdapterView;)I

    move-result v3

    if-ge v3, v0, :cond_0

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I
    invoke-static {v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2500(Lcom/google/android/pano/widget/ScrollAdapterView;)I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 1375
    :cond_0
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I
    invoke-static {v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2400(Lcom/google/android/pano/widget/ScrollAdapterView;)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v3, -0x1

    .line 1376
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I
    invoke-static {v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2300(Lcom/google/android/pano/widget/ScrollAdapterView;)I

    move-result v3

    if-ge v3, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I
    invoke-static {v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2500(Lcom/google/android/pano/widget/ScrollAdapterView;)I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 1377
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {p2, v3, v4, v4}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->setValue(III)V

    .line 1385
    :goto_0
    return-void

    .line 1381
    :cond_2
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v3, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getExpandableView(I)Landroid/view/View;

    move-result-object v2

    .line 1382
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I
    invoke-static {v3, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2600(Lcom/google/android/pano/widget/ScrollAdapterView;Landroid/view/View;)I

    move-result v1

    .line 1383
    .local v1, "scrollCenter":I
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollLow(ILandroid/view/View;)I
    invoke-static {v3, v1, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2700(Lcom/google/android/pano/widget/ScrollAdapterView;ILandroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollHigh(ILandroid/view/View;)I
    invoke-static {v4, v1, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2800(Lcom/google/android/pano/widget/ScrollAdapterView;ILandroid/view/View;)I

    move-result v4

    invoke-virtual {p2, p1, v3, v4}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->setValue(III)V

    goto :goto_0
.end method

.method public getIndexForScrollCenter(I)I
    .locals 4
    .param p1, "scrollCenter"    # I

    .prologue
    .line 1388
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;
    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1400(Lcom/google/android/pano/widget/ScrollAdapterView;)Lcom/google/android/pano/widget/ScrollController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v2

    const/4 v3, 0x0

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->findViewIndexContainingScrollCenter(IIZ)I
    invoke-static {v1, p1, v2, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2900(Lcom/google/android/pano/widget/ScrollAdapterView;IIZ)I

    move-result v0

    .line 1390
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1391
    const/4 v1, -0x1

    .line 1393
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I
    invoke-static {v1, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$000(Lcom/google/android/pano/widget/ScrollAdapterView;I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I
    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2400(Lcom/google/android/pano/widget/ScrollAdapterView;)I

    move-result v2

    div-int/2addr v1, v2

    goto :goto_0
.end method

.method public isItemAvailable(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I
    invoke-static {v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2300(Lcom/google/android/pano/widget/ScrollAdapterView;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2400(Lcom/google/android/pano/widget/ScrollAdapterView;)I

    move-result v1

    div-int/2addr v0, v1

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I
    invoke-static {v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2500(Lcom/google/android/pano/widget/ScrollAdapterView;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$2400(Lcom/google/android/pano/widget/ScrollAdapterView;)I

    move-result v1

    div-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
