.class Lcom/android/camera/PhotoModule$NamedImages;
.super Ljava/lang/Object;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamedImages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    }
.end annotation


# instance fields
.field private mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 920
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 921
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/ArrayList;

    .line 922
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 945
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 932
    iget-object v1, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 933
    iput-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    .line 939
    :goto_0
    return-object v0

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    iput-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    .line 937
    iget-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 939
    iget-object v0, p0, Lcom/android/camera/PhotoModule$NamedImages;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public nameNewImage(Landroid/content/ContentResolver;J)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "date"    # J

    .prologue
    .line 925
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;-><init>(Lcom/android/camera/PhotoModule$1;)V

    .line 926
    .local v0, "r":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    invoke-static {p2, p3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    .line 927
    iput-wide p2, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    .line 928
    iget-object v1, p0, Lcom/android/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    return-void
.end method
