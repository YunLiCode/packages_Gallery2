.class public Lcom/android/dreams/phototable/AlbumDataAdapter$AccountComparator;
.super Ljava/lang/Object;
.source "AlbumDataAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dreams/phototable/AlbumDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
        ">;"
    }
.end annotation


# instance fields
.field private final recency:Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;

    invoke-direct {v0}, Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/AlbumDataAdapter$AccountComparator;->recency:Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;

    .line 110
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/dreams/phototable/PhotoSource$AlbumData;Lcom/android/dreams/phototable/PhotoSource$AlbumData;)I
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    iget-object v0, p1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    if-ne v0, v4, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumDataAdapter$AccountComparator;->recency:Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;

    invoke-virtual {v0, p1, p2}, Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;->compare(Lcom/android/dreams/phototable/PhotoSource$AlbumData;Lcom/android/dreams/phototable/PhotoSource$AlbumData;)I

    move-result v0

    .line 139
    :goto_0
    return v0

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->getType()Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-virtual {p2}, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->getType()Ljava/lang/String;

    move-result-object v5

    .line 122
    const-class v0, Lcom/android/dreams/phototable/LocalSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 125
    :goto_1
    const-class v6, Lcom/android/dreams/phototable/LocalSource;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 129
    :goto_2
    const-class v2, Lcom/android/dreams/phototable/StockSource;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v3

    .line 132
    :cond_1
    const-class v2, Lcom/android/dreams/phototable/StockSource;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    :goto_3
    if-ne v0, v3, :cond_2

    .line 137
    iget-object v0, p1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 139
    :cond_2
    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/dreams/phototable/AlbumDataAdapter$AccountComparator;->compare(Lcom/android/dreams/phototable/PhotoSource$AlbumData;Lcom/android/dreams/phototable/PhotoSource$AlbumData;)I

    move-result v0

    return v0
.end method
