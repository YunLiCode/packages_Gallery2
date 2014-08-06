.class final Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
.super Ljava/lang/Object;
.source "PicasaSyncHelper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EntryMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field public dateEdited:J

.field public displayIndex:I

.field public id:J

.field public survived:Z

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 830
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->survived:Z

    .line 831
    return-void
.end method

.method public constructor <init>(JJILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "dateEdited"    # J
    .param p5, "displayIndex"    # I
    .param p6, "url"    # Ljava/lang/String;

    .prologue
    .line 838
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->survived:Z

    .line 839
    iput-wide p1, p0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    .line 840
    iput-wide p3, p0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->dateEdited:J

    .line 841
    iput p5, p0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->displayIndex:I

    .line 842
    iput-object p6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->url:Ljava/lang/String;

    .line 843
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;)I
    .locals 4
    .param p1, "other"    # Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    .prologue
    .line 847
    iget-wide v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    iget-wide v2, p1, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 823
    check-cast p1, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->compareTo(Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;)I

    move-result v0

    return v0
.end method

.method public updateId(J)Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 834
    iput-wide p1, p0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    .line 835
    return-object p0
.end method
