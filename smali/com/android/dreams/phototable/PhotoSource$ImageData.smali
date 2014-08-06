.class public Lcom/android/dreams/phototable/PhotoSource$ImageData;
.super Ljava/lang/Object;
.source "PhotoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dreams/phototable/PhotoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageData"
.end annotation


# instance fields
.field protected albumId:Ljava/lang/String;

.field protected cursor:Landroid/database/Cursor;

.field public id:Ljava/lang/String;

.field public orientation:I

.field protected position:I

.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoSource;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/dreams/phototable/PhotoSource;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->this$0:Lcom/android/dreams/phototable/PhotoSource;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public donePaging()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->this$0:Lcom/android/dreams/phototable/PhotoSource;

    invoke-virtual {v0, p0}, Lcom/android/dreams/phototable/PhotoSource;->donePaging(Lcom/android/dreams/phototable/PhotoSource$ImageData;)V

    .line 69
    return-void
.end method

.method getStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "longSide"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->this$0:Lcom/android/dreams/phototable/PhotoSource;

    invoke-virtual {v0, p0, p1}, Lcom/android/dreams/phototable/PhotoSource;->getStream(Lcom/android/dreams/phototable/PhotoSource$ImageData;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method naturalNext()Lcom/android/dreams/phototable/PhotoSource$ImageData;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->this$0:Lcom/android/dreams/phototable/PhotoSource;

    invoke-virtual {v0, p0}, Lcom/android/dreams/phototable/PhotoSource;->naturalNext(Lcom/android/dreams/phototable/PhotoSource$ImageData;)Lcom/android/dreams/phototable/PhotoSource$ImageData;

    move-result-object v0

    return-object v0
.end method

.method naturalPrevious()Lcom/android/dreams/phototable/PhotoSource$ImageData;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->this$0:Lcom/android/dreams/phototable/PhotoSource;

    invoke-virtual {v0, p0}, Lcom/android/dreams/phototable/PhotoSource;->naturalPrevious(Lcom/android/dreams/phototable/PhotoSource$ImageData;)Lcom/android/dreams/phototable/PhotoSource$ImageData;

    move-result-object v0

    return-object v0
.end method
