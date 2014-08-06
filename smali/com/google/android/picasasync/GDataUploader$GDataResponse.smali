.class Lcom/google/android/picasasync/GDataUploader$GDataResponse;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GDataUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/GDataUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GDataResponse"
.end annotation


# instance fields
.field errorCode:Ljava/lang/String;

.field fingerprint:Lcom/android/gallery3d/common/Fingerprint;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mStreamIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Ljava/lang/StringBuilder;

.field photoId:J

.field photoSize:J

.field photoUrl:Ljava/lang/String;

.field timestamp:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 573
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 590
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mStreamIdList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/picasasync/GDataUploader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/picasasync/GDataUploader$1;

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/google/android/picasasync/GDataUploader$GDataResponse;-><init>()V

    return-void
.end method

.method private getMediaContentAttrs(Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 4
    .param p1, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 675
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 676
    .local v0, "attrCount":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 677
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, "name":Ljava/lang/String;
    const-string v3, "url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 679
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 682
    .end local v2    # "name":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 676
    .restart local v2    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 682
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_1
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mText:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 627
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 631
    const-string v0, "gphoto:streamId"

    invoke-virtual {v0, p3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mStreamIdList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mText:Ljava/lang/StringBuilder;

    .line 638
    return-void
.end method

.method public startDocument()V
    .locals 3

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 599
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v1, "code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v1, "gphoto:id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v1, "gphoto:size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v1, "gphoto:streamId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v1, "gphoto:timestamp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->photoUrl:Ljava/lang/String;

    .line 605
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mStreamIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 606
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mText:Ljava/lang/StringBuilder;

    .line 612
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mText:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 615
    const-string v0, "media:content"

    invoke-virtual {v0, p3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-direct {p0, p4}, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->getMediaContentAttrs(Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->photoUrl:Ljava/lang/String;

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mText:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method

.method public validateResult()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/picasasync/Uploader$UploadException;
        }
    .end annotation

    .prologue
    .line 641
    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v2, "code"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->errorCode:Ljava/lang/String;

    .line 643
    :try_start_0
    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v2, "gphoto:id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->photoId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :try_start_1
    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v2, "gphoto:size"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->photoSize:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 655
    :try_start_2
    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v2, "gphoto:timestamp"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->timestamp:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 662
    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->photoUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    new-instance v1, Lcom/google/android/picasasync/Uploader$UploadException;

    const-string v2, "photo URL missing"

    invoke-direct {v1, v2}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/android/picasasync/Uploader$UploadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing photo ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v4, "gphoto:id"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 650
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 651
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/android/picasasync/Uploader$UploadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing photo size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v4, "gphoto:size"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 657
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 658
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/android/picasasync/Uploader$UploadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v4, "gphoto:timestamp"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 666
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mStreamIdList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/gallery3d/common/Fingerprint;->extractFingerprint(Ljava/util/List;)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->fingerprint:Lcom/android/gallery3d/common/Fingerprint;

    .line 667
    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->fingerprint:Lcom/android/gallery3d/common/Fingerprint;

    if-nez v1, :cond_1

    .line 668
    new-instance v1, Lcom/google/android/picasasync/Uploader$UploadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fingerprint missing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mStreamIdList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 671
    :cond_1
    return-void
.end method
