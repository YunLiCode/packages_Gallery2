.class Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;
.super Landroid/os/AsyncTask;
.source "PhotoTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dreams/phototable/PhotoTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoLaunchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOptions:Landroid/graphics/BitmapFactory$Options;

.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoTable;


# direct methods
.method public constructor <init>(Lcom/android/dreams/phototable/PhotoTable;)V
    .locals 2

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 544
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 545
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const v1, 0x8000

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 546
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/view/View;
    .locals 7
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 550
    const-string v1, "load a new photo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PhotoTable;->access$100(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    .line 552
    .local v0, "table":Lcom/android/dreams/phototable/PhotoTable;
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSource;
    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoTable;->access$500(Lcom/android/dreams/phototable/PhotoTable;)Lcom/android/dreams/phototable/PhotoSource;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mLongSide:I
    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoTable;->access$300(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v5

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mShortSide:I
    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoTable;->access$400(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/dreams/phototable/PhotoSource;->next(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v3

    # invokes: Lcom/android/dreams/phototable/PhotoTable;->applyFrame(Lcom/android/dreams/phototable/PhotoTable;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)Landroid/view/View;
    invoke-static {v1, v2, v3}, Lcom/android/dreams/phototable/PhotoTable;->access$600(Lcom/android/dreams/phototable/PhotoTable;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 540
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->doInBackground([Ljava/lang/Void;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Landroid/view/View;)V
    .locals 6
    .param p1, "photo"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    const/4 v5, 0x0

    .line 559
    if-eqz p1, :cond_4

    .line 560
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    .line 562
    .local v1, "table":Lcom/android/dreams/phototable/PhotoTable;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Lcom/android/dreams/phototable/PhotoTable;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    invoke-virtual {v1}, Lcom/android/dreams/phototable/PhotoTable;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 565
    const/4 v0, 0x0

    .local v0, "slot":I
    :goto_0
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;
    invoke-static {v3}, Lcom/android/dreams/phototable/PhotoTable;->access$700(Lcom/android/dreams/phototable/PhotoTable;)[Landroid/view/View;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 566
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;
    invoke-static {v3}, Lcom/android/dreams/phototable/PhotoTable;->access$700(Lcom/android/dreams/phototable/PhotoTable;)[Landroid/view/View;

    move-result-object v3

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 567
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;
    invoke-static {v3}, Lcom/android/dreams/phototable/PhotoTable;->access$700(Lcom/android/dreams/phototable/PhotoTable;)[Landroid/view/View;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/android/dreams/phototable/PhotoTable;->moveToTopOfPile(Landroid/view/View;)V

    .line 565
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {v1}, Lcom/android/dreams/phototable/PhotoTable;->getSelection()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/dreams/phototable/PhotoTable;->moveToTopOfPile(Landroid/view/View;)V

    .line 573
    .end local v0    # "slot":I
    :cond_2
    const-string v3, "drop it"

    new-array v4, v5, [Ljava/lang/Object;

    # invokes: Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoTable;->access$100(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    # invokes: Lcom/android/dreams/phototable/PhotoTable;->throwOnTable(Landroid/view/View;)V
    invoke-static {v1, p1}, Lcom/android/dreams/phototable/PhotoTable;->access$1300(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)V

    .line 576
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/dreams/phototable/PhotoTable;->access$1400(Lcom/android/dreams/phototable/PhotoTable;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mTableCapacity:I
    invoke-static {v4}, Lcom/android/dreams/phototable/PhotoTable;->access$1500(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 577
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/dreams/phototable/PhotoTable;->access$1400(Lcom/android/dreams/phototable/PhotoTable;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mRedealCount:I
    invoke-static {v4}, Lcom/android/dreams/phototable/PhotoTable;->access$1600(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 578
    .local v2, "targetSize":I
    :goto_1
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/dreams/phototable/PhotoTable;->access$1400(Lcom/android/dreams/phototable/PhotoTable;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 579
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/dreams/phototable/PhotoTable;->access$1400(Lcom/android/dreams/phototable/PhotoTable;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3, v5}, Lcom/android/dreams/phototable/PhotoTable;->fadeAway(Landroid/view/View;Z)V

    goto :goto_1

    .line 583
    .end local v2    # "targetSize":I
    :cond_3
    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoTable;->access$1400(Lcom/android/dreams/phototable/PhotoTable;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mTableCapacity:I
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoTable;->access$1500(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 584
    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mFastDropPeriod:I
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoTable;->access$1700(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/dreams/phototable/PhotoTable;->scheduleNext(I)V

    .line 587
    .end local v1    # "table":Lcom/android/dreams/phototable/PhotoTable;
    :cond_4
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 540
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->onPostExecute(Landroid/view/View;)V

    return-void
.end method
