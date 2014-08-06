.class public Lcom/android/photos/data/AlbumSetLoader;
.super Ljava/lang/Object;
.source "AlbumSetLoader.java"


# static fields
.field public static final MOCK:Landroid/database/MatrixCursor;

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "thumb_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "thumb_width"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "thumb_height"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "count_pending_upload"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_count"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "supported_operations"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/photos/data/AlbumSetLoader;->PROJECTION:[Ljava/lang/String;

    .line 28
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/android/photos/data/AlbumSetLoader;->createRandomCursor(I)Landroid/database/MatrixCursor;

    move-result-object v0

    sput-object v0, Lcom/android/photos/data/AlbumSetLoader;->MOCK:Landroid/database/MatrixCursor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createRandomCursor(I)Landroid/database/MatrixCursor;
    .locals 3
    .param p0, "count"    # I

    .prologue
    .line 31
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/photos/data/AlbumSetLoader;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v2, p0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 32
    .local v0, "c":Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 33
    invoke-static {}, Lcom/android/photos/data/AlbumSetLoader;->createRandomRow()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_0
    return-object v0
.end method

.method private static createRandomRow()[Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 39
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    .line 40
    .local v1, "random":D
    const-wide v7, 0x407f400000000000L

    mul-double/2addr v7, v1

    double-to-int v0, v7

    .line 41
    .local v0, "id":I
    const/16 v4, 0x9

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fun times "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v7, v1

    double-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x3

    const/4 v7, 0x0

    aput-object v7, v3, v4

    const/4 v4, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v7, 0x6

    const-wide v8, 0x3fd3333333333333L

    cmpg-double v4, v1, v8

    if-gez v4, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 52
    .local v3, "row":[Ljava/lang/Object;
    return-object v3

    .end local v3    # "row":[Ljava/lang/Object;
    :cond_0
    move v4, v6

    .line 41
    goto :goto_0
.end method
