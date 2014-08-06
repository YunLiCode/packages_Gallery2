.class public Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;
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
    name = "RecencyComparator"
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
.field private final title:Lcom/android/dreams/phototable/AlbumDataAdapter$TitleComparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Lcom/android/dreams/phototable/AlbumDataAdapter$TitleComparator;

    invoke-direct {v0}, Lcom/android/dreams/phototable/AlbumDataAdapter$TitleComparator;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;->title:Lcom/android/dreams/phototable/AlbumDataAdapter$TitleComparator;

    .line 149
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/dreams/phototable/PhotoSource$AlbumData;Lcom/android/dreams/phototable/PhotoSource$AlbumData;)I
    .locals 4
    .param p1, "a"    # Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    .param p2, "b"    # Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .prologue
    .line 153
    iget-wide v0, p1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->updated:J

    iget-wide v2, p2, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->updated:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;->title:Lcom/android/dreams/phototable/AlbumDataAdapter$TitleComparator;

    invoke-virtual {v0, p1, p2}, Lcom/android/dreams/phototable/AlbumDataAdapter$TitleComparator;->compare(Lcom/android/dreams/phototable/PhotoSource$AlbumData;Lcom/android/dreams/phototable/PhotoSource$AlbumData;)I

    move-result v0

    .line 156
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p2, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->updated:J

    iget-wide v2, p1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->updated:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 145
    check-cast p1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;->compare(Lcom/android/dreams/phototable/PhotoSource$AlbumData;Lcom/android/dreams/phototable/PhotoSource$AlbumData;)I

    move-result v0

    return v0
.end method
