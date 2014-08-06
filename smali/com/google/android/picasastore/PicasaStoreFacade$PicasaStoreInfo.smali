.class Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;
.super Ljava/lang/Object;
.source "PicasaStoreFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/PicasaStoreFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PicasaStoreInfo"
.end annotation


# instance fields
.field public final authority:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .prologue
    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;->packageName:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;->authority:Ljava/lang/String;

    .line 121
    iput p3, p0, Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;->priority:I

    .line 122
    return-void
.end method
