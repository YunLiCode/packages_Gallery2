.class public Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;
.super Ljava/lang/Object;
.source "TfrfBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field fragmentAbsoluteDuration:J

.field fragmentAbsoluteTime:J

.field final synthetic this$0:Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;->this$0:Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Entry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "{fragmentAbsoluteTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;->fragmentAbsoluteTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ", fragmentAbsoluteDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;->fragmentAbsoluteDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
