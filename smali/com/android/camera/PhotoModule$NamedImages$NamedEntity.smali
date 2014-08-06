.class Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
.super Ljava/lang/Object;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule$NamedImages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamedEntity"
.end annotation


# instance fields
.field date:J

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 948
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule$1;

    .prologue
    .line 948
    invoke-direct {p0}, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;-><init>()V

    return-void
.end method
