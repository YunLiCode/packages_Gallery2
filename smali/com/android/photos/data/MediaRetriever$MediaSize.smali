.class public final enum Lcom/android/photos/data/MediaRetriever$MediaSize;
.super Ljava/lang/Enum;
.source "MediaRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/data/MediaRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/photos/data/MediaRetriever$MediaSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/photos/data/MediaRetriever$MediaSize;

.field public static final enum Original:Lcom/android/photos/data/MediaRetriever$MediaSize;

.field public static final enum Preview:Lcom/android/photos/data/MediaRetriever$MediaSize;

.field public static final enum TemporaryPreview:Lcom/android/photos/data/MediaRetriever$MediaSize;

.field public static final enum TemporaryThumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

.field public static final enum Thumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/android/photos/data/MediaRetriever$MediaSize;

    const-string v1, "TemporaryThumbnail"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/android/photos/data/MediaRetriever$MediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->TemporaryThumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    new-instance v0, Lcom/android/photos/data/MediaRetriever$MediaSize;

    const-string v1, "Thumbnail"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v4, v2}, Lcom/android/photos/data/MediaRetriever$MediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    new-instance v0, Lcom/android/photos/data/MediaRetriever$MediaSize;

    const-string v1, "TemporaryPreview"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v5, v2}, Lcom/android/photos/data/MediaRetriever$MediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->TemporaryPreview:Lcom/android/photos/data/MediaRetriever$MediaSize;

    new-instance v0, Lcom/android/photos/data/MediaRetriever$MediaSize;

    const-string v1, "Preview"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v6, v2}, Lcom/android/photos/data/MediaRetriever$MediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->Preview:Lcom/android/photos/data/MediaRetriever$MediaSize;

    new-instance v0, Lcom/android/photos/data/MediaRetriever$MediaSize;

    const-string v1, "Original"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v7, v2}, Lcom/android/photos/data/MediaRetriever$MediaSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->Original:Lcom/android/photos/data/MediaRetriever$MediaSize;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/photos/data/MediaRetriever$MediaSize;

    sget-object v1, Lcom/android/photos/data/MediaRetriever$MediaSize;->TemporaryThumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/photos/data/MediaRetriever$MediaSize;->TemporaryPreview:Lcom/android/photos/data/MediaRetriever$MediaSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/photos/data/MediaRetriever$MediaSize;->Preview:Lcom/android/photos/data/MediaRetriever$MediaSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/photos/data/MediaRetriever$MediaSize;->Original:Lcom/android/photos/data/MediaRetriever$MediaSize;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->$VALUES:[Lcom/android/photos/data/MediaRetriever$MediaSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/android/photos/data/MediaRetriever$MediaSize;->mValue:I

    .line 31
    return-void
.end method

.method static fromInteger(I)Lcom/android/photos/data/MediaRetriever$MediaSize;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 38
    sparse-switch p0, :sswitch_data_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 40
    :sswitch_0
    sget-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    .line 44
    :goto_0
    return-object v0

    .line 42
    :sswitch_1
    sget-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->Preview:Lcom/android/photos/data/MediaRetriever$MediaSize;

    goto :goto_0

    .line 44
    :sswitch_2
    sget-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->Original:Lcom/android/photos/data/MediaRetriever$MediaSize;

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/photos/data/MediaRetriever$MediaSize;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/photos/data/MediaRetriever$MediaSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/photos/data/MediaRetriever$MediaSize;

    return-object v0
.end method

.method public static values()[Lcom/android/photos/data/MediaRetriever$MediaSize;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->$VALUES:[Lcom/android/photos/data/MediaRetriever$MediaSize;

    invoke-virtual {v0}, [Lcom/android/photos/data/MediaRetriever$MediaSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/photos/data/MediaRetriever$MediaSize;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/android/photos/data/MediaRetriever$MediaSize;->mValue:I

    return v0
.end method

.method public isBetterThan(Lcom/android/photos/data/MediaRetriever$MediaSize;)Z
    .locals 2
    .param p1, "that"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/photos/data/MediaRetriever$MediaSize;->mValue:I

    iget v1, p1, Lcom/android/photos/data/MediaRetriever$MediaSize;->mValue:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTemporary()Z
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->TemporaryThumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->TemporaryPreview:Lcom/android/photos/data/MediaRetriever$MediaSize;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
