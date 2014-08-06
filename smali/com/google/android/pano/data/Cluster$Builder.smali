.class public Lcom/google/android/pano/data/Cluster$Builder;
.super Ljava/lang/Object;
.source "Cluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/data/Cluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBrowseItemsUri:Landroid/net/Uri;

.field private mCacheTimeMs:J

.field private mClusterItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/pano/data/Cluster$ClusterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayDescription:Ljava/lang/CharSequence;

.field private mDisplayName:Ljava/lang/CharSequence;

.field private mId:J

.field private mImageCropAllowed:Z

.field private mImportance:I

.field private mIntent:Landroid/content/Intent;

.field private mName:Ljava/lang/String;

.field private mNotificationText:Ljava/lang/String;

.field private mNotificationUri:Landroid/net/Uri;

.field private mVisibleCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 390
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/data/Cluster$Builder;->mClusterItems:Ljava/util/List;

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/pano/data/Cluster$Builder;->mImageCropAllowed:Z

    .line 393
    return-void
.end method


# virtual methods
.method public addItem(Landroid/net/Uri;)Lcom/google/android/pano/data/Cluster$Builder;
    .locals 2
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 451
    new-instance v0, Lcom/google/android/pano/data/Cluster$ClusterItem;

    invoke-direct {v0, p1}, Lcom/google/android/pano/data/Cluster$ClusterItem;-><init>(Landroid/net/Uri;)V

    .line 452
    .local v0, "item":Lcom/google/android/pano/data/Cluster$ClusterItem;
    iget-object v1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mClusterItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    return-object p0
.end method

.method public browseItemsUri(Landroid/net/Uri;)Lcom/google/android/pano/data/Cluster$Builder;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mBrowseItemsUri:Landroid/net/Uri;

    .line 447
    return-object p0
.end method

.method public build()Lcom/google/android/pano/data/Cluster;
    .locals 3

    .prologue
    .line 354
    new-instance v0, Lcom/google/android/pano/data/Cluster;

    invoke-direct {v0}, Lcom/google/android/pano/data/Cluster;-><init>()V

    .line 355
    .local v0, "cluster":Lcom/google/android/pano/data/Cluster;
    iget-wide v1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mId:J

    # setter for: Lcom/google/android/pano/data/Cluster;->mId:J
    invoke-static {v0, v1, v2}, Lcom/google/android/pano/data/Cluster;->access$302(Lcom/google/android/pano/data/Cluster;J)J

    .line 356
    iget-object v1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mName:Ljava/lang/String;

    # setter for: Lcom/google/android/pano/data/Cluster;->mName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/pano/data/Cluster;->access$402(Lcom/google/android/pano/data/Cluster;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    iget-object v1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mDisplayName:Ljava/lang/CharSequence;

    # setter for: Lcom/google/android/pano/data/Cluster;->mDisplayName:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/google/android/pano/data/Cluster;->access$502(Lcom/google/android/pano/data/Cluster;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 358
    iget-object v1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mDisplayDescription:Ljava/lang/CharSequence;

    # setter for: Lcom/google/android/pano/data/Cluster;->mDisplayDescription:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/google/android/pano/data/Cluster;->access$602(Lcom/google/android/pano/data/Cluster;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 359
    iget-object v1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mNotificationText:Ljava/lang/String;

    # setter for: Lcom/google/android/pano/data/Cluster;->mNotificationText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/pano/data/Cluster;->access$702(Lcom/google/android/pano/data/Cluster;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    iget v1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mImportance:I

    # setter for: Lcom/google/android/pano/data/Cluster;->mImportance:I
    invoke-static {v0, v1}, Lcom/google/android/pano/data/Cluster;->access$802(Lcom/google/android/pano/data/Cluster;I)I

    .line 361
    iget v1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mVisibleCount:I

    # setter for: Lcom/google/android/pano/data/Cluster;->mVisibleCount:I
    invoke-static {v0, v1}, Lcom/google/android/pano/data/Cluster;->access$902(Lcom/google/android/pano/data/Cluster;I)I

    .line 362
    iget-boolean v1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mImageCropAllowed:Z

    # setter for: Lcom/google/android/pano/data/Cluster;->mImageCropAllowed:Z
    invoke-static {v0, v1}, Lcom/google/android/pano/data/Cluster;->access$1002(Lcom/google/android/pano/data/Cluster;Z)Z

    .line 363
    iget-object v1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mIntent:Landroid/content/Intent;

    # setter for: Lcom/google/android/pano/data/Cluster;->mIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/google/android/pano/data/Cluster;->access$1102(Lcom/google/android/pano/data/Cluster;Landroid/content/Intent;)Landroid/content/Intent;

    .line 364
    iget-wide v1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mCacheTimeMs:J

    # setter for: Lcom/google/android/pano/data/Cluster;->mCacheTimeMs:J
    invoke-static {v0, v1, v2}, Lcom/google/android/pano/data/Cluster;->access$1202(Lcom/google/android/pano/data/Cluster;J)J

    .line 365
    iget-object v1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mIntent:Landroid/content/Intent;

    # setter for: Lcom/google/android/pano/data/Cluster;->mIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/google/android/pano/data/Cluster;->access$1102(Lcom/google/android/pano/data/Cluster;Landroid/content/Intent;)Landroid/content/Intent;

    .line 366
    # getter for: Lcom/google/android/pano/data/Cluster;->mClusterItems:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/pano/data/Cluster;->access$1300(Lcom/google/android/pano/data/Cluster;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/pano/data/Cluster$Builder;->mClusterItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 367
    iget-object v1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mBrowseItemsUri:Landroid/net/Uri;

    # setter for: Lcom/google/android/pano/data/Cluster;->mBrowseItemsUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/google/android/pano/data/Cluster;->access$1402(Lcom/google/android/pano/data/Cluster;Landroid/net/Uri;)Landroid/net/Uri;

    .line 368
    iget-object v1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mNotificationUri:Landroid/net/Uri;

    # setter for: Lcom/google/android/pano/data/Cluster;->mNotificationUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/google/android/pano/data/Cluster;->access$1502(Lcom/google/android/pano/data/Cluster;Landroid/net/Uri;)Landroid/net/Uri;

    .line 369
    return-object v0
