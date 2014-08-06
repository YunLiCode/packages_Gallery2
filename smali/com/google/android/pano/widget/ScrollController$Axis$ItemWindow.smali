.class public Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;
.super Ljava/lang/Object;
.source "ScrollController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollController$Axis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;
    }
.end annotation


# instance fields
.field private items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

.field private mActualCount:I

.field private mCount:I

.field private mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 267
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->setCount(I)V

    .line 269
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;

    .prologue
    .line 250
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    return v0
.end method

.method private moveLeft()Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .locals 5

    .prologue
    .line 468
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    iget v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    add-int/lit8 v3, v3, 0x1

    aget-object v1, v2, v3

    .line 469
    .local v1, "item":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    add-int/lit8 v0, v2, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 470
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 469
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 472
    :cond_0
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 473
    return-object v1
.end method

.method private moveRight()Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .locals 5

    .prologue
    .line 458
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 459
    .local v1, "item":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    if-gt v0, v2, :cond_0

    .line 460
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    iget v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    add-int/lit8 v3, v3, 0x1

    aput-object v1, v2, v3

    .line 463
    return-object v1
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mCount:I

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->setCount(I)V

    .line 281
    return-void
.end method

.method public final fillWindowIfNeeded()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 413
    invoke-virtual {p0, v0, v0}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->fillWindowIfNeeded(II)V

    .line 414
    return-void
.end method

