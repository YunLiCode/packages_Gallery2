.class Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;
.super Landroid/os/AsyncTask;
.source "PhotoTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dreams/phototable/PhotoTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadNaturalSiblingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/Void;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mParent:Landroid/view/View;

.field private final mSlot:I

.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoTable;


# direct methods
.method public constructor <init>(Lcom/android/dreams/phototable/PhotoTable;I)V
    .locals 2
    .param p2, "slot"    # I

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 489
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 490
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const v1, 0x8000

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 491
    iput p2, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->mSlot:I

    .line 492
    return-void
.end method

.method static synthetic access$1000(Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;

    .prologue
    .line 483
    iget v0, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->mSlot:I

    return v0
.end method


# virtual methods
.method public varargs doInBackground([Landroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 496
    const-string v4, "load natural %s"

    new-array v5, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->mSlot:I

    if-ne v3, v6, :cond_0

    const-string v3, "next"

    :goto_0
    aput-object v3, v5, v7

    # invokes: Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v4, v5}, Lcom/android/dreams/phototable/PhotoTable;->access$100(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    .line 498
    .local v2, "table":Lcom/android/dreams/phototable/PhotoTable;
    aget-object v3, p1, v7

    iput-object v3, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->mParent:Landroid/view/View;

    .line 499
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->mParent:Landroid/view/View;

    # invokes: Lcom/android/dreams/phototable/PhotoTable;->getBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoTable;->access$200(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 501
    .local v0, "current":Landroid/graphics/Bitmap;
    iget v3, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->mSlot:I

    if-ne v3, v6, :cond_1

    .line 502
    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSource;
    invoke-static {v2}, Lcom/android/dreams/phototable/PhotoTable;->access$500(Lcom/android/dreams/phototable/PhotoTable;)Lcom/android/dreams/phototable/PhotoSource;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mLongSide:I
    invoke-static {v2}, Lcom/android/dreams/phototable/PhotoTable;->access$300(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v5

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mShortSide:I
    invoke-static {v2}, Lcom/android/dreams/phototable/PhotoTable;->access$400(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/dreams/phototable/PhotoSource;->naturalNext(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 508
    .local v1, "decodedPhoto":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    # invokes: Lcom/android/dreams/phototable/PhotoTable;->applyFrame(Lcom/android/dreams/phototable/PhotoTable;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)Landroid/view/View;
    invoke-static {v3, v4, v1}, Lcom/android/dreams/phototable/PhotoTable;->access$600(Lcom/android/dreams/phototable/PhotoTable;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 496
    .end local v0    # "current":Landroid/graphics/Bitmap;
    .end local v1    # "decodedPhoto":Landroid/graphics/Bitmap;
    .end local v2    # "table":Lcom/android/dreams/phototable/PhotoTable;
    :cond_0
    const-string v3, "previous"

    goto :goto_0

    .line 505
    .restart local v0    # "current":Landroid/graphics/Bitmap;
    .restart local v2    # "table":Lcom/android/dreams/phototable/PhotoTable;
    :cond_1
    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSource;
    invoke-static {v2}, Lcom/android/dreams/phototable/PhotoTable;->access$500(Lcom/android/dreams/phototable/PhotoTable;)Lcom/android/dreams/phototable/PhotoSource;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mLongSide:I
    invoke-static {v2}, Lcom/android/dreams/phototable/PhotoTable;->access$300(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v5

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mShortSide:I
    invoke-static {v2}, Lcom/android/dreams/phototable/PhotoTable;->access$400(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/dreams/phototable/PhotoSource;->naturalPrevious(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "decodedPhoto":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 483
    check-cast p1, [Landroid/view/View;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->doInBackground([Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Landroid/view/View;)V
    .locals 9
    .param p1, "photo"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    const/high16 v6, 0x40000000

    const/4 v5, 0x1

    .line 513
    if-eqz p1, :cond_3

    .line 514
    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v2}, Lcom/android/dreams/phototable/PhotoTable;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v2}, Lcom/android/dreams/phototable/PhotoTable;->getSelection()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->mParent:Landroid/view/View;

    if-ne v2, v3, :cond_2

    .line 515
    const-string v3, "natural %s being rendered"

    new-array v4, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->mSlot:I

    if-ne v2, v5, :cond_0

    const-string v2, "next"

    :goto_0
    aput-object v2, v4, v8

    # invokes: Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoTable;->access$100(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1, v3}, Lcom/android/dreams/phototable/PhotoTable;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mOnDeck:[Landroid/view/View;
    invoke-static {v2}, Lcom/android/dreams/phototable/PhotoTable;->access$700(Lcom/android/dreams/phototable/PhotoTable;)[Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->mSlot:I

    aput-object p1, v2, v3

    .line 519
    const v2, 0x7f0a001c

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v1, v2

    .line 520
    .local v1, "width":F
    const v2, 0x7f0a001b

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v0, v2

    .line 521
    .local v0, "height":F
    iget v2, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->mSlot:I

    if-nez v2, :cond_1

    const/high16 v2, -0x40000000

    mul-float/2addr v2, v1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setX(F)V

    .line 522
    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mHeight:I
    invoke-static {v2}, Lcom/android/dreams/phototable/PhotoTable;->access$900(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    div-float/2addr v2, v6

    invoke-virtual {p1, v2}, Landroid/view/View;->setY(F)V

    .line 523
    new-instance v2, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask$1;

    invoke-direct {v2, p0}, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask$1;-><init>(Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 537
    .end local v0    # "height":F
    .end local v1    # "width":F
    :goto_2
    return-void

    .line 515
    :cond_0
    const-string v2, "previous"

    goto :goto_0

    .line 521
    .restart local v0    # "height":F
    .restart local v1    # "width":F
    :cond_1
    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    # getter for: Lcom/android/dreams/phototable/PhotoTable;->mWidth:I
    invoke-static {v2}, Lcom/android/dreams/phototable/PhotoTable;->access$800(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v6, v1

    add-float/2addr v2, v3

    goto :goto_1

    .line 532
    .end local v0    # "height":F
    .end local v1    # "width":F
    :cond_2
    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    # invokes: Lcom/android/dreams/phototable/PhotoTable;->recycle(Landroid/view/View;)V
    invoke-static {v2, p1}, Lcom/android/dreams/phototable/PhotoTable;->access$1200(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)V

    goto :goto_2

    .line 535
    :cond_3
    const-string v3, "natural, %s was null!"

    new-array v4, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->mSlot:I

    if-ne v2, v5, :cond_4

    const-string v2, "next"

    :goto_3
    aput-object v2, v4, v8

    # invokes: Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoTable;->access$100(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const-string v2, "previous"

    goto :goto_3
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 483
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/PhotoTable$LoadNaturalSiblingTask;->onPostExecute(Landroid/view/View;)V

    return-void
.end method