.end method

.method public cacheTimeMs(J)Lcom/google/android/pano/data/Cluster$Builder;
    .locals 0
    .param p1, "cacheTimeMs"    # J

    .prologue
    .line 436
    iput-wide p1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mCacheTimeMs:J

    .line 437
    return-object p0
.end method

.method public displayDescription(Ljava/lang/CharSequence;)Lcom/google/android/pano/data/Cluster$Builder;
    .locals 0
    .param p1, "displayDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mDisplayDescription:Ljava/lang/CharSequence;

    .line 412
    return-object p0
.end method

.method public displayName(Ljava/lang/CharSequence;)Lcom/google/android/pano/data/Cluster$Builder;
    .locals 0
    .param p1, "displayName"    # Ljava/lang/CharSequence;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 407
    return-object p0
.end method

.method public id(J)Lcom/google/android/pano/data/Cluster$Builder;
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 396
    iput-wide p1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mId:J

    .line 397
    return-object p0
.end method

.method public imageCropAllowed(Z)Lcom/google/android/pano/data/Cluster$Builder;
    .locals 0
    .param p1, "allowed"    # Z

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mImageCropAllowed:Z

    .line 432
    return-object p0
.end method

.method public importance(I)Lcom/google/android/pano/data/Cluster$Builder;
    .locals 0
    .param p1, "importance"    # I

    .prologue
    .line 421
    iput p1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mImportance:I

    .line 422
    return-object p0
.end method

.method public intent(Landroid/content/Intent;)Lcom/google/android/pano/data/Cluster$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mIntent:Landroid/content/Intent;

    .line 442
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/google/android/pano/data/Cluster$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mName:Ljava/lang/String;

    .line 402
    return-object p0
.end method

.method public notificationText(Ljava/lang/String;)Lcom/google/android/pano/data/Cluster$Builder;
    .locals 0
    .param p1, "notificationText"    # Ljava/lang/String;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mNotificationText:Ljava/lang/String;

    .line 417
    return-object p0
.end method

.method public notificationUri(Landroid/net/Uri;)Lcom/google/android/pano/data/Cluster$Builder;
    .locals 0
    .param p1, "notificationUri"    # Landroid/net/Uri;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mNotificationUri:Landroid/net/Uri;

    .line 463
    return-object p0
.end method

.method public visibleCount(I)Lcom/google/android/pano/data/Cluster$Builder;
    .locals 0
    .param p1, "visibleCount"    # I

    .prologue
    .line 426
    iput p1, p0, Lcom/google/android/pano/data/Cluster$Builder;->mVisibleCount:I

    .line 427
    return-object p0
.end method
