.class Lcom/android/gallery3d/ingest/MtpDeviceIndex$MtpObjectTimestampComparator;
.super Ljava/lang/Object;
.source "MtpDeviceIndex.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ingest/MtpDeviceIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MtpObjectTimestampComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/mtp/MtpObjectInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 374
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ingest/MtpDeviceIndex$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/ingest/MtpDeviceIndex$1;

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$MtpObjectTimestampComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/mtp/MtpObjectInfo;Landroid/mtp/MtpObjectInfo;)I
    .locals 8
    .param p1, "o1"    # Landroid/mtp/MtpObjectInfo;
    .param p2, "o2"    # Landroid/mtp/MtpObjectInfo;

    .prologue
    const-wide/16 v6, 0x0

    .line 377
    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getDateCreated()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getDateCreated()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 378
    .local v0, "diff":J
    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    .line 379
    const/4 v2, -0x1

    .line 383
    :goto_0
    return v2

    .line 380
    :cond_0
    cmp-long v2, v0, v6

    if-nez v2, :cond_1

    .line 381
    const/4 v2, 0x0

    goto :goto_0

    .line 383
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 374
    check-cast p1, Landroid/mtp/MtpObjectInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/mtp/MtpObjectInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$MtpObjectTimestampComparator;->compare(Landroid/mtp/MtpObjectInfo;Landroid/mtp/MtpObjectInfo;)I

    move-result v0

    return v0
.end method