.method public final fillWindowIfNeeded(II)V
    .locals 18
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->isFilled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    const/4 v1, 0x0

    .line 358
    .local v1, "addingHighItems":I
    const/4 v2, 0x0

    .line 360
    .local v2, "addingLowItems":I
    const/4 v12, 0x0

    .line 361
    .local v12, "usingSpecific":Z
    if-ltz p2, :cond_4

    if-ltz p1, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    # getter for: Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mIndex:I
    invoke-static {v14}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->access$000(Lcom/google/android/pano/widget/ScrollController$Axis$Item;)I

    move-result v14

    sub-int v14, v14, p1

    invoke-interface {v13, v14}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;->isItemAvailable(I)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    aget-object v14, v14, v15

    # getter for: Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mIndex:I
    invoke-static {v14}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->access$000(Lcom/google/android/pano/widget/ScrollController$Axis$Item;)I

    move-result v14

    add-int v14, v14, p2

    invoke-interface {v13, v14}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;->isItemAvailable(I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 364
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    # getter for: Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mIndex:I
    invoke-static {v13}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->access$000(Lcom/google/android/pano/widget/ScrollController$Axis$Item;)I

    move-result v13

    sub-int v13, v13, p1

    add-int/lit8 v10, v13, -0x1

    .line 365
    .local v10, "lowItemIndex":I
    move/from16 v2, p1

    .line 366
    move/from16 v1, p2

    .line 391
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    .line 394
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    aget-object v13, v13, v14

    # getter for: Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mIndex:I
    invoke-static {v13}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->access$000(Lcom/google/android/pano/widget/ScrollController$Axis$Item;)I

    move-result v13

    add-int/lit8 v4, v13, 0x1

    .line 396
    .local v4, "highItemIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    add-int/lit8 v16, v2, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    move/from16 v17, v0

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v2, :cond_8

    .line 398
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    add-int/lit8 v14, v6, 0x1

    new-instance v15, Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    invoke-direct {v15}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;-><init>()V

    aput-object v15, v13, v14

    .line 397
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 369
    .end local v4    # "highItemIndex":I
    .end local v6    # "i":I
    .end local v10    # "lowItemIndex":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    aget-object v13, v13, v14

    # getter for: Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mIndex:I
    invoke-static {v13}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->access$000(Lcom/google/android/pano/widget/ScrollController$Axis$Item;)I

    move-result v13

    add-int/lit8 v4, v13, 0x1

    .line 370
    .restart local v4    # "highItemIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    # getter for: Lcom/google/android/pano/widget/ScrollController$Axis$Item;->mIndex:I
    invoke-static {v13}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->access$000(Lcom/google/android/pano/widget/ScrollController$Axis$Item;)I

    move-result v13

    add-int/lit8 v10, v13, -0x1

    .line 373
    .restart local v10    # "lowItemIndex":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    invoke-interface {v13, v4}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;->isItemAvailable(I)Z

    move-result v3

    .line 374
    .local v3, "highAvail":Z
    if-eqz v3, :cond_6

    .line 375
    add-int/lit8 v1, v1, 0x1

    .line 376
    add-int/lit8 v4, v4, 0x1

    .line 377
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    add-int/2addr v13, v1

    add-int/2addr v13, v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mCount:I

    if-eq v13, v14, :cond_2

    .line 381
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    invoke-interface {v13, v10}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;->isItemAvailable(I)Z

    move-result v9

    .line 382
    .local v9, "lowAvail":Z
    if-eqz v9, :cond_7

    .line 383
    add-int/lit8 v2, v2, 0x1

    .line 384
    add-int/lit8 v10, v10, -0x1

    .line 385
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    add-int/2addr v13, v1

    add-int/2addr v13, v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mCount:I

    if-eq v13, v14, :cond_2

    .line 389
    :cond_7
    if-nez v3, :cond_5

    if-nez v9, :cond_5

    goto/16 :goto_1

    .line 401
    .end local v3    # "highAvail":Z
    .end local v9    # "lowAvail":Z
    .restart local v6    # "i":I
    :cond_8
    const/4 v6, 0x0

    move v11, v10

    .end local v10    # "lowItemIndex":I
    .local v11, "lowItemIndex":I
    :goto_3
    if-gt v6, v2, :cond_9

    .line 402
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "lowItemIndex":I
    .restart local v10    # "lowItemIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    aget-object v14, v14, v6

    invoke-interface {v13, v11, v14}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;->fillItem(ILcom/google/android/pano/widget/ScrollController$Axis$Item;)V

    .line 401
    add-int/lit8 v6, v6, 0x1

    move v11, v10

    .end local v10    # "lowItemIndex":I
    .restart local v11    # "lowItemIndex":I
    goto :goto_3

    .line 405
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    add-int/lit8 v13, v13, 0x1

    add-int v7, v13, v2

    .line 406
    .local v7, "idx":I
    const/4 v6, 0x0

    move v8, v7

    .end local v7    # "idx":I
    .local v8, "idx":I
    move v5, v4

    .end local v4    # "highItemIndex":I
    .local v5, "highItemIndex":I
    :goto_4
    if-gt v6, v1, :cond_a

    .line 407
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "highItemIndex":I
    .restart local v4    # "highItemIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "idx":I
    .restart local v7    # "idx":I
    aget-object v14, v14, v8

    invoke-interface {v13, v5, v14}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;->fillItem(ILcom/google/android/pano/widget/ScrollController$Axis$Item;)V

    .line 406
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "idx":I
    .restart local v8    # "idx":I
    move v5, v4

    .end local v4    # "highItemIndex":I
    .restart local v5    # "highItemIndex":I
    goto :goto_4

    .line 409
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    add-int/2addr v13, v2

    add-int/2addr v13, v1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    goto/16 :goto_0
.end method

.method public final getActualCount()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    return v0
.end method

.method public final getFirstItem()Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->getItem(I)Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-result-object v0

    return-object v0
.end method

.method public final getItem(I)Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 321
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    if-lt p1, v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getItemAfterHigh()Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getItemBeforeLow()Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getLastItem()Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->getItem(I)Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-result-object v0

    return-object v0
.end method

.method public final init(I)V
    .locals 5
    .param p1, "centerIndex"    # I

    .prologue
    .line 339
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    invoke-interface {v3, p1}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;->isItemAvailable(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 347
    :cond_0
    return-void

    .line 342
    :cond_1
    const/4 v3, 0x1

    iput v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    .line 343
    add-int/lit8 v1, p1, -0x1

    .line 344
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v1

    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 345
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    aget-object v4, v4, v0

    invoke-interface {v3, v2, v4}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;->fillItem(ILcom/google/android/pano/widget/ScrollController$Axis$Item;)V

    .line 344
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0
.end method

.method public final isFilled()Z
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isValid()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 284
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 285
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 287
    :cond_0
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mCount:I

    .line 289
    add-int/lit8 v1, p1, 0x2

    new-array v1, v1, [Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    new-instance v2, Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    invoke-direct {v2}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;-><init>()V

    aput-object v2, v1, v0

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    .line 294
    return-void
.end method

.method public final setProvider(Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;)V
    .locals 0
    .param p1, "provider"    # Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    .line 273
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 479
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mActualCount:I

    add-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->items:[Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    :cond_0
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final updateScrollCenter(I)V
    .locals 8
    .param p1, "scrollCenter"    # I

    .prologue
    const/4 v6, 0x0

    .line 420
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    if-nez v5, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->fillWindowIfNeeded()V

    .line 424
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->getItemBeforeLow()Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-result-object v3

    .line 425
    .local v3, "lowItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->getItemAfterHigh()Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-result-object v1

    .line 426
    .local v1, "highItem":Lcom/google/android/pano/widget/ScrollController$Axis$Item;
    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getCenter()I

    move-result v5

    if-ge v5, p1, :cond_3

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getCenter()I

    move-result v5

    if-lt p1, v5, :cond_0

    .line 430
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->isValid()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getLow()I

    move-result v5

    if-ge v5, p1, :cond_4

    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getCenter()I

    move-result v5

    if-gt p1, v5, :cond_4

    .line 432
    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getIndex()I

    move-result v4

    .line 433
    .local v4, "lowItemIndex":I
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    add-int/lit8 v6, v4, -0x1

    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->moveLeft()Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;->fillItem(ILcom/google/android/pano/widget/ScrollController$Axis$Item;)V

    goto :goto_0

    .line 436
    .end local v4    # "lowItemIndex":I
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->isValid()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getCenter()I

    move-result v5

    if-gt v5, p1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getHigh()I

    move-result v5

    if-gt p1, v5, :cond_5

    .line 438
    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getIndex()I

    move-result v2

    .line 439
    .local v2, "highItemIndex":I
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    add-int/lit8 v6, v2, 0x1

    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->moveRight()Lcom/google/android/pano/widget/ScrollController$Axis$Item;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;->fillItem(ILcom/google/android/pano/widget/ScrollController$Axis$Item;)V

    goto :goto_0

    .line 443
    .end local v2    # "highItemIndex":I
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->getActualCount()I

    move-result v0

    .line 444
    .local v0, "filled":I
    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->isValid()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getHigh()I

    move-result v5

    if-le p1, v5, :cond_6

    .line 445
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    invoke-interface {v5, p1}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;->getIndexForScrollCenter(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->init(I)V

    .line 446
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5, v6}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->fillWindowIfNeeded(II)V

    goto/16 :goto_0

    .line 447
    :cond_6
    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->isValid()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis$Item;->getHigh()I

    move-result v5

    if-ge p1, v5, :cond_7

    .line 448
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    invoke-interface {v5, p1}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;->getIndexForScrollCenter(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->init(I)V

    .line 449
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v6, v5}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->fillWindowIfNeeded(II)V

    goto/16 :goto_0

    .line 451
    :cond_7
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->mProvider:Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;

    invoke-interface {v5, p1}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow$Provider;->getIndexForScrollCenter(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->init(I)V

    .line 452
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis$ItemWindow;->fillWindowIfNeeded()V

    goto/16 :goto_0
.end method
