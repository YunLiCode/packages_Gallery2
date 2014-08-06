.class public Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;
.super Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
.source "PicasaJsonReaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaJsonReaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BooleanObjectField"
.end annotation


# instance fields
.field final offValue:I

.field final onValue:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "onValue"    # I
    .param p3, "offValue"    # I

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    .line 84
    iput p2, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;->onValue:I

    .line 85
    iput p3, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;->offValue:I

    .line 86
    return-void
.end method


# virtual methods
.method getValue(Z)I
    .locals 1
    .param p1, "onOff"    # Z

    .prologue
    .line 89
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;->onValue:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;->offValue:I

    goto :goto_0
.end method
