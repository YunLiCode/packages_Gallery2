.class public final enum Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;
.super Ljava/lang/Enum;
.source "MtpDeviceIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ingest/MtpDeviceIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

.field public static final enum Ascending:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

.field public static final enum Descending:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    const-string v1, "Ascending"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;->Ascending:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    new-instance v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    const-string v1, "Descending"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;->Descending:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    sget-object v1, Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;->Ascending:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;->Descending:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;->$VALUES:[Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;->$VALUES:[Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    invoke-virtual {v0}, [Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    return-object v0
.end method
