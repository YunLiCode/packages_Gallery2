.class Lcom/google/android/picasastore/PicasaStore$ImagePack;
.super Ljava/lang/Object;
.source "PicasaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/PicasaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImagePack"
.end annotation


# instance fields
.field public final data:[B

.field public final flags:I

.field public final offset:I


# direct methods
.method constructor <init>(II[B)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "flags"    # I
    .param p3, "data"    # [B

    .prologue
    .line 685
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iput p1, p0, Lcom/google/android/picasastore/PicasaStore$ImagePack;->offset:I

    .line 687
    iput p2, p0, Lcom/google/android/picasastore/PicasaStore$ImagePack;->flags:I

    .line 688
    iput-object p3, p0, Lcom/google/android/picasastore/PicasaStore$ImagePack;->data:[B

    .line 689
    return-void
.end method
