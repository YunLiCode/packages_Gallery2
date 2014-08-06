.class public Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
.super Ljava/lang/Object;
.source "PicasaJsonReaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaJsonReaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ObjectField"
.end annotation


# instance fields
.field final columnName:Ljava/lang/String;

.field final type:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->columnName:Ljava/lang/String;

    .line 71
    iput p1, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->type:I

    .line 72
    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->columnName:Ljava/lang/String;

    .line 64
    iput p2, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->type:I

    .line 65
    const/16 v0, 0xa

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
