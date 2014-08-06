.class Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;
.super Ljava/lang/Object;
.source "MtpDeviceIndex.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ingest/MtpDeviceIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndexRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;
    }
.end annotation


# instance fields
.field private mBuckets:[Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;

.field private mBucketsTemp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/gallery3d/ingest/SimpleDate;",
            "Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;",
            ">;"
        }
    .end annotation
.end field

.field private mDateInstance:Lcom/android/gallery3d/ingest/SimpleDate;

.field private mDevice:Landroid/mtp/MtpDevice;

.field private mMtpObjects:[Landroid/mtp/MtpObjectInfo;

.field private mNumObjects:I

.field private mUnifiedLookupIndex:[I

.field final synthetic this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ingest/MtpDeviceIndex;Landroid/mtp/MtpDevice;)V
    .locals 1
    .param p2, "device"    # Landroid/mtp/MtpDevice;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mNumObjects:I

    .line 540
    new-instance v0, Lcom/android/gallery3d/ingest/SimpleDate;

    invoke-direct {v0}, Lcom/android/gallery3d/ingest/SimpleDate;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDateInstance:Lcom/android/gallery3d/ingest/SimpleDate;

    .line 409
    iput-object p2, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDevice:Landroid/mtp/MtpDevice;

    .line 410
    return-void
.end method

.method private addObject(Landroid/mtp/MtpObjectInfo;)V
    .locals 4
    .param p1, "objectInfo"    # Landroid/mtp/MtpObjectInfo;

    .prologue
    .line 543
    iget v1, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mNumObjects:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mNumObjects:I

    .line 544
    iget-object v1, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDateInstance:Lcom/android/gallery3d/ingest/SimpleDate;

    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getDateCreated()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ingest/SimpleDate;->setTimestamp(J)V

    .line 545
    iget-object v1, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBucketsTemp:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDateInstance:Lcom/android/gallery3d/ingest/SimpleDate;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    .line 546
    .local v0, "bucket":Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    if-nez v0, :cond_1

    .line 547
    new-instance v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    .end local v0    # "bucket":Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    iget-object v1, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    iget-object v2, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDateInstance:Lcom/android/gallery3d/ingest/SimpleDate;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;-><init>(Lcom/android/gallery3d/ingest/MtpDeviceIndex;Lcom/android/gallery3d/ingest/SimpleDate;Landroid/mtp/MtpObjectInfo;)V

    .line 548
    .restart local v0    # "bucket":Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    iget-object v1, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBucketsTemp:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDateInstance:Lcom/android/gallery3d/ingest/SimpleDate;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    new-instance v1, Lcom/android/gallery3d/ingest/SimpleDate;

    invoke-direct {v1}, Lcom/android/gallery3d/ingest/SimpleDate;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDateInstance:Lcom/android/gallery3d/ingest/SimpleDate;

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v1, v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->tempElementsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    iget-object v1, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    # getter for: Lcom/android/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    invoke-static {v1}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->access$500(Lcom/android/gallery3d/ingest/MtpDeviceIndex;)Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    # getter for: Lcom/android/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    invoke-static {v1}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->access$500(Lcom/android/gallery3d/ingest/MtpDeviceIndex;)Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mNumObjects:I

    invoke-interface {v1, p1, v2}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;->onObjectIndexed(Landroid/mtp/MtpObjectInfo;I)V

    goto :goto_0
.end method

.method private buildLookupIndex()V
    .locals 9

    .prologue
    .line 432
    iget-object v7, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBuckets:[Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    array-length v6, v7

    .line 433
    .local v6, "numBuckets":I
    iget v7, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mNumObjects:I

    add-int/2addr v7, v6

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mUnifiedLookupIndex:[I

    .line 434
    const/4 v2, 0x0

    .line 437
    .local v2, "currentUnifiedIndexEntry":I
    iget v7, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mNumObjects:I

    new-array v7, v7, [Landroid/mtp/MtpObjectInfo;

    iput-object v7, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    .line 438
    const/4 v1, 0x0

    .line 439
    .local v1, "currentItemsEntry":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 440
    iget-object v7, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBuckets:[Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    aget-object v0, v7, v3

    .line 441
    .local v0, "bucket":Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    iget-object v7, v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->tempElementsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v2

    add-int/lit8 v5, v7, 0x1

    .line 442
    .local v5, "nextUnifiedEntry":I
    iget-object v7, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mUnifiedLookupIndex:[I

    invoke-static {v7, v2, v5, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 443
    iput v2, v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->unifiedStartIndex:I

    .line 444
    add-int/lit8 v7, v5, -0x1

    iput v7, v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->unifiedEndIndex:I

    .line 445
    move v2, v5

    .line 447
    iput v1, v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->itemsStartIndex:I

    .line 448
    iget-object v7, v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->tempElementsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iput v7, v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->numItems:I

    .line 449
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget v7, v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->numItems:I

    if-ge v4, v7, :cond_0

    .line 450
    iget-object v8, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    iget-object v7, v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->tempElementsList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/mtp/MtpObjectInfo;

    aput-object v7, v8, v1

    .line 451
    add-int/lit8 v1, v1, 0x1

    .line 449
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 453
    :cond_0
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->tempElementsList:Ljava/util/List;

    .line 439
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 455
    .end local v0    # "bucket":Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    .end local v4    # "j":I
    .end local v5    # "nextUnifiedEntry":I
    :cond_1
    return-void
.end method

.method private copyResults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 458
    iget-object v0, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    iget-object v1, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mUnifiedLookupIndex:[I

    # setter for: Lcom/android/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I
    invoke-static {v0, v1}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->access$102(Lcom/android/gallery3d/ingest/MtpDeviceIndex;[I)[I

    .line 459
    iget-object v0, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    iget-object v1, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    # setter for: Lcom/android/gallery3d/ingest/MtpDeviceIndex;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;
    invoke-static {v0, v1}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->access$202(Lcom/android/gallery3d/ingest/MtpDeviceIndex;[Landroid/mtp/MtpObjectInfo;)[Landroid/mtp/MtpObjectInfo;

    .line 460
    iget-object v0, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    iget-object v1, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBuckets:[Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    # setter for: Lcom/android/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    invoke-static {v0, v1}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->access$302(Lcom/android/gallery3d/ingest/MtpDeviceIndex;[Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;)[Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    .line 461
    iput-object v2, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mUnifiedLookupIndex:[I

    .line 462
    iput-object v2, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    .line 463
    iput-object v2, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBuckets:[Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    .line 464
    return-void
.end method

.method private indexDevice()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;
        }
    .end annotation

    .prologue
    .line 481
    iget-object v13, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    monitor-enter v13

    .line 482
    :try_start_0
    iget-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    sget-object v14, Lcom/android/gallery3d/ingest/MtpDeviceIndex$Progress;->Started:Lcom/android/gallery3d/ingest/MtpDeviceIndex$Progress;

    # setter for: Lcom/android/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/android/gallery3d/ingest/MtpDeviceIndex$Progress;
    invoke-static {v12, v14}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->access$602(Lcom/android/gallery3d/ingest/MtpDeviceIndex;Lcom/android/gallery3d/ingest/MtpDeviceIndex$Progress;)Lcom/android/gallery3d/ingest/MtpDeviceIndex$Progress;

    .line 483
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBucketsTemp:Ljava/util/Map;

    .line 485
    iget-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDevice:Landroid/mtp/MtpDevice;

    invoke-virtual {v12}, Landroid/mtp/MtpDevice;->getStorageIds()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[I
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_5

    aget v10, v0, v4

    .line 486
    .local v10, "storageId":I
    iget-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDevice:Landroid/mtp/MtpDevice;

    iget-object v13, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v13}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->getDevice()Landroid/mtp/MtpDevice;

    move-result-object v13

    if-eq v12, v13, :cond_0

    new-instance v12, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;-><init>(Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;Lcom/android/gallery3d/ingest/MtpDeviceIndex$1;)V

    throw v12

    .line 483
    .end local v4    # "i$":I
    .end local v10    # "storageId":I
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 487
    .restart local v4    # "i$":I
    .restart local v10    # "storageId":I
    :cond_0
    new-instance v9, Ljava/util/Stack;

    invoke-direct {v9}, Ljava/util/Stack;-><init>()V

    .line 488
    .local v9, "pendingDirectories":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Integer;>;"
    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 489
    .end local v4    # "i$":I
    :cond_1
    invoke-virtual {v9}, Ljava/util/Stack;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 490
    iget-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDevice:Landroid/mtp/MtpDevice;

    iget-object v13, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v13}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->getDevice()Landroid/mtp/MtpDevice;

    move-result-object v13

    if-eq v12, v13, :cond_2

    new-instance v12, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;-><init>(Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;Lcom/android/gallery3d/ingest/MtpDeviceIndex$1;)V

    throw v12

    .line 491
    :cond_2
    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 492
    .local v2, "dirHandle":I
    iget-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDevice:Landroid/mtp/MtpDevice;

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13, v2}, Landroid/mtp/MtpDevice;->getObjectHandles(III)[I

    move-result-object v1

    .local v1, "arr$":[I
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_1

    aget v7, v1, v3

    .line 493
    .local v7, "objectHandle":I
    iget-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDevice:Landroid/mtp/MtpDevice;

    invoke-virtual {v12, v7}, Landroid/mtp/MtpDevice;->getObjectInfo(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v8

    .line 494
    .local v8, "objectInfo":Landroid/mtp/MtpObjectInfo;
    if-nez v8, :cond_3

    new-instance v12, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;-><init>(Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;Lcom/android/gallery3d/ingest/MtpDeviceIndex$1;)V

    throw v12

    .line 495
    :cond_3
    invoke-virtual {v8}, Landroid/mtp/MtpObjectInfo;->getFormat()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 492
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 498
    :sswitch_0
    invoke-direct {p0, v8}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->addObject(Landroid/mtp/MtpObjectInfo;)V

    goto :goto_2

    .line 501
    :sswitch_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 485
    .end local v1    # "arr$":[I
    .end local v2    # "dirHandle":I
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "objectHandle":I
    .end local v8    # "objectInfo":Landroid/mtp/MtpObjectInfo;
    :cond_4
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 507
    .end local v9    # "pendingDirectories":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Integer;>;"
    .end local v10    # "storageId":I
    :cond_5
    iget-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBucketsTemp:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    .line 508
    .local v11, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;>;"
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBucketsTemp:Ljava/util/Map;

    .line 509
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v12

    new-array v12, v12, [Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    invoke-interface {v11, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    iput-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBuckets:[Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    .line 510
    const/4 v11, 0x0

    .line 511
    iget-object v13, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    monitor-enter v13

    .line 512
    :try_start_2
    iget-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    sget-object v14, Lcom/android/gallery3d/ingest/MtpDeviceIndex$Progress;->Sorting:Lcom/android/gallery3d/ingest/MtpDeviceIndex$Progress;

    # setter for: Lcom/android/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/android/gallery3d/ingest/MtpDeviceIndex$Progress;
    invoke-static {v12, v14}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->access$602(Lcom/android/gallery3d/ingest/MtpDeviceIndex;Lcom/android/gallery3d/ingest/MtpDeviceIndex$Progress;)Lcom/android/gallery3d/ingest/MtpDeviceIndex$Progress;

    .line 513
    iget-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    # getter for: Lcom/android/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    invoke-static {v12}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->access$500(Lcom/android/gallery3d/ingest/MtpDeviceIndex;)Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 514
    iget-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    # getter for: Lcom/android/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    invoke-static {v12}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->access$500(Lcom/android/gallery3d/ingest/MtpDeviceIndex;)Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;->onSorting()V

    .line 516
    :cond_6
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 517
    invoke-direct {p0}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->sortAll()V

    .line 518
    invoke-direct {p0}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->buildLookupIndex()V

    .line 519
    iget-object v13, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    monitor-enter v13

    .line 520
    :try_start_3
    iget-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDevice:Landroid/mtp/MtpDevice;

    iget-object v14, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v14}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->getDevice()Landroid/mtp/MtpDevice;

    move-result-object v14

    if-eq v12, v14, :cond_7

    new-instance v12, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;

    const/4 v14, 0x0

    invoke-direct {v12, p0, v14}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;-><init>(Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;Lcom/android/gallery3d/ingest/MtpDeviceIndex$1;)V

    throw v12

    .line 537
    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v12

    .line 516
    :catchall_2
    move-exception v12

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v12

    .line 521
    :cond_7
    :try_start_5
    invoke-direct {p0}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->copyResults()V

    .line 531
    iget-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    # invokes: Lcom/android/gallery3d/ingest/MtpDeviceIndex;->computeReversedBuckets()V
    invoke-static {v12}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->access$800(Lcom/android/gallery3d/ingest/MtpDeviceIndex;)V

    .line 533
    iget-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    sget-object v14, Lcom/android/gallery3d/ingest/MtpDeviceIndex$Progress;->Finished:Lcom/android/gallery3d/ingest/MtpDeviceIndex$Progress;

    # setter for: Lcom/android/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/android/gallery3d/ingest/MtpDeviceIndex$Progress;
    invoke-static {v12, v14}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->access$602(Lcom/android/gallery3d/ingest/MtpDeviceIndex;Lcom/android/gallery3d/ingest/MtpDeviceIndex$Progress;)Lcom/android/gallery3d/ingest/MtpDeviceIndex$Progress;

    .line 534
    iget-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    # getter for: Lcom/android/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    invoke-static {v12}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->access$500(Lcom/android/gallery3d/ingest/MtpDeviceIndex;)Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 535
    iget-object v12, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    # getter for: Lcom/android/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    invoke-static {v12}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->access$500(Lcom/android/gallery3d/ingest/MtpDeviceIndex;)Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;->onIndexFinish()V

    .line 537
    :cond_8
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 538
    return-void

    .line 495
    nop

    :sswitch_data_0
    .sparse-switch
        0x3001 -> :sswitch_1
        0x3801 -> :sswitch_0
        0x3808 -> :sswitch_0
    .end sparse-switch
.end method

.method private sortAll()V
    .locals 5

    .prologue
    .line 561
    iget-object v4, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBuckets:[Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 562
    iget-object v0, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBuckets:[Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    .local v0, "arr$":[Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 563
    .local v1, "bucket":Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    # getter for: Lcom/android/gallery3d/ingest/MtpDeviceIndex;->sMtpObjectComparator:Lcom/android/gallery3d/ingest/MtpDeviceIndex$MtpObjectTimestampComparator;
    invoke-static {}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->access$900()Lcom/android/gallery3d/ingest/MtpDeviceIndex$MtpObjectTimestampComparator;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->sortElements(Ljava/util/Comparator;)V

    .line 562
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 565
    .end local v1    # "bucket":Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 469
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->indexDevice()V
    :try_end_0
    .catch Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;
    iget-object v2, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    monitor-enter v2

    .line 472
    :try_start_1
    iget-object v1, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    # invokes: Lcom/android/gallery3d/ingest/MtpDeviceIndex;->resetState()V
    invoke-static {v1}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->access$400(Lcom/android/gallery3d/ingest/MtpDeviceIndex;)V

    .line 473
    iget-object v1, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    # getter for: Lcom/android/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    invoke-static {v1}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->access$500(Lcom/android/gallery3d/ingest/MtpDeviceIndex;)Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    # getter for: Lcom/android/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    invoke-static {v1}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->access$500(Lcom/android/gallery3d/ingest/MtpDeviceIndex;)Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$ProgressListener;->onIndexFinish()V

    .line 476
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
