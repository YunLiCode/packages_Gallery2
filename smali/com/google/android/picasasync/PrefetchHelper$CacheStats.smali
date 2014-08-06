.class public Lcom/google/android/picasasync/PrefetchHelper$CacheStats;
.super Ljava/lang/Object;
.source "PrefetchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PrefetchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheStats"
.end annotation


# instance fields
.field public failedCount:I

.field public pendingCount:I

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 720
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
