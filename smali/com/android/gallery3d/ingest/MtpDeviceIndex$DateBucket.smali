.class Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;
.super Ljava/lang/Object;
.source "MtpDeviceIndex.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ingest/MtpDeviceIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateBucket"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;",
        ">;"
    }
.end annotation


# instance fields
.field bucket:Lcom/android/gallery3d/ingest/SimpleDate;

.field itemsStartIndex:I

.field numItems:I

.field tempElementsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

.field unifiedEndIndex:I

.field unifiedStartIndex:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ingest/MtpDeviceIndex;Lcom/android/gallery3d/ingest/SimpleDate;)V
    .locals 1
    .param p2, "bucket"    # Lcom/android/gallery3d/ingest/SimpleDate;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->this$0:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->tempElementsList:Ljava/util/List;

    .line 329
    iput-object p2, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->bucket:Lcom/android/gallery3d/ingest/SimpleDate;

    .line 330
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ingest/MtpDeviceIndex;Lcom/android/gallery3d/ingest/SimpleDate;Landroid/mtp/MtpObjectInfo;)V
    .locals 1
    .param p2, "bucket"    # Lcom/android/gallery3d/ingest/SimpleDate;
    .param p3, "firstElement"    # Landroid/mtp/MtpObjectInfo;

    .prologue
    .line 333
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;-><init>(Lcom/android/gallery3d/ingest/MtpDeviceIndex;Lcom/android/gallery3d/ingest/SimpleDate;)V

    .line 334
    iget-object v0, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->tempElementsList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;)I
    .locals 2
    .param p1, "another"    # Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->bucket:Lcom/android/gallery3d/ingest/SimpleDate;

    iget-object v1, p1, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->bucket:Lcom/android/gallery3d/ingest/SimpleDate;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ingest/SimpleDate;->compareTo(Lcom/android/gallery3d/ingest/SimpleDate;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 320
    check-cast p1, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->compareTo(Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 353
    if-ne p0, p1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v1

    .line 354
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 355
    :cond_2
    instance-of v3, p1, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 356
    check-cast v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    .line 357
    .local v0, "other":Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    iget-object v3, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->bucket:Lcom/android/gallery3d/ingest/SimpleDate;

    if-nez v3, :cond_4

    .line 358
    iget-object v3, v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->bucket:Lcom/android/gallery3d/ingest/SimpleDate;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 359
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->bucket:Lcom/android/gallery3d/ingest/SimpleDate;

    iget-object v4, v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->bucket:Lcom/android/gallery3d/ingest/SimpleDate;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ingest/SimpleDate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 360
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->bucket:Lcom/android/gallery3d/ingest/SimpleDate;

    invoke-virtual {v0}, Lcom/android/gallery3d/ingest/SimpleDate;->hashCode()I

    move-result v0

    return v0
.end method

.method sortElements(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/mtp/MtpObjectInfo;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->tempElementsList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 339
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$DateBucket;->bucket:Lcom/android/gallery3d/ingest/SimpleDate;

    invoke-virtual {v0}, Lcom/android/gallery3d/ingest/SimpleDate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
